import z3_solve_custom
import z3

solver = z3.Solver()
I_bits = [z3.Bool(f'I_{i}') for i in range(130)]
state = {q: z3.BoolVal(z3_solve_custom.ffs[q]['rst_val'] == '1') for q in z3_solve_custom.ffs}

for cycle in range(1, 123):
    env = {}
    env['rst_n'] = z3.BoolVal(True)
    env['enable'] = z3.BoolVal(True)
    env['clk'] = z3.BoolVal(True)
    env['I'] = I_bits[cycle-1]
    
    for q in state:
        env[q] = state[q]
        
    for lhs in z3_solve_custom.order:
        rhs = z3_solve_custom.assigns.get(lhs)
        if rhs:
            expr_str = z3_solve_custom.to_python_expr(rhs)
            env[lhs] = eval(expr_str)

    next_state = {}
    for q, ff in z3_solve_custom.ffs.items():
        D_val = ff['D']
        expr_str = z3_solve_custom.to_python_expr(D_val)
        next_state[q] = eval(expr_str)
            
    state = next_state
    
solver.add(state['success'] == True)
if solver.check() == z3.sat:
    print(f"SAT at cycle 122!")
    m = solver.model()
    seq = "".join("1" if z3.is_true(m.evaluate(I_bits[i])) else "0" for i in range(122))
    print(f"Sequence: {seq}")
else:
    print("UNSAT")
