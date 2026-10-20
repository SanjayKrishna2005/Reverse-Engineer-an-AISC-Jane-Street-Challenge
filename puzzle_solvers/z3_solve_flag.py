import re
import z3

from pathlib import Path

search_paths = [
    Path('work_puzzle/puzzle_synth.v'),
    Path('puzzle_synth.v'),
    Path(__file__).parent / 'puzzle_synth.v',
    Path(__file__).parent.parent / 'work_puzzle' / 'puzzle_synth.v',
]

synth_file = None
for p in search_paths:
    if p.exists():
        synth_file = p
        break

if not synth_file:
    raise FileNotFoundError("Could not find 'puzzle_synth.v' in work_puzzle/ or local dir.")

print(f"Loading netlist from {synth_file}...")
with open(synth_file, 'r') as f:
    lines = f.readlines()

assigns = {}
ffs = {}
i = 0
while i < len(lines):
    line = lines[i].strip()
    if line.startswith('assign '):
        m = re.match(r'assign\s+(.*?)\s*=\s*(.*?)\s*;', line)
        if m:
            lhs = m.group(1).strip()
            rhs = m.group(2).strip()
            if not rhs.startswith('{'):
                assigns[lhs] = rhs
    elif line.startswith('always @'):
        m = re.search(r'always\s+@\((.*?)\)', line)
        if m:
            next_line = lines[i+1].strip()
            if next_line.startswith('if'):
                m_if = re.match(r'if\s*\(!.*?\)\s*(.*?)\s*<=\s*1\'b([01]);', next_line)
                m_else = re.match(r'else\s*(.*?)\s*<=\s*(.*?)\s*;', lines[i+2].strip())
                if m_if and m_else:
                    ffs[m_if.group(1).strip()] = {'rst_val': m_if.group(2), 'D': m_else.group(2).strip()}
                    i += 2
            else:
                m_assign = re.match(r'(.*?)\s*<=\s*(.*?)\s*;', next_line)
                if m_assign:
                    ffs[m_assign.group(1).strip()] = {'rst_val': '0', 'D': m_assign.group(2).strip()}
                    i += 1
    i += 1

print(f"Parsed {len(assigns)} assigns, {len(ffs)} FFs")

# Extract the O bus bits from the original file (since we filtered out the `{` assign)
O_assign = ""
for line in lines:
    if line.strip().startswith('assign O ='):
        m = re.match(r'assign O\s*=\s*(.*?)\s*;', line.strip())
        if m:
            O_assign = m.group(1).strip()
            break
O_bits = re.findall(r'\\[\w.]+', O_assign)
print(f"O bus: {O_bits}")

deps = {}
for lhs, rhs in assigns.items():
    d = set(re.findall(r'\\[\w.]+|_\d{4}_', rhs))
    deps[lhs] = d & set(assigns.keys())
order = []
visited = set()
def visit(n):
    if n in visited: return
    visited.add(n)
    for d in deps.get(n, set()): visit(d)
    order.append(n)
for n in assigns: visit(n)

def to_python_expr(rhs):
    if '?' in rhs and ':' in rhs:
        parts = rhs.split('?', 1)
        cond = parts[0].strip()
        rest = parts[1].split(':', 1)
        true_v = rest[0].strip()
        false_v = rest[1].strip()
        return f'z3.If({to_python_expr(cond)}, {to_python_expr(true_v)}, {to_python_expr(false_v)})'
    def repl(m):
        tok = m.group(0)
        if re.match(r"1'b[01x]", tok):
            return 'z3.BoolVal(True)' if tok == "1'b1" else 'z3.BoolVal(False)'
        return f'env.get(r"{tok}", z3.BoolVal(False))'
    return re.sub(r"\\[\w.]+|_\d{4}_|[a-zA-Z_]\w*|1'b[01x]", repl, rhs)

# Symbolic solve
N_CYCLES = 131  # simulate 131 cycles to capture 9 O output bytes (cycles 122..130)
solver = z3.Solver()
I_bits = [z3.Bool(f'I_{i}') for i in range(122)]
state = {q: z3.BoolVal(ffs[q]['rst_val'] == '1') for q in ffs}

envs = []  # Save each cycle's env to read O later

print("Building symbolic model...")
for cycle in range(N_CYCLES):
    env = {}
    env['rst_n'] = z3.BoolVal(True)
    env['enable'] = z3.BoolVal(True)
    env['clk'] = z3.BoolVal(True)
    
    # Phase 1: cycles 0-121 uses symbolic I bits. Phase 2: cycle 122+ uses I=0 (neutral)
    if cycle < 122:
        env['I'] = I_bits[cycle]
    else:
        env['I'] = z3.BoolVal(False)
        
    for q in state:
        env[q] = state[q]
    
    for lhs in order:
        rhs = assigns.get(lhs)
        if rhs is None: continue
        expr_str = to_python_expr(rhs)
        try:
            env[lhs] = eval(expr_str)
        except:
            env[lhs] = z3.BoolVal(False)
    
    envs.append(dict(env))
    
    next_state = {}
    for q, ff in ffs.items():
        D_val = ff['D']
        expr_str = to_python_expr(D_val)
        try:
            next_state[q] = eval(expr_str)
        except:
            next_state[q] = z3.BoolVal(False)
            
    # Check success exactly after the 122nd clock edge (cycle == 121 -> next_state)
    if cycle == 121:
        solver.add(next_state.get('success', z3.BoolVal(False)) == True)
        
    state = next_state

# Constraint 2: O bytes at cycles 122-130 must be printable ASCII
# Actually, uppercase letters (0x41 - 0x5A) or space (0x20).
print("Adding ASCII constraints on O output...")
for char_idx, cycle_idx in enumerate(range(122, 131)):
    env = envs[cycle_idx]
    O_z3_bits = [env.get(bit_sig, z3.BoolVal(False)) for bit_sig in O_bits]  # MSB first
    
    # Allow printable ASCII (32-126) OR NULL (0x00)
    o_bv = z3.Concat([z3.If(b, z3.BitVecVal(1, 1), z3.BitVecVal(0, 1)) for b in O_z3_bits])
    
    is_null_bv = (o_bv == 0x00)
    is_printable_bv = z3.And(o_bv >= 0x20, o_bv <= 0x7E)
    
    solver.add(z3.Or(is_null_bv, is_printable_bv))

print("Solving with ASCII constraints on O output...")
res = solver.check()
if res == z3.sat:
    print("SAT! Found sequence with success=1 and printable O output!")
    m = solver.model()
    seq = "".join("1" if z3.is_true(m.evaluate(I_bits[i])) else "0" for i in range(122))
    print(f"Input sequence: {seq}")
    
    # Evaluate O output
    flag = ''
    for cycle_idx in range(122, 131):
        env = envs[cycle_idx]
        O_val = 0
        for j, bit_sig in enumerate(O_bits):
            b = env.get(bit_sig, z3.BoolVal(False))
            val = 1 if z3.is_true(m.evaluate(b)) else 0
            O_val |= (val << (7 - j))
        c = chr(O_val) if 32 <= O_val < 127 else f'<{O_val:02x}>'
        flag += c
        print(f"  cycle {cycle_idx+1}: O=0x{O_val:02x} = {c!r}")
    
    print(f"\nFLAG: {flag}")
else:
    print(f"Result: {res}")
