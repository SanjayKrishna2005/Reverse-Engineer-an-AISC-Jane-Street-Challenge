import re
from pathlib import Path

# Search for puzzle_synth.v in common relative paths
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
    raise FileNotFoundError("Could not find 'puzzle_synth.v'. Please check your path or run from repository root.")

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
                m_if = re.match(r'if\s*\(!.*?\)\s*(.*?)\s*<=\s*1\'b([01x]);', next_line)
                m_else = re.match(r'else\s*(.*?)\s*<=\s*(.*?)\s*;', lines[i+2].strip())
                if m_if and m_else:
                    v = m_if.group(2)
                    rst_val = 0 if v == 'x' else int(v)
                    ffs[m_if.group(1).strip()] = {'rst_val': rst_val, 'D': m_else.group(2).strip()}
                    i += 2
            else:
                m_ff = re.match(r'(.*?)\s*<=\s*(.*?)\s*;', next_line)
                if m_ff:
                    ffs[m_ff.group(1).strip()] = {'rst_val': 0, 'D': m_ff.group(2).strip()}
                    i += 1
    i += 1

def to_python_expr(expr):
    expr = re.sub(r'~', 'not ', expr)
    expr = re.sub(r'\^', '!=', expr)
    expr = re.sub(r'&', 'and', expr)
    expr = re.sub(r'\|', 'or', expr)
    
    # Handle ternary operator
    if '?' in expr:
        m = re.match(r'(.*?)\s*\?\s*(.*?)\s*:\s*(.*)', expr)
        if m:
            expr = f"({m.group(2)}) if ({m.group(1)}) else ({m.group(3)})"
            
    def repl(m):
        tok = m.group(0)
        if tok in ("1'b0", "1'bx"): return "False"
        if tok == "1'b1": return "True"
        if tok in ("not", "and", "or", "True", "False", "if", "else"): return tok
        return f'env.get(r"{tok}", False)'
        
    return re.sub(r'\\[\w.]+|_\\d{4}_|[a-zA-Z_]\w*|1\'b[01x]', repl, expr)

order = []
visited = set()
def visit(node):
    if node in visited: return
    visited.add(node)
    rhs = assigns.get(node)
    if rhs:
        deps = re.findall(r'\\[\w.]+|_\\d{4}_|[a-zA-Z_]\w*|1\'b[01x]', rhs)
        for dep in deps: visit(dep)
    order.append(node)

for k in assigns: visit(k)

O_bits = [
    '\\Xsky130_fd_sc_hd__and3_2_23.X',
    '\\Xsky130_fd_sc_hd__and3_2_19.X',
    '\\Xsky130_fd_sc_hd__and3_2_22.X',
    '\\Xsky130_fd_sc_hd__and3_2_21.X',
    '\\Xsky130_fd_sc_hd__and3_2_20.X',
    '\\Xsky130_fd_sc_hd__and3_2_24.X',
    '\\Xsky130_fd_sc_hd__and3_2_18.X',
    '\\Xsky130_fd_sc_hd__and3_2_25.X'
]

def simulate(pwd_bits, enable_cycles, max_output_cycles=25):
    state = {q: ff['rst_val'] for q, ff in ffs.items()}
    output_str = ""
    
    total_cycles = enable_cycles + 4 + max_output_cycles
    for cycle in range(total_cycles):
        env = dict(state)
        
        # apply inputs
        env['rst_n'] = cycle >= 2
        env['enable'] = 4 <= cycle < (4 + enable_cycles)
        
        pwd_idx = cycle - 4
        if 0 <= pwd_idx < len(pwd_bits):
            env['I'] = pwd_bits[pwd_idx] == '1'
        else:
            env['I'] = False
            
        for lhs in order:
            rhs = assigns.get(lhs)
            if rhs:
                expr_str = to_python_expr(rhs)
                env[lhs] = eval(expr_str)
                
        # capture output
        if cycle >= (4 + enable_cycles):
            O_val = 0
            for j, bit_sig in enumerate(O_bits):
                b = env.get(bit_sig, False)
                if b: O_val |= (1 << (7 - j))
            
            if O_val != 0:
                c = chr(O_val) if 32 <= O_val < 127 else '.'
                output_str += c
            
        # update state
        next_state = {}
        for q, ff in ffs.items():
            D_val = ff['D']
            expr_str = to_python_expr(D_val)
            next_state[q] = eval(expr_str)
        state = next_state
        
    return output_str

if __name__ == '__main__':
    print("=" * 60)
    print("ReGDS-SKY130: Cycle-Accurate Gate Netlist Simulator")
    print(f"Netlist loaded from: {synth_file}")
    print("=" * 60)
    
    # 1. Flag Password (122 bits)
    z3_pwd = "00000001010010001000000000000101010001000000001010000001000000010000000100001001000001000000001000100010010000010100000000"
    print("\n[+] 1. Simulating Z3-Generated Password (122 cycles):")
    out = simulate(z3_pwd, 122)
    print(f"    Output: '{out}'  <-- UNLOCKED FLAG!")

    # 2. Human-intended Star Battle Solution
    barsat_grid = [
        '.......*.*.',
        '*....*.....',
        '.......*.*.',
        '*.*........',
        '....*.*....',
        '..*.....*..',
        '....*.....*',
        '.*....*....',
        '...*......*',
        '.....*..*..',
        '.*.*.......'
    ]
    barsat_pwd = ''.join('1' if c == '*' else '0' for row in barsat_grid for c in row) + '0'
    print("\n[+] 2. Simulating Human-Intended Star Battle Grid (122 cycles):")
    out_human = simulate(barsat_pwd, 122)
    print(f"    Output: '{out_human}'  <-- UNLOCKED FLAG!")

    # 3. Easter Egg: All-zeros
    print("\n[+] 3. Simulating All-Zeros Input (122 cycles):")
    out_zeros = simulate("0" * 122, 122)
    print(f"    Output: '{out_zeros}'  <-- Easter Egg: EMPTY SKY")

    # 4. Easter Egg: All-ones
    print("\n[+] 4. Simulating All-Ones Input (122 cycles):")
    out_ones = simulate("1" * 122, 122)
    print(f"    Output: '{out_ones}'  <-- Easter Egg: BIG BANG")

    # 5. Easter Egg: Alternating 1010...
    print("\n[+] 5. Simulating Alternating '1010...' Input (122 cycles):")
    out_alt = simulate("10" * 61, 122)
    print(f"    Output: '{out_alt}'  <-- Easter Egg: TRY AGAIN")
    print("\n" + "=" * 60)
