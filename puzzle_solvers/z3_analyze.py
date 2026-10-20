"""
Use Z3 SMT solver to find the 121-bit input sequence that makes success=1.
We'll model the synthesized netlist as Z3 constraints.
"""
import re
import sys

# First, let's understand the circuit by reading puzzle_synth.v
with open('work_puzzle/puzzle_synth.v', 'r') as f:
    content = f.read()

# Parse all assign statements
assigns = {}
for m in re.finditer(r'assign\s+(\\?[\w.\[\]:]+)\s*=\s*(.+?)\s*;', content):
    lhs = m.group(1).strip()
    rhs = m.group(2).strip()
    assigns[lhs] = rhs

# Parse all always blocks - flip-flops
ff_pattern = re.compile(
    r'always @\(posedge\s+(\\?[\w.]+)\s*,\s*negedge\s+(\\?[\w.]+)\)\s*'
    r'if\s*\(!(\\?[\w.]+)\)\s*(\\?[\w.\[\]:]+)\s*<=\s*1\'b([01]);\s*'
    r'else\s*(\\?[\w.\[\]:]+)\s*<=\s*(\\?[\w.]+)\s*;',
    re.MULTILINE
)

ffs = {}
for m in ff_pattern.finditer(content):
    clk_sig = m.group(1).strip()
    q_sig = m.group(4).strip()
    rst_val = m.group(5)
    d_sig = m.group(7).strip()
    ffs[q_sig] = {'clk': clk_sig, 'rst_val': rst_val, 'D': d_sig}

print(f"Assigns: {len(assigns)}, FFs: {len(ffs)}")

# All FFs have D=clk, gated clock pattern
# The effective behavior is: Q_next = clk_val_at_gate_posedge
# Since all D=clk, Q captures the value of clk when the gate signal rises.
# In a synchronous view: at each real clock edge, Q is set to 1 if gate was rising.

# The "success" FF:
# success <= clk when posedge(a32o_2_4.X)
# This means success=1 when a32o_2_4.X has a rising edge while clk=1

# For this circuit, since it's clocked by external 'clk', the gated clock
# pattern means each FF effectively stores whether its gate condition was met.

# Let's try a different approach: use the iverilog sim directly with a Z3-guided search
# But first, let's count how many FFs directly depend on input I

# Trace which signals depend on I
def find_deps(sig, visited=None):
    if visited is None:
        visited = set()
    if sig in visited:
        return set()
    visited.add(sig)
    deps = set()
    
    if sig in ('I', 'clk', 'enable', 'rst_n'):
        deps.add(sig)
        return deps
    if sig.startswith("1'b") or sig in ('0', '1'):
        return deps
    
    if sig in assigns:
        rhs = assigns[sig]
        refs = re.findall(r'\\[\w.]+|_\d{4}_|[a-zA-Z]\w*', rhs)
        for ref in refs:
            ref = ref.strip()
            deps.update(find_deps(ref, visited))
    
    if sig in ffs:
        deps.update(find_deps(ffs[sig]['clk'], visited))
        deps.update(find_deps(ffs[sig]['D'], visited))
    
    return deps

# Check: does success depend on I?
success_deps = find_deps('success')
print(f"Success depends on: {success_deps}")

# Find the total number of FFs that ultimately depend on I
i_dependent_ffs = 0
for q in ffs:
    deps = find_deps(q)
    if 'I' in deps:
        i_dependent_ffs += 1
        
print(f"FFs depending on I: {i_dependent_ffs} out of {len(ffs)}")

# Let's also check if success depends on enable
enable_deps = set()
for q in ffs:
    deps = find_deps(q)
    if 'enable' in deps:
        enable_deps.add(q)
print(f"FFs depending on enable: {len(enable_deps)}")
