import re
import sys

with open('work_puzzle/puzzle_synth.v', 'r') as f:
    content = f.read()

assigns = {}
for m in re.finditer(r'assign\s+(\\?[\w.\[\]:]+)\s*=\s*(.+?)\s*;', content):
    lhs = m.group(1).strip()
    rhs = m.group(2).strip()
    if rhs.startswith('{'):
        continue
    assigns[lhs] = rhs

def get_deps(rhs):
    deps = set()
    tokens = re.findall(r'\\[\w.]+|_\d{4}_|[a-zA-Z0-9_]+', rhs)
    for tok in tokens:
        if tok not in ("1'b0", "1'b1", 'rst_n', 'enable', 'clk', 'I', 'O'):
            deps.add(tok)
    return deps

deps = {lhs: get_deps(rhs) for lhs, rhs in assigns.items()}

# topological sort
order = []
visited = set()
visiting = set()

def visit(n):
    if n in visited:
        return True
    if n in visiting:
        print(f"Cycle detected at node {n}!")
        return False
    visiting.add(n)
    if n in deps:
        for d in deps[n]:
            if not visit(d):
                return False
    visiting.remove(n)
    visited.add(n)
    order.append(n)
    return True

cycle_found = False
for n in assigns:
    if not visit(n):
        cycle_found = True
        break

if cycle_found:
    print("Combinational loop found!")
else:
    print(f"Successfully sorted {len(order)} assigns.")
