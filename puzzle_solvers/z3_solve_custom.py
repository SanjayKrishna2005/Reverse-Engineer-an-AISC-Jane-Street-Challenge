import re
import z3

print("Loading netlist...")
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
        # could be: always @(posedge clk, negedge rst_n)
        # or: always @(negedge gate)
        # or: always @(posedge gate)
        m = re.search(r'always\s+@\((.*?)\)', line)
        if m:
            sensitivity = m.group(1).strip()
            # Check next lines
            next_line = lines[i+1].strip()
            if next_line.startswith('if'):
                # Has reset
                # if (!rst_n) Q <= 1'b0;
                # else Q <= D;
                m_if = re.match(r'if\s*\(!.*?\)\s*(.*?)\s*<=\s*1\'b([01]);', next_line)
                m_else = re.match(r'else\s*(.*?)\s*<=\s*(.*?)\s*;', lines[i+2].strip())
                if m_if and m_else:
                    q_sig = m_if.group(1).strip()
                    rst_val = m_if.group(2)
                    d_sig = m_else.group(2).strip()
                    
                    # Extract clock from sensitivity list
                    # usually posedge CLK, negedge RST
                    clk_sig = None
                    is_posedge = True
                    for edge in sensitivity.split(','):
                        if 'posedge' in edge:
                            clk_sig = edge.replace('posedge', '').strip()
                        elif 'negedge' in edge and 'rst' not in edge:
                            clk_sig = edge.replace('negedge', '').strip()
                            is_posedge = False
                            
                    ffs[q_sig] = {
                        'clk': clk_sig,
                        'is_posedge': is_posedge,
                        'rst_val': rst_val,
                        'D': d_sig
                    }
                i += 2
            else:
                # No reset
                # Q <= D;
                m_assign = re.match(r'(.*?)\s*<=\s*(.*?)\s*;', next_line)
                if m_assign:
                    q_sig = m_assign.group(1).strip()
                    d_sig = m_assign.group(2).strip()
                    clk_sig = None
                    is_posedge = True
                    for edge in sensitivity.split(','):
                        if 'posedge' in edge:
                            clk_sig = edge.replace('posedge', '').strip()
                        elif 'negedge' in edge:
                            clk_sig = edge.replace('negedge', '').strip()
                            is_posedge = False
                    ffs[q_sig] = {
                        'clk': clk_sig,
                        'is_posedge': is_posedge,
                        'rst_val': '0', # Default to 0
                        'D': d_sig
                    }
                i += 1
    i += 1

print(f"Parsed {len(assigns)} assigns and {len(ffs)} FFs.")

def get_deps(rhs):
    deps = set()
    tokens = re.findall(r'\\[\w.]+|_\d{4}_|[a-zA-Z0-9_]+', rhs)
    for tok in tokens:
        if tok not in ("1'b0", "1'b1", 'rst_n', 'enable', 'clk', 'I', 'O', 'success'):
            deps.add(tok)
    return deps

deps = {lhs: get_deps(rhs) for lhs, rhs in assigns.items()}
order = []
visited = set()
def visit(n):
    if n in visited: return
    if n in deps:
        for d in deps[n]: visit(d)
    visited.add(n)
    order.append(n)

for n in assigns:
    visit(n)

def to_python_expr(rhs):
    if '?' in rhs:
        cond, rest = rhs.split('?', 1)
        true_val, false_val = rest.split(':', 1)
        return f'z3.If({to_python_expr(cond)}, {to_python_expr(true_val)}, {to_python_expr(false_val)})'
    
    def repl(m):
        tok = m.group(0)
        if tok in ("1'b0", "1'b1", "1'bx"):
            return "z3.BoolVal(True)" if tok == "1'b1" else "z3.BoolVal(False)"
        return f'env.get(r"{tok}", z3.BoolVal(False))'
        
    return re.sub(r'\\[\w.]+|_\d{4}_|[a-zA-Z_]\w*|1\'b[01x]', repl, rhs)

solver = z3.Solver()
I_bits = [z3.Bool(f'I_{i}') for i in range(121)]

state = {q: z3.BoolVal(ffs[q]['rst_val'] == '1') for q in ffs}

for cycle in range(1, 122):
    env = {}
    env['rst_n'] = z3.BoolVal(True)
    env['enable'] = z3.BoolVal(True)
    env['clk'] = z3.BoolVal(True)
    env['I'] = I_bits[cycle-1]
    
    for q in state:
        env[q] = state[q]
        
    for lhs in order:
        rhs = assigns.get(lhs)
        if rhs:
            expr_str = to_python_expr(rhs)
            env[lhs] = eval(expr_str)

    next_state = {}
    for q, ff in ffs.items():
        gate_val = env.get(ff['clk'])
        if gate_val is None:
            expr_str = to_python_expr(ff['clk'])
            gate_val = eval(expr_str)
            
        D_val = ff['D']
        expr_str = to_python_expr(D_val)
        next_state[q] = eval(expr_str)
            
    state = next_state

solver.add(state['success'] == True)
print("Solving...")
res = solver.check()
if res == z3.sat:
    print("SAT!")
    m = solver.model()
    seq = "".join("1" if m.evaluate(I_bits[i]) else "0" for i in range(121))
    print(f"Sequence: {seq}")
else:
    print("UNSAT!")
