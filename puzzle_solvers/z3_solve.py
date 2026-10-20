import re
import z3

# Read synthesized verilog
with open('work_puzzle/puzzle_synth.v', 'r') as f:
    content = f.read()

assigns = {}
for m in re.finditer(r'assign\s+(\\?[\w.\[\]:]+)\s*=\s*(.+?)\s*;', content):
    lhs = m.group(1).strip()
    rhs = m.group(2).strip()
    assigns[lhs] = rhs

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
    ffs[q_sig] = {'clk': clk_sig, 'rst_val': m.group(5), 'D': m.group(7).strip()}

# Helper to parse rhs into Z3 expression
def build_z3_expr(rhs, z3_vars):
    # Operators: &, |, ^, ~, ? :
    # Variables are in z3_vars
    tokens = re.findall(r'\\[\w.]+|_\d{4}_|[a-zA-Z0-9_]+|\[\d+:\d+\]|\S', rhs)
    
    def parse_expr(toks):
        # Very simple parser for Yosys generic verilog
        # Yosys outputs things like: A & B, A | B, ~ A, A ^ B, A ? B : C
        # Or concatenations { A, B }
        pass # To be implemented if doing string parsing...

    pass

# A much simpler approach:
# Convert the Verilog to C using Yosys!
# Yosys: write_cxxrtl work_puzzle/puzzle.cpp
# Then write a small C++ program that uses CXXRTL to simulate the circuit!
# But wait, we need to SOLVE for the inputs. CXXRTL is only for simulation.

# Instead of parsing generic verilog, let's use Yosys to write SMT2 format!
# Yosys has a command: write_smt2 work_puzzle/puzzle.smt2
