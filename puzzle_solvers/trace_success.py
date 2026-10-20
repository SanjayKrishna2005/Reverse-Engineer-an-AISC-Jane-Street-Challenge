"""
Trace the cone of influence for the 'success' signal backward through the 
synthesized netlist to understand the logic condition.
"""
import re

with open('work_puzzle/puzzle_synth.v', 'r') as f:
    content = f.read()

# Parse all assign statements
assigns = {}
for m in re.finditer(r'assign\s+(\\?[\w.]+(?:\s*\[[\d:]+\])?)\s*=\s*(.+?)\s*;', content):
    lhs = m.group(1).strip()
    rhs = m.group(2).strip()
    assigns[lhs] = rhs

# Parse all always blocks to find flip-flops
# Pattern: always @(posedge CLK, negedge RST) if (!RST) Q <= 0; else Q <= D;
ff_pattern = re.compile(
    r'always @\(posedge\s+(\\?[\w.]+)\s*,\s*negedge\s+(\\?[\w.]+)\)\s*'
    r'if\s*\(!(\\?[\w.]+)\)\s*(\\?[\w.]+(?:\s*\[[\d:]+\])?)\s*<=\s*1\'b([01]);\s*'
    r'else\s*(\\?[\w.]+(?:\s*\[[\d:]+\])?)\s*<=\s*(\\?[\w.]+)\s*;',
    re.MULTILINE
)

ffs = {}
for m in ff_pattern.finditer(content):
    clk_sig = m.group(1).strip()
    rst_sig = m.group(2).strip()
    q_sig = m.group(4).strip()
    rst_val = m.group(5)
    d_sig = m.group(7).strip()
    ffs[q_sig] = {'clk': clk_sig, 'rst': rst_sig, 'rst_val': rst_val, 'D': d_sig}

print(f"Found {len(assigns)} assign statements")
print(f"Found {len(ffs)} flip-flops")
print()

# Trace backward from success
def trace_signal(sig, depth=0, visited=None):
    if visited is None:
        visited = set()
    if sig in visited or depth > 8:
        return
    visited.add(sig)
    prefix = "  " * depth
    
    if sig in ffs:
        ff = ffs[sig]
        print(f"{prefix}FF {sig}:")
        print(f"{prefix}  CLK = {ff['clk']}")
        print(f"{prefix}  RST = {ff['rst']} (val={ff['rst_val']})")
        print(f"{prefix}  D   = {ff['D']}")
        trace_signal(ff['clk'], depth+1, visited)
        if ff['D'] not in ('clk', 'rst_n', 'enable', 'I'):
            trace_signal(ff['D'], depth+1, visited)
    elif sig in assigns:
        print(f"{prefix}ASSIGN {sig} = {assigns[sig]}")
        # Find all signal references in RHS
        refs = re.findall(r'\\[\w.]+|_\d{4}_', assigns[sig])
        for ref in refs:
            ref = ref.strip()
            if ref not in ('clk', 'rst_n', 'enable', 'I', sig):
                trace_signal(ref, depth+1, visited)
    else:
        print(f"{prefix}PORT/CONST: {sig}")

print("=== Tracing 'success' ===")
trace_signal('success')
