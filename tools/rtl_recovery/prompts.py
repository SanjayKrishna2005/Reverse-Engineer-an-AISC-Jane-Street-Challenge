RECOVERY_PROMPT = """
You are an expert hardware engineer analyzing a gate-level netlist submodule extracted via reverse engineering. 
Your task is to write equivalent, human-readable RTL Verilog.

{hints}

GATE-LEVEL NETLIST:
```verilog
{netlist}
```

RULES:
1. Use word-level operations (assign sum = a + b) not gate-level.
2. Identify FSMs and write them as case statements.
3. Identify arithmetic (adders, comparators) and use operators.
4. Identify muxes and use ternary operators or if/else.
5. Name signals descriptively based on their apparent function if possible.
6. Preserve exact functionality — this will be machine-verified.
7. Only output the Verilog code enclosed in ```verilog ``` block, nothing else.
"""

RETRY_PROMPT = """
The RTL you generated failed equivalence checking against the original gate-level netlist.

YOSYS EQUIVALENCE CHECK OUTPUT:
```
{yosys_error}
```

Please fix the logic errors and output the corrected Verilog code.
"""
