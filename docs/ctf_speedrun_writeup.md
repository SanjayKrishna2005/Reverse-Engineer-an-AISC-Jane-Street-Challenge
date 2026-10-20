# CTF Write-up: SKY130 Hardware Puzzle (Speedrun Route)

This write-up details the most efficient, highly optimized path to capturing the flag in this GDSII hardware puzzle. Instead of building a heavy, generalized reverse-engineering pipeline, we exploit the challenge's clues and physical layout to shortcut the process and extract the flag in record time.

## Step 1: Reconnaissance & Visual OSINT
Before running any heavy EDA tools, the first rule of CTFs is to read the prompt and inspect the provided assets. The prompt gives two massive hints:
1. *"The circuit is physically arranged to hint at its functionality, so look closely at the layout!"*
2. *"There is one section of the design that is used to generate the output but does not affect the [success] output. You can safely ignore it..."*

### The Physical Layout
Opening `layout.png`, the standard cells are clustered into distinct shapes. Ignoring the outlined "output generator" box, the placement of the logic cells physically spells out the number **122** on the die. 
**Takeaway:** The password sequence is exactly **122 bits long**. 

### The Example VCD
Opening `example_inputs.vcd` in a text editor reveals immediate Easter eggs:
* **The Date:** The timestamp is `Sat Dec 31 23:59:60 2016`—the 2016 Leap Second.
* **The Header:** The `$version` field says, *"Leave no stone unturned! But for this file, consider looking at it in a waveform viewer instead."*
* **The Mock String:** Writing a quick Python script to decode the `O[7:0]` pins over time reveals that for an incorrect, alternating input (`1010...`), the circuit prints **`TRY AGAIN`**. (We later found out that all-zeros prints `EMPTY SKY` and all-ones prints `BIG BANG`).

## Step 2: Extraction & Aggressive Pruning
With our recon complete, we need to convert the physical `puzzle.gds` into a simulateable netlist.

1. **Quick Extraction:** We run Magic in batch mode (`ext2spice`) to dump a raw SPICE netlist. Since this isn't a heavily obfuscated commercial chip, Magic preserves the standard cell references (e.g., `sky130_fd_sc_hd__nand2_1`). We bypass complex subgraph isomorphism (DCI) and use a simple 50-line Python regex script to map these SPICE subcircuit calls directly to a structural Verilog netlist.
2. **Aggressive Pruning (The Exploit):** We use the challenge's second hint. We load the Verilog into Yosys and run a backwards cone-of-influence trace starting *only* from the `success` pin. We aggressively delete all logic gates that fan-out exclusively to the `O[7:0]` output pins. This strips away over half of the circuit (the entire ASCII output generator), leaving only a tiny state machine and shift register.

## Step 3: Symbolic Execution with Z3
Now we have a highly pruned, lightweight Verilog netlist representing just the sequence checker. 

We flatten the netlist using Yosys (`flatten; opt`) and write a fast Python script using the **Z3 SMT Solver**. Because we pruned the netlist, the symbolic execution graph is tiny and solves in milliseconds.

We set up the Z3 constraints:
1. We unroll the state machine for exactly **122 clock cycles** (thanks to the layout hint).
2. We constrain `success == True` at cycle 122.
3. We briefly re-attach the output logic mathematically and constrain `O[7:0]` to be within the printable ASCII range (`0x20` to `0x7E`).

## Step 4: The Flag
Z3 instantly finds a single satisfying model for the 122-bit sequence:

```text
00000001010010001000000000000101010001000000001010000001000000010000000100001001000001000000001000100010010000010100000000
```

Feeding this 122-bit bitstream into the complete simulated circuit asserts the `success` pin to HIGH and shifts out the final flag on the output pins:

**Flag:** `(* TWO STARS *)`

---
### Conclusion
By paying strict attention to the visual hints ("122") and aggressively pruning dead code based on the prompt's instructions, we bypassed the need for formal equivalence checking and heavy graph matching, collapsing a complex hardware reverse-engineering task into a fast, elegant Z3 solve.
