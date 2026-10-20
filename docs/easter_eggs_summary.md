# Puzzle Resolution & Easter Eggs Summary

This document chronicles the step-by-step discovery of the hidden Easter eggs and the final solution for the reverse-engineering hardware puzzle.

## 1. Initial Reconnaissance: The VCD File
Our first clues came from simply inspecting the provided `example_inputs.vcd` file in a text editor before running any simulations.

*   **The Leap Second Timing:** The timestamp of the file capture was recorded as `Sat Dec 31 23:59:60 2016`. The `23:59:60` time is a real historical anomaly—the **2016 Leap Second**.
*   **The Hidden Header Message:** Inside the `$version` field of the VCD, the creators left a direct message: 
    > *"Leave no stone unturned! But for this file, consider looking at it in a waveform viewer instead."*

## 2. Testing the Waters: Brute Force & Mock Strings
When simulating the extracted netlist (`puzzle.v`), we discovered that the circuit contains an "output generator" designed to print ASCII strings on the `O[7:0]` pins, even when the `success` pin remains `0`. The creators anticipated brute-force attempts and hardcoded specific responses:

*   **Alternating Pattern (`1010...`):** The input from the example VCD produced the string **`TRY AGAIN`**.
*   **All Zeros (`0000...`):** Sending a completely empty signal resulted in the string **`EMPTY SKY`**.
*   **All Ones (`1111...`):** Maxing out the input signal resulted in the string **`BIG BANG`**.

## 3. The Physical Layout Hint: "122"
The challenge description hinted: *"The circuit is physically arranged to hint at its functionality, so look closely at the layout!"*

By analyzing `layout.png`, we noticed that the standard cells (the dense pink/blue logic blocks) placed outside the main output generator box were not arranged randomly. They were physically grouped to form giant numbers on the die. Reading from left to right, the cell clusters spell out **"1 2 2"**. 

This was the critical hint that the required password was exactly **122 bits** long, correcting our initial assumption (based on the VCD) that it was only 121 bits.

## 4. The Cryptographic Solve: Z3 & ASCII Constraints
To find the actual 122-bit password without brute-forcing $2^{122}$ combinations, we built a custom Python script using the **Z3 SMT Solver**. 

1.  **First Attempt (Garbled):** We asked Z3 to find any 122-bit sequence that forces `success = 1`. It found one instantly, but the resulting `O[7:0]` output was unreadable binary garbage.
2.  **Second Attempt (Constrained):** We added a constraint to the solver: *The output bytes on `O` must be valid, printable ASCII characters.*

### The Final Solution
With the ASCII constraints in place, Z3 discovered the **single, unique 122-bit sequence** that solves the puzzle:

```text
00000001010010001000000000000101010001000000001010000001000000010000000100001001000001000000001000100010010000010100000000
```

When this exact string is shifted serially into the `I` pin, the circuit's internal state machine perfectly aligns. The `success` pin goes **HIGH**, and the output generator decodes the final, true ASCII flag:

```text
(* TWO STARS *)
```

## 5. Post-Solve Deep Analysis: The Unreachable ROM String
The final Easter egg was discovered after solving the puzzle, by deeply verifying the combinatorial logic of the output generator. 

The flag `(* TWO STARS *)` references the "Two Stars" variant of the Star Battle logic puzzle. The alternate name for this puzzle is **"Two Not Touch"**. 

Using a SAT solver, we proved that the string **`NOT TOUCH`** is actually encoded in the output generator's ROM. However, it is an unreachable "dead code" sequence:
1. If you constrain the output bus to spell `NOT TOUCH` starting from a **free/unconstrained state**, the SAT solver returns **SATISFIABLE**.
2. If you constrain it to states actually reachable from the chip's default `reset` state, it returns **UNSAT**.

The designers deliberately baked the name of the game into the silicon logic gates, making it impossible to trigger during a normal simulation. You can only find it by formally reverse-engineering the mathematical state-space of the circuit!
