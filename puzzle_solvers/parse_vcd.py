import sys

def parse(filename):
    with open(filename, 'r') as f:
        lines = f.read().splitlines()

    symbols = {}
    time = 0
    signals = {}
    
    in_dumpvars = False
    for line in lines:
        if line.startswith('$var'):
            parts = line.split()
            width = int(parts[2])
            symbol = parts[3]
            name = parts[4]
            symbols[symbol] = name
            signals[name] = []
        elif line.startswith('$dumpvars'):
            in_dumpvars = True
        elif line.startswith('#'):
            time = int(line[1:])
        elif in_dumpvars or line.startswith(('0','1','x','z','b')):
            if line.startswith('b'):
                val, sym = line[1:].split()
                if sym in symbols:
                    signals[symbols[sym]].append((time, val))
            elif line.startswith(('0','1','x','z')):
                val = line[0]
                sym = line[1:]
                if sym in symbols:
                    signals[symbols[sym]].append((time, val))

    for name in ['clk', 'rst_n', 'enable', 'I', 'O', 'success']:
        if name in signals:
            print(f"Signal {name}:")
            for t, v in signals[name][:20]:
                print(f"  @{t}: {v}")

parse('example_inputs.vcd')
