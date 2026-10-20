"""
Deep analysis of the puzzle's synthesized netlist.
Goal: Understand the circuit structure and extract the condition for success=1.
"""
import re

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

# Also parse flip-flops with set (rst_val=1)
ff_set_pattern = re.compile(
    r'always @\(posedge\s+(\\?[\w.]+)\s*,\s*posedge\s+(\\?[\w.]+)\)\s*'
    r'if\s*\((\\?[\w.]+)\)\s*(\\?[\w.\[\]:]+)\s*<=\s*1\'b([01]);\s*'
    r'else\s*(\\?[\w.\[\]:]+)\s*<=\s*(\\?[\w.]+)\s*;',
    re.MULTILINE
)
for m in ff_set_pattern.finditer(content):
    clk_sig = m.group(1).strip()
    q_sig = m.group(4).strip()
    rst_val = m.group(5)
    d_sig = m.group(7).strip()
    ffs[q_sig] = {'clk': clk_sig, 'rst_val': rst_val, 'D': d_sig, 'set': True}

print(f"Total assigns: {len(assigns)}")
print(f"Total flip-flops: {len(ffs)}")
print()

# Categorize flip-flops
clk_groups = {}
for q, info in ffs.items():
    clk = info['clk']
    clk_groups.setdefault(clk, []).append(q)

print(f"Unique clock domains: {len(clk_groups)}")
print()

# Find which FFs have D=clk (gated clock pattern) vs other D inputs
gated_clk_ffs = [(q, info) for q, info in ffs.items() if info['D'] == 'clk']
other_ffs = [(q, info) for q, info in ffs.items() if info['D'] != 'clk']

print(f"FFs with D=clk (gated clock): {len(gated_clk_ffs)}")
print(f"FFs with other D inputs: {len(other_ffs)}")
print()

for q, info in other_ffs:
    print(f"  {q}: D={info['D']}, CLK={info['clk']}, RST_VAL={info['rst_val']}")

# Now expand to understand: what is 'clk' actually representing?
# In the extracted netlist, the gated-clock FFs act as:
#   Q <= clk when gate transitions 0->1
# This effectively means: Q captures clk's value at the gate's rising edge.
# Since clk toggles, Q will be 1 if clk=1 when gate rises, 0 if clk=0.
# This is a single-bit register with the gate as the effective clock.

# Let's trace all the "gate" (clk) inputs to understand the shift register structure
print("\n=== Gated-clock FF analysis ===")
print("Each FF has Q = clk sampled at posedge(gate)")
print("The 'gate' signal is the effective clock for each FF\n")

# Find connections: which FF outputs feed into other FF gate conditions?
for q, info in sorted(gated_clk_ffs, key=lambda x: x[0]):
    gate = info['clk']
    # Is the gate directly another FF's output?
    if gate in ffs:
        print(f"  {q}: gate={gate} (which is another FF output)")
    elif gate in assigns:
        # Expand one level
        print(f"  {q}: gate = {assigns[gate]}")
