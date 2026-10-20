"""
Full VCD Parser to extract the complete I (serial input) bitstream 
from example_inputs.vcd and decode the O[7:0] output characters.
"""

def parse_vcd_full(filename):
    with open(filename, 'r') as f:
        lines = f.read().splitlines()

    symbols = {}
    time = 0
    signals = {}
    
    for line in lines:
        if line.startswith('$var'):
            parts = line.split()
            symbol = parts[3]
            name = parts[4]
            symbols[symbol] = name
            signals[name] = []
        elif line.startswith('#'):
            time = int(line[1:])
        elif line.startswith('b'):
            parts = line[1:].split()
            if len(parts) == 2:
                val, sym = parts
                if sym in symbols:
                    signals[symbols[sym]].append((time, val))
        elif len(line) >= 2 and line[0] in '01xz':
            val = line[0]
            sym = line[1:]
            if sym in symbols:
                signals[symbols[sym]].append((time, val))

    return signals

signals = parse_vcd_full('example_inputs.vcd')

# Clock period is 10000 ps (5000 high, 5000 low)
# Posedge clk is at 5000, 15000, 25000, ...
# RST released at 30000 (posedge clk at 35000 is first valid)
# Enable asserted at 40000 (posedge at 45000 is first shift in)
# Enable deasserted at 1250000 (posedge at 1255000)
# First posedge with enable=1: 45000
# Cycles with enable: (1250000 - 40000) / 10000 = 121 cycles

CLK_PERIOD = 10000  # ps
RST_RELEASE = 30000
ENABLE_START = 40000
ENABLE_END = 1250000

# Build I value at each posedge clk during enable window
def get_signal_at(transitions, t):
    val = '0'
    for ts, v in transitions:
        if ts <= t:
            val = v
        else:
            break
    return val

i_transitions = signals.get('I', [])
clk_transitions = signals.get('clk', [])

posedges = []
for i, (t, v) in enumerate(clk_transitions):
    if v == '1' and t >= ENABLE_START and t <= ENABLE_END:
        posedges.append(t)

print(f"Number of posedges with enable=1: {len(posedges)}")
print()

# Extract I bit at each posedge
bits = []
for t in posedges:
    bit = get_signal_at(i_transitions, t)
    bits.append(bit)

bitstring = ''.join(bits)
print(f"Serial input bitstream ({len(bits)} bits):")
print(bitstring)
print()

# Decode the O output characters
print("O[7:0] output decoded as ASCII:")
o_transitions = signals.get('O', [])
chars = []
for t, v in o_transitions:
    val = v.lstrip('0') or '0'
    try:
        n = int(val, 2)
        if 32 <= n <= 126:
            chars.append(chr(n))
            print(f"  @{t}: {val} = {n} = '{chr(n)}'")
        else:
            print(f"  @{t}: {val} = {n} = (non-printable)")
    except:
        print(f"  @{t}: {v} (invalid)")

print()
print(f"Decoded output string: {''.join(chars)}")
