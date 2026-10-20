import re
import z3

with open('work_puzzle/puzzle_synth.v', 'r') as f:
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

def to_z3_expr(expr, env):
    expr = re.sub(r'~', 'Not', expr)
    expr = re.sub(r'\^', 'Xor', expr)
    expr = re.sub(r'&', 'And', expr)
    expr = re.sub(r'\|', 'Or', expr)
    
    if '?' in expr:
        m = re.match(r'(.*?)\s*\?\s*(.*?)\s*:\s*(.*)', expr)
        if m:
            return f"z3.If({to_z3_expr(m.group(1), env)}, {to_z3_expr(m.group(2), env)}, {to_z3_expr(m.group(3), env)})"
            
    def repl(m):
        tok = m.group(0)
        if tok == "1'b0": return "False"
        if tok == "1'b1": return "True"
        if tok in ("Not", "Xor", "And", "Or", "False", "True"): return tok
        if tok not in env:
            env[tok] = z3.Bool(tok)
        return f"env['{tok}']"
        
    return re.sub(r'\\[\w.]+|_\\d{4}_|[a-zA-Z_]\w*|1\'b[01]', repl, expr)

order = []
visited = set()
def visit(node):
    if node in visited: return
    visited.add(node)
    rhs = assigns.get(node)
    if rhs:
        deps = re.findall(r'\\[\w.]+|_\\d{4}_|[a-zA-Z_]\w*|1\'b[01]', rhs)
        for dep in deps: visit(dep)
    order.append(node)
for k in assigns: visit(k)

O_bits = ['\\Xsky130_fd_sc_hd__and3_2_23.X', '\\Xsky130_fd_sc_hd__and3_2_19.X', '\\Xsky130_fd_sc_hd__and3_2_22.X', '\\Xsky130_fd_sc_hd__and3_2_21.X', '\\Xsky130_fd_sc_hd__and3_2_20.X', '\\Xsky130_fd_sc_hd__and3_2_24.X', '\\Xsky130_fd_sc_hd__and3_2_18.X', '\\Xsky130_fd_sc_hd__and3_2_25.X']

def get_z3_state_transition(state_vars):
    env = dict(state_vars)
    env['rst_n'] = True
    env['enable'] = False
    env['I'] = False # Doesn't matter, enable is false
    
    solver_constraints = []
    
    for lhs in order:
        rhs = assigns.get(lhs)
        if rhs:
            expr_str = to_z3_expr(rhs, env)
            env[lhs] = eval(expr_str)
            
    next_state = {}
    for q, ff in ffs.items():
        D_val = ff['D']
        expr_str = to_z3_expr(D_val, env)
        next_state[q] = eval(expr_str)
        
    return env, next_state

# We want to see if we can generate the string "NOT TOUCH"
target_string = "NOT TOUCH"
s = z3.Solver()

# Create a sequence of states
states = []
for i in range(len(target_string) + 1):
    state = {q: z3.Bool(f'{q}_cycle_{i}') for q in ffs.keys()}
    states.append(state)

for i in range(len(target_string)):
    curr_state = states[i]
    next_state_vars = states[i+1]
    
    # Get the logic for this cycle
    env, next_state = get_z3_state_transition(curr_state)
    
    # Tie the next state logic to the variables for the next state
    for q in ffs.keys():
        s.add(next_state_vars[q] == next_state[q])
        
    # Add constraint that O_bits output the correct character
    char_val = ord(target_string[i])
    for j, bit_sig in enumerate(O_bits):
        bit_val = (char_val >> (7 - j)) & 1
        is_high = bit_val == 1
        s.add(env[bit_sig] == is_high)

print(f"Checking if {repr(target_string)} is reachable from ANY state...")
if s.check() == z3.sat:
    print("SAT! The string is encoded in the logic!")
else:
    print("UNSAT! String not found.")
