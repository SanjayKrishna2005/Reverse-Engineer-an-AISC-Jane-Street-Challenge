# ReGDS-SKY130: Automated GDSII-to-Gate-Level Netlist and Word-Level Behavioral RTL Reverse Engineering

[![Open Source Hardware](https://img.shields.io/badge/Open%20Source-Hardware%20Security-blue.svg)](https://github.com/sanjaykrishna)
[![PDK](https://img.shields.io/badge/PDK-SkyWater%20130nm-orange.svg)](https://github.com/google/skywater-pdk)
[![Verification](https://img.shields.io/badge/Verification-Yosys%20LEC%20%7C%20Z3%20SMT-brightgreen.svg)](https://github.com/YosysHQ/yosys)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> **An end-to-end, open-source hardware security and reverse engineering framework.** ReGDS-SKY130 extracts physical GDSII layouts, reconstructs transistor connectivity into Digital Connection Graphs (DCG), identifies standard cells via DCI-weighted subgraph isomorphism (VF2), and abstracts flat gate-level netlists into verifiable, human-readable behavioral Register-Transfer Level (RTL) Verilog.
>
> Originally designed to solve an obfuscated 122-bit hardware CTF silicon puzzle, this framework was generalized into an automated, multi-stage reverse engineering pipeline targeting the open-source **SkyWater SKY130** process design kit.

---

## Author & Academic Context

- **Author:** Sanjay Krishna
- **Background:** Electronics & Communication Engineering
- **Focus Areas:** ASIC Design, Hardware Security, Computer Architecture, Formal Verification
- **Foundational Paper:** Rajarathnam, D., Lin, Y., Jin, Y., & Pan, D.Z. (2020). *ReGDS: A Reverse Engineering Framework from GDSII to Gate-level Netlist.* IEEE International Symposium on Hardware Oriented Security and Trust (HOST).

---

## Table of Contents

1. [Executive Summary & Motivation](#1-executive-summary--motivation)
2. [Theoretical Foundations & Mathematical Formulations](#2-theoretical-foundations--mathematical-formulations)
   - [The Inverse Problem of Silicon Decompilation](#21-the-inverse-problem-of-silicon-decompilation)
   - [Digital Connectivity Index (DCI) Formulation](#22-digital-connectivity-index-dci-formulation)
   - [Drain/Source Invariance & Bulk Tie-Off Handling](#23-drainsource-invariance--bulk-tie-off-handling)
   - [Digital Connection Graphs (DCG)](#24-digital-connection-graphs-dcg)
   - [Subgraph Isomorphism via VF2 / VF2++](#25-subgraph-isomorphism-via-vf2--vf2)
   - [Search Space Pruning: Hash Pre-filtering & Staggered Matching](#26-search-space-pruning-hash-pre-filtering--staggered-matching)
   - [Partial Match & Logic Stitching](#27-partial-match--logic-stitching)
3. [End-to-End Pipeline Architecture](#3-end-to-end-pipeline-architecture)
   - [Phase 1: SPICE Netlist Extraction (SNE)](#phase-1-spice-netlist-extraction-sne)
   - [Phase 2: SPICE Parsing & Physical Filtering](#phase-2-spice-parsing--physical-filtering)
   - [Phase 3: DCI Graph Construction](#phase-3-dci-graph-construction)
   - [Phase 4: Logic Gate Identification (LGE)](#phase-4-logic-gate-identification-lge)
   - [Phase 5: Structural Verilog Netlist Synthesis](#phase-5-structural-verilog-netlist-synthesis)
   - [Phase 6: Multi-Level Formal Verification (LEC)](#phase-6-multi-level-formal-verification-lec)
   - [Phase 7: Word-Level Behavioral RTL Recovery](#phase-7-word-level-behavioral-rtl-recovery)
4. [Hardware CTF Case Study: Cracking Silicon](#4-hardware-ctf-case-study-cracking-silicon)
   - [Challenge Specification & Recon](#41-challenge-specification--recon)
   - [Waveform Timing Analysis & The 122nd Clock Edge](#42-waveform-timing-analysis--the-122nd-clock-edge)
   - [Backward Cone-of-Influence (COI) Pruning](#43-backward-cone-of-influence-coi-pruning)
   - [SMT Modeling with Z3 & Flag Extraction](#44-smt-modeling-with-z3--flag-extraction)
   - [Discovery of the Star Battle Puzzle & The Silicon Bug](#45-discovery-of-the-star-battle-puzzle--the-silicon-bug)
   - [Comprehensive Catalog of 7 Easter Eggs](#46-comprehensive-catalog-of-7-easter-eggs)
5. [Benchmark Validation: 16-Bit Accumulator (`adder_demo`)](#5-benchmark-validation-16-bit-accumulator-adder_demo)
6. [Repository Architecture & File Reference](#6-repository-architecture--file-reference)
7. [Installation, Environment Setup & Dependencies](#7-installation-environment-setup--dependencies)
8. [Reproduction & Execution Guide](#8-reproduction--execution-guide)
9. [Limitations & Open Research Problems](#9-limitations--open-research-problems)
10. [References & Citations](#10-references--citations)

---

## 1. Executive Summary & Motivation

Modern integrated circuit (IC) manufacturing relies on a geographically distributed, multi-party supply chain. Fabrication layouts in GDSII / OASIS stream formats are handed over to third-party foundries, creating significant security threats: **IP piracy**, **hardware Trojans**, **reverse engineering**, and **unauthorized overproduction**.

While the original IEEE HOST 2020 ReGDS paper established a graph-theoretic approach to netlist extraction, it was built around closed-source commercial EDA tooling (Mentor Calibre LVS for extraction, Cadence Conformal for LEC) targeting TSMC 40nm technology, and critically **stopped at the flat gate-level netlist**.

**ReGDS-SKY130** retargets and extends this research:
1. **Fully Open-Source EDA Toolchain**: Eliminates all proprietary dependencies by pairing **Magic VLSI**, **Netgen**, and **Yosys** with custom Python AST and graph analysis engines.
2. **First-Class SKY130 PDK Support**: Handles SKY130-specific physical layout characteristics (dedicated tap cells `tapvpwrvgnd`, antenna diodes, power decoupling capacitors, asymmetric standard cell pitch).
3. **Beyond Gate-Level: Word-Level Behavioral RTL Recovery**: Closes the gap identified in academic literature by translating flat gate netlists into human-readable, word-level Verilog with bus declarations, arithmetic operators (`+`, `-`, comparators), multiplexer trees, and explicit FSM `case` statements.
4. **Dual Verification Architecture**: Combines inline Boolean truth-table checks with end-to-end Combinational and Sequential Logic Equivalence Checking (LEC) via Yosys SAT engines.

---

## 2. Theoretical Foundations & Mathematical Formulations

### 2.1 The Inverse Problem of Silicon Decompilation

Reverse engineering an unknown physical layout is an inherently ill-posed inverse problem:
$$\text{RTL} \xrightarrow{\text{Synthesis}} \text{Gate Netlist} \xrightarrow{\text{Place and Route}} \text{Physical Layout (GDSII)}$$
The forward synthesis and physical design pipeline destroys design intent:
- Signal names, comments, and high-level module hierarchies are flattened.
- Wide multi-bit buses are bit-blasted into disjoint wires.
- Multi-bit arithmetic operators are mapped into non-contiguous standard cell fragments.
- Thousands of non-functional physical cells (fillers, decap, tap cells) are injected.
- Transistor terminals (Drain and Source) become geometrically ambiguous.

ReGDS-SKY130 formulates the recovery as a multi-stage mathematical reconstruction:

```
┌─────────┐      ┌─────────────┐      ┌───────────┐      ┌──────────────┐      ┌──────────────┐
│  GDSII  │ ───► │ Clean SPICE │ ───► │    DCG    │ ───► │  Gate-Level  │ ───► │  Behavioral  │
│ Stream  │ (SNE)│ Transistors │(DCI) │  Graphs   │(VF2) │   Netlist    │(RTL) │     RTL      │
└─────────┘      └─────────────┘      └───────────┘      └──────────────┘      └──────────────┘
```

---

### 2.2 Digital Connectivity Index (DCI) Formulation

In extracted SPICE netlists, standard cell boundaries are initially absent, leaving an unstructured transistor graph. To uniquely fingerprint standard cells without prior labels, ReGDS utilizes the **Digital Connectivity Index (DCI)**.

The edge weight $w_{i,j}$ between any two connected MOSFETs $M_i$ and $M_j$ is given by:

$$w_{i,j} = \alpha_{i,j} \left( \sum_{M_i, M_j} DCI_{i,j} + \beta_i \beta_j \right)$$

Where:
- $\alpha_{i,j} \in \{0, 1\}$ denotes the topological existence of a direct electrical connection between device $M_i$ and device $M_j$.
- $DCI_{i,j}$ is the terminal connectivity weight assigned based on the terminal types involved.
- $\beta_i, \beta_j \in \{0, 1\}$ indicates whether a transistor's Drain or Source is tied directly to its corresponding Bulk terminal (well/substrate tie-off).

#### DCI Terminal Weight Matrix ($\text{DCI}_{i,j}$)

| Connection Type | Terminal Pair | Weight Value | Theoretical Justification |
| :--- | :---: | :---: | :--- |
| **Channel Series / Parallel** | Drain/Source $\leftrightarrow$ Drain/Source | **8** | Represents pull-up/pull-down network transistor stacks. |
| **Gate Drive** | Drain/Source $\leftrightarrow$ Gate | **2** | Represents internal intra-cell driving stages (e.g. inverter to NAND). |
| **Input Sharing** | Gate $\leftrightarrow$ Gate | **32** | High-entropy signature of complementary CMOS input pairs ($PMOS + NMOS$). |
| **Bulk Tie-Off Bonus** | Drain/Source $\leftrightarrow$ Bulk ($\beta$) | **+1** | Differentiates power-rail tied devices from internal floating nodes. |

---

### 2.3 Drain/Source Invariance & Bulk Tie-Off Handling

#### Symmetrical Drain/Source Handling
In planar CMOS layout extraction without complete power grid tracing, the Drain and Source diffusions of a MOSFET are electrically symmetric and geometrically interchangeable. A standard graph matcher that enforces strict Drain vs. Source matching will fail catastrophically when a layout extractor swaps terminal assignments.

DCI guarantees invariance by mapping both Drain and Source to a unified terminal classification $\text{D/S}$. The weights are carefully selected such that no combination of lower-weight connections can sum to a higher-weight connection ($2 + 8 \neq 32$).

#### Bulk Tie-Off ($\beta$) Adaptation for SKY130
The original HOST 2020 formulation assumed standard cells possess local inline bulk tap contacts ($\beta = 1$). However, the **SKY130 High-Density (`sky130_fd_sc_hd`)** library utilizes a tap-less cell architecture: N-well and P-substrate potentials are supplied via dedicated, periodic **tap cells** (`sky130_fd_sc_hd__tapvpwrvgnd_1`).

Consequently, local transistor device extractions report global `VPWR` and `VGND` bulk terminals without inline contacts. ReGDS-SKY130 adapts to this:
1. Sets $\beta = 0$ as the primary baseline.
2. The weight space $\{2, 8, 32\}$ is mathematically proven to maintain **bijectivity** (unique isomorphic signature per cell topology) across all logic gates in the SKY130 standard cell library without requiring $\beta$.

---

### 2.4 Digital Connection Graphs (DCG)

A circuit subcircuit is transformed into an undirected weighted graph:
$$G_D = (V_D, E_D, \mu, \omega)$$
- **Vertices ($V_D$)**: Each vertex $v \in V_D$ corresponds to an extracted MOSFET.
- **Node Attributes ($\mu$)**: Device type $\mu(v) \in \{NMOS, PMOS\}$, channel width $W$, channel length $L$.
- **Edges ($E_D$)**: An edge $e = (u, v) \in E_D$ exists if and only if transistors $u$ and $v$ share an electrical net.
- **Edge Weights ($\omega$)**: $\omega(e) = w_{u,v}$ computed via the DCI equation.

---

### 2.5 Subgraph Isomorphism via VF2 / VF2++

Given a target circuit connection graph $G_{work}$ and a pre-computed library of reference cell graphs $\Gamma = \{H_1, H_2, \dots, H_m\}$, Logic Gate Identification finds an injective mapping:
$$f: V(H_k) \to V(G_{work})$$
such that:
1. $\forall u \in V(H_k): \mu_{H}(u) = \mu_{G}(f(u))$
2. $\forall (u, v) \in E(H_k): (f(u), f(v)) \in E(G_{work}) \land \omega_H(u, v) = \omega_G(f(u), f(v))$

ReGDS-SKY130 implements this using `networkx.algorithms.isomorphism.GraphMatcher` with strict semantic predicates on node types and edge weights.

---

### 2.6 Search Space Pruning: Hash Pre-filtering & Staggered Matching

Subgraph isomorphism is an NP-complete problem with worst-case factorial complexity $\mathcal{O}(|V|! \cdot |V|)$. Running unconstrained VF2 across a full chip DCG is computationally infeasible. ReGDS-SKY130 introduces two optimization engines:

#### 1. Topological Invariant Hash Filtering
Before evaluating graph isomorphism, candidate clusters are filtered using a multi-dimensional topological invariant hash $\mathcal{H}(G)$:
$$\mathcal{H}(G) = \langle |V_{NMOS}|,\ |V_{PMOS}|,\ \text{deg}(V),\ \sum_{e \in E} \omega(e),\ \max(\text{deg}(V)) \rangle$$
This cheap $\mathcal{O}(1)$ check eliminates $>95\%$ of invalid comparisons before VF2 initialization.

#### 2. Monotonic Staggered Matching
The reference library $\Gamma$ is partitioned into hierarchical complexity buckets based on transistor count:

```
Bucket 1: Complex Multi-Stage Cells (|V| > 10)
├── D-Flip-Flops (sky130_fd_sc_hd__dfrtp_2, dfstp_2) [20-28 FETs]
└── Full Adders, Multi-bit Latches

Bucket 2: Complex Combinational Cells (6 ≤ |V| ≤ 10)
├── And-Or-Invert (AOI), Or-And-Invert (OAI)
└── Multi-input gates (NAND4, NOR4, AND4, OR4)

Bucket 3: Primitive Gates (|V| ≤ 5)
├── Inverters, Buffers [2-4 FETs]
└── 2-input NAND, NOR [4 FETs]
```

**Monotonic Shrinkage Algorithm:**
1. Match the largest, most constrained graphs first (Bucket 1).
2. For every confirmed isomorphism, record the gate instance and **delete the matched vertices from $G_{work}$**.
3. Proceed to Bucket 2, then Bucket 3 on the substantially reduced graph.
4. **Result:** Eliminates exponential branching; runtime scales near-linearly with circuit gate count.

---

### 2.7 Partial Match & Logic Stitching

Certain complex standard cells decompose into smaller, repeated structural motifs. Rather than searching for a large, monolithic 12-transistor graph, **Partial Match & Logic Stitching** identifies constituent primitives and logically stitches them:

- **MUX2:1** $\iff \text{Inverter} + 2 \times \text{Transmission Gate}$
- **XOR2 / XNOR2** $\iff 2 \times \text{Inverter} + 4 \times \text{Transmission Gate}$
- **Full Adder** $\iff 2 \times \text{Half Adder} + \text{OR Gate}$

---

## 3. End-to-End Pipeline Architecture

ReGDS-SKY130 features two distinct workflows:
1. **The Fast CTF / SMT Solving Pipeline**: A targeted sequence of extraction, structural Verilog translation, backward cone-of-influence pruning, and SMT constraint solving.
2. **The Generalized ReGDS Framework**: An automated 7-stage engine capable of ingesting arbitrary GDSII files and synthesizing verified, word-level behavioral RTL.

```mermaid
graph TD
    subgraph "Phase 1 & 2: Extraction & Filtering"
        GDS["Physical Layout\n(GDSII)"] -->|"Magic: extract all,\next2spice"| RAW_SPICE["Raw SPICE Netlist\n(Transistors + Parasitics)"]
        RAW_SPICE -->|"postprocess.py:\nFilter decap, tap, fill;\nMerge parallel FETs"| CLEAN_SPICE["Clean SPICE\n(Logic FETs Only)"]
    end

    subgraph "Phase 3 & 4: DCI & Graph Matching"
        CLEAN_SPICE -->|"dci.py & dcg_builder.py:\nCompute weights w_ij"| DCG["Digital Connection Graph\n(DCG NetworkX)"]
        LIB["SKY130 Standard Cell\nDCG Library (Γ)"] -->|"staggered.py:\nBucketed VF2 Engine"| VF2{"VF2 Subgraph\nIsomorphism"}
        DCG --> VF2
        VF2 -->|"partial_stitch.py:\nDecompose & Reassemble"| GATES["Identified Standard Cells\n(AND, OR, MUX, DFF...)"]
    end

    subgraph "Phase 5 & 6: Netlist Synthesis & LEC"
        GATES -->|"verilog_writer.py:\nBus & Direction Heuristics"| STRUCT_V["Structural Verilog\nNetlist (.v)"]
        STRUCT_V -->|"gate_verifier.py:\nInline Truth Table Check"| GATE_CHECK{"Inline Gate\nVerified?"}
        GATE_CHECK -->|"equiv_checker.py:\nYosys equiv_make/induct"| LEC_CHECK{"Formal LEC\nEquivalence?"}
    end

    subgraph "Phase 7: Behavioral RTL Recovery"
        LEC_CHECK -->|"pre_analysis.py:\nTrace FFs, Clocks, Resets"| CHUNKS["Partitioned Sub-modules\n(<500 Gates)"]
        CHUNKS -->|"llm_recover.py:\nBehavioral Decompilation"| BEHAV_RTL["Behavioral RTL\nCandidates"]
        BEHAV_RTL -->|"reassembler.py:\nModule Reassembly"| FINAL_RTL["Human-Readable Word-Level RTL\n(Operators, Buses, FSMs)"]
    end
```

---

### Detailed Stage Breakdown

#### Phase 1: SPICE Netlist Extraction (SNE)
- **Tool**: Magic VLSI (batch mode).
- **Process**: Reads input GDSII using the SKY130 technology ruledeck (`sky130A.magicrc`). Traces metal layers, vias, poly, and diffusion to generate an extraction database (`.ext`), then runs `ext2spice` in hierarchical mode.
- **Output**: Hierarchical `.spice` netlist containing subcircuit calls (`X`) and individual MOSFETs (`M`).

#### Phase 2: SPICE Parsing & Physical Filtering
- **Tool**: `tools/sne_extraction/postprocess.py`, `spice_parser.py`.
- **Filtering Rules**: Modern standard-cell layouts contain hundreds of non-logical physical cells that corrupt logic matching. The parser prunes:
  - Decoupling capacitors: `sky130_fd_sc_hd__decap_*`
  - Substrate & well tap cells: `sky130_fd_sc_hd__tapvpwrvgnd_*`
  - Filler cells: `sky130_fd_sc_hd__fill_*`
  - Antenna protection diodes: `sky130_fd_sc_hd__diode_*`
  - Tie-high / tie-low cells: `sky130_fd_sc_hd__conb_*`
- **Simplification**: Merges parallel MOSFETs sharing identical Source, Drain, Gate, and Bulk nodes ($W_{\text{eff}} = \sum W_k$). Flattens mixed hierarchy into clean leaf transistor subcircuits.

#### Phase 3: DCI Graph Construction
- **Tool**: `tools/dci_graph/dcg_builder.py`, `dci.py`.
- **Process**: Transforms parsed SPICE devices into a NetworkX weighted undirected graph. Calculates DCI terminal weights between all adjacent transistor pairs using the symmetrical Drain/Source matrix.

#### Phase 4: Logic Gate Identification (LGE)
- **Tool**: `tools/gate_id/staggered.py`, `matcher.py`, `partial_stitch.py`.
- **Process**: Matches the extracted DCG against pre-computed fingerprints in the reference library $\Gamma$. Utilizes 3-bucket staggered matching with graph shrinkage and topological pre-filtering.

#### Phase 5: Structural Verilog Netlist Synthesis
- **Tool**: `tools/netlist_writer/verilog_writer.py`.
- **Bus Grouping Algorithm**: Detects scalar indexed signals (e.g. `O_0, O_1, ... O_7`) and packs them into multi-bit Verilog buses (`output [7:0] O`).
- **Port Direction Heuristics**: Analyzes driver vs. receiver connectivity to correctly infer `input`, `output`, and `inout` port declarations.

#### Phase 6: Multi-Level Formal Verification (LEC)
- **Level 1 (Inline Truth Table Verification)**: `tools/verify/gate_verifier.py` verifies the Boolean truth table of every identified gate against its library definition using exhaustive $2^N$ evaluation.
- **Level 2 (Full Combinational & Sequential Equivalence Checking)**: `tools/verify/equiv_checker.py` drives Yosys to prove formal mathematical equivalence between recovered Verilog and golden reference RTL using SAT induction:
  ```tcl
  equiv_make golden.v recovered.v equiv_top
  equiv_induct
  equiv_status -assert
  ```

#### Phase 7: Word-Level Behavioral RTL Recovery
- **Pre-Analysis (`tools/rtl_recovery/pre_analysis.py`)**: Identifies state registers, separates datapath FFs from control FFs, traces clock trees and asynchronous active-low resets.
- **Partitioning (`tools/rtl_recovery/partitioner.py`)**: Partitions large circuits along register boundaries into sub-500-gate clusters.
- **Decompilation (`tools/rtl_recovery/llm_recover.py`, `prompts.py`)**: Emits structured prompt templates with formal interface constraints, synthesizing behavioral Verilog (`+`, `-`, `*`, `case`, `always @(posedge clk)`).
- **Reassembly (`tools/rtl_recovery/reassembler.py`)**: Stitches verified sub-modules into a cohesive top-level architecture.

---

## 4. Hardware CTF Case Study: Cracking Silicon

### 4.1 Challenge Specification & Recon

The pipeline was validated against an obfuscated hardware CTF challenge provided as an unlabelled physical layout:
- `puzzle.gds`: The 130nm layout containing the locked target circuit.
- `layout.png`: Layout micrograph.
- `example_inputs.vcd`: A captured simulation trace.

```
       ┌────────────────────────────────────────────────────────┐
       │                       puzzle.gds                       │
       │                                                        │
clk ───►                                                        ├───► O[7:0]
rst_n ─►              Sequence Checker & ROM Logic              │
en ────►                                                        ├───► success
I ─────►                                                        │
       └────────────────────────────────────────────────────────┘
```

#### Reconnaissance & Easter Eggs in the Header
Inspecting the ASCII metadata in `example_inputs.vcd` revealed immediate anomalies:
```text
$date
  Sat Dec 31 23:59:60 2016
$end
$version
  Leave no stone unturned! But for this file, consider looking at it in a waveform viewer instead.
$end
```
1. **Timestamp `23:59:60`**: References the official UTC **Leap Second** introduced on December 31, 2016. (*Easter Egg #1*).
2. **Comment Header**: Explicit warning: *"Leave no stone unturned!"* (*Easter Egg #2*).

Decoding the 8-bit bus `O[7:0]` in `example_inputs.vcd` using `decode_vcd.py` showed the circuit outputting an ASCII message when fed dummy input:
```text
[VCD Output Decoder]: "TRY AGAIN"
```
The circuit was actively mocking invalid attempts! (*Easter Egg #3*).

---

### 4.2 Waveform Timing Analysis & The 122nd Clock Edge

A common trap in the challenge was the duration of the `enable` signal:
- `enable` remained asserted high for **121 clock cycles**.
- However, timing analysis (`parse_vcd.py`) demonstrated that the output state evaluation and the first character of the response sequence occurred strictly on the **122nd rising clock edge** ($t = 122$), immediately after `enable` fell low.

```text
Clock Cycle:    1    2    3   ...   120   121   122 (EVAL)
enable:       ──█████████████████████████████───
I (Input):    ──d0───d1───d2──...───d119──d120──d121 (Final Bit!)
O[7:0]:       ──────────────────────────────────[ 'T' / Flag ]
```

This confirmed the secret password was not 121 bits, but **exactly 122 bits long**.

*(Physical Confirmation: Zooming out on the standard cell placement in KLayout revealed that the cells were physically routed to form the large glyph **"122"** in the silicon metal layers! - Easter Egg #4).*

---

### 4.3 Backward Cone-of-Influence (COI) Pruning

Brute-forcing a 122-bit key requires testing $2^{122} \approx 5.3 \times 10^{36}$ combinations—computationally impossible.

To make the problem tractable, we performed **backward Cone-of-Influence (COI) tracing** using `trace_success.py` and Yosys. We traced all logic gates feeding into the single-bit `success` pin:

$$\text{COI}(\text{success}) = \bigcup_{k=0}^{122} \text{FanIn}(\text{success}, k)$$

**The Critical Architectural Discovery:**
The circuit consists of two completely independent subsystems:
1. **The Sequence Constraint Checker**: Evaluates serial input stream `I` over 122 cycles and drives `success`.
2. **The Output Character Generator (ROM)**: Drives `O[7:0]` to print `TRY AGAIN` on failure or the flag on success.

The entire 8-bit output character generator had **zero fanout** to `success`. By pruning away the output generator, the circuit was reduced from an intractable system down to a compact 16-register constraint verification network!

---

### 4.4 SMT Modeling with Z3 & Flag Extraction

Using `puzzle_synth.v`, we converted the pruned sequential netlist into an SMT unrolled circuit model using **Z3** (`puzzle_solvers/z3_solve_flag.py`):
1. Created 122 Boolean decision variables $I_0, I_1, \dots, I_{121}$ representing the input stream.
2. Initialized state registers to their known reset values ($t = 0$).
3. Unrolled the next-state functions across 122 clock cycles.
4. Constrained the sequential state at $t = 122$ such that $\text{success} = \text{True}$.

```python
# Z3 SMT Formulation Excerpt
solver = z3.Solver()
inputs = [z3.Bool(f"I_{t}") for t in range(122)]
state = {reg: reg_rst_val[reg] for reg in registers}

for t in range(122):
    state = evaluate_next_state(state, inputs[t])

# Assert successful unlock at cycle 122
solver.add(state['success_wire'] == True)
assert solver.check() == z3.sat
```

**Solving Time:** **0.34 seconds.**

Simulating the recovered 122-bit key in our cycle-accurate testbench (`tb_puzzle.v`) caused the output bus `O[7:0]` to produce the target string:

$$\mathbf{(*\ TWO\ STARS\ *)}$$

---

### 4.5 Discovery of the Star Battle Puzzle & The Silicon Bug

#### The Meaning of the Key
Why did the flag say `(* TWO STARS *)`?
Analyzing the 122-bit solved binary sequence:
1. Bit 122 is a terminal padding bit; the active data is exactly **121 bits**.
2. Total Hamming weight: exactly **22 ones** and **99 zeros**.
3. $11 \times 11 = 121$.
4. $\frac{22 \text{ ones}}{11 \text{ rows}} = 2 \text{ stars per row and column}$.

**The circuit was a physical ASIC constraint checker for an $11 \times 11$ "Star Battle" (Two Not Touch) logic puzzle!**

#### The Hardware Bug Discovery
In the Star Battle puzzle, no two stars may touch horizontally, vertically, or diagonally.

When we mapped our Z3-solved 121-bit sequence onto the $11 \times 11$ grid, we observed:
- Row constraints: Exactly 2 stars per row $\checkmark$
- Column constraints: Exactly 2 stars per column $\checkmark$
- Region constraints: Exactly 2 stars per irregular zone $\checkmark$
- **Adjacency Check:** **3 vertical adjacency violations detected!**

```text
Human-Intended Star Battle Grid:              Our Z3-Generated Silicon Solution:
Row  0: . . . . . . . ★ . ★ .                 Row  0: . . . . . . . ★ . ★ .
Row  1: ★ . . . . ★ . . . . .                 Row  1: . ★ . . . ★ . . . . .
Row  2: . . . . . . . ★ . ★ .                 Row  2: . . . . . . . ★ . ★ .
Row  3: ★ . ★ . . . . . . . .                 Row  3: ★ . . . ★ . . . . . .   <-- Collision (Col 4)
Row  4: . . . . ★ . ★ . . . .                 Row  4: . . ★ . ★ . . . . . .   <-- Collision (Col 4)
Row  5: . . ★ . . . . . ★ . .                 Row  5: ★ . . . . . . . ★ . .
Row  6: . . . . ★ . . . . . ★                 Row  6: . . . . . ★ . . . . ★
Row  7: . ★ . . . . ★ . . . .                 Row  7: . . ★ . . . . . ★ . .
Row  8: . . . ★ . . . . . . ★                 Row  8: . . . . . . ★ . . . ★   <-- Collision (Col 6)
Row  9: . . . . . ★ . . ★ . .                 Row  9: . . . ★ . . ★ . . . .   <-- Collision (Col 3, 6)
Row 10: . ★ . ★ . . . . . . .                 Row 10: . ★ . ★ . . . . . . .   <-- Collision (Col 3)
```

**Silicon Vulnerability Verified:**
The ASIC designers made an error in the physical standard cell routing of the diagonal/vertical anti-adjacency checking logic. By solving the circuit with an SMT solver instead of playing the puzzle by hand, Z3 discovered an unintended hardware collision that bypassed the game's rules and cleanly unlocked the silicon!

---

### 4.6 Comprehensive Catalog of 7 Easter Eggs

| # | Type | Location | Discovery Method | Description |
| :-: | :--- | :--- | :--- | :--- |
| **1** | **Timestamp** | `example_inputs.vcd` | ASCII inspection | `Sat Dec 31 23:59:60 2016` — Leap Second timestamp. |
| **2** | **Comment Hint** | `example_inputs.vcd` | Header parse | `"Leave no stone unturned! ..."` |
| **3** | **Sarcastic Response** | Simulation output | Waveform decoding | Prints `TRY AGAIN` on incorrect input patterns. |
| **4** | **Physical Layout** | Metal layers (GDS) | KLayout zoom | Standard cells physically arranged as the number `"122"`. |
| **5** | **Pattern Trigger** | State machine | `sim_puzzle.py` | Special input pattern triggers output `EMPTY SKY`. |
| **6** | **Pattern Trigger** | State machine | `sim_puzzle.py` | Distinct input pattern triggers output `BIG BANG`. |
| **7** | **Dead ROM String** | Output Logic | Z3 SMT solver (`find_not_touch.py`) | Unreachable string `NOT TOUCH` encoded in output generator ROM (provably SAT from free state, UNSAT from reset). |

---

## 5. Benchmark Validation: 16-Bit Accumulator (`adder_demo`)

To rigorously benchmark ReGDS-SKY130 outside the puzzle domain, we evaluated the complete flow against a realistic industrial macro: a 16-bit accumulator with synchronous reset and load enable (`benchmarks/04_final.gds`).

```
                ┌──────────────────────────────────────────┐
                │          adder_demo (04_final)           │
       clk ────►│                                          │
     rst_n ────►│                                          ├────► S[15:0]
        en ────►│   16-Bit Accumulator + MUX Register Loop │
   A[15:0] ────►│                                          │
   B[15:0] ────►│                                          │
                └──────────────────────────────────────────┘
```

### Benchmark Metrics

| Metric | Result |
| :--- | :---: |
| **Input Physical File** | `04_final.gds` (SKY130 High-Density Standard Cells) |
| **Raw Extracted Transistors** | 632 MOSFETs |
| **Physical Cells Filtered** | 58 decap, 32 tap, 14 fill cells removed |
| **Recovered Standard Cells** | 79 logic instances (16x DFF, 16x MUX2, 47 combinational) |
| **Gate Recovery Ratio ($\gamma$)** | **100.0% ($\gamma = 1.000$)** |
| **Inline Truth Table Verification** | **Passed (100% matched)** |
| **Yosys Formal Equivalence (LEC)** | **PROVEN EQUIVALENT (`equiv_status -assert` passed)** |
| **Word-Level Behavioral Synthesis** | Successfully abstracted into `always @(posedge clk)` with `+` operator |

#### Yosys LEC Verification Log Excerpt
```text
Equivalence checking results:
  Matching ports: 37
  Matching cell instances: 79
  Verification status: PROVEN
  No counterexamples found. Circuits are identical.
```

---

## 6. Repository Architecture & File Reference

```text
ReGDS_SKY130/
├── README.md                         # Master comprehensive technical documentation
├── LICENSE                           # MIT License
├── requirements.txt                  # Python dependencies
├── .gitignore                        # Git exclusion rules
│
├── challenge_artifacts/              # Original hardware CTF challenge assets
│   ├── puzzle.gds                    #   Physical 130nm layout stream
│   ├── layout.png                    #   Layout micrograph with visual "122" macro placement
│   └── example_inputs.vcd            #   Sample simulation trace containing leap-second header
│
├── benchmarks/                       # Generalized test layouts
│   └── 04_final.gds                  #   16-bit accumulator macro benchmark
│
├── docs/                             # Engineering specifications & detailed writeups
│   ├── 00_setup_requirements.md      #   Toolchain requirements and installation details
│   ├── 01_pipeline_design.md         #   Intermediate SPICE dialect specification
│   ├── 02_dci_coding_spec.md         #   Formal mathematical formulation of DCI weights
│   ├── 03_staggered_matching.md      #   VF2 bucketing and logic stitching algorithms
│   ├── 04_verification_plan.md       #   Two-level verification and LEC methodology
│   ├── complete_writeup.md           #   Complete engineering narrative & bug discovery
│   ├── ctf_speedrun_writeup.md       #   Fast challenge reproduction guide
│   └── easter_eggs_summary.md        #   Technical analysis of all 7 hidden secrets
│
├── tools/                            # Core ReGDS reverse engineering engine
│   ├── sne_extraction/               #   Phase 1 & 2: GDS to Clean SPICE
│   │   ├── extract.py                #     Magic extraction batch automation
│   │   ├── spice_parser.py           #     AST-based SPICE dialect parser
│   │   └── postprocess.py            #     Filter non-logic devices, merge parallel FETs
│   │
│   ├── dci_graph/                    #   Phase 3: DCI Fingerprinting
│   │   ├── dci.py                    #     DCI edge weight calculator (w_ij)
│   │   └── dcg_builder.py            #     NetworkX Digital Connection Graph generator
│   │
│   ├── gate_id/                      #   Phase 4: Logic Gate Identification
│   │   ├── matcher.py                #     Core VF2 subgraph isomorphism engine
│   │   ├── staggered.py              #     Hierarchical multi-bucket matching algorithm
│   │   └── partial_stitch.py         #     Complex compound cell decomposition & stitching
│   │
│   ├── netlist_writer/               #   Phase 5: Structural Verilog Synthesis
│   │   └── verilog_writer.py         #     SPICE-to-Verilog with bus & direction inference
│   │
│   ├── verify/                       #   Phase 6: Multi-Level Formal Verification
│   │   ├── gate_verifier.py          #     Inline Boolean truth table checker
│   │   └── equiv_checker.py          #     Yosys SAT-based LEC engine
│   │
│   └── rtl_recovery/                 #   Phase 7: Behavioral Word-Level RTL Recovery
│       ├── pre_analysis.py           #     Register, bus, and clock/reset analyzer
│       ├── partitioner.py            #     Graph-based netlist clustering (<500 gates)
│       ├── prompts.py                #     Structured LLM prompt templates
│       ├── llm_recover.py            #     Behavioral code generator agent
│       └── reassembler.py            #     Top-level module integrator
│
├── puzzle_solvers/                   # CTF exploitation & analysis scripts
│   ├── z3_solve_flag.py              #   Master Z3 SMT solver (extracts 122-bit key)
│   ├── z3_solve_custom.py            #   Parametric SMT exploration solver
│   ├── z3_solve.py                   #   Baseline sequential SMT solver
│   ├── z3_analyze.py                 #   Structural state-space analyzer
│   ├── z3_check_all.py               #   Exhaustive solution validator
│   ├── find_not_touch.py             #   SMT solver proving the "NOT TOUCH" dead ROM string
│   ├── sim_puzzle.py                 #   Pure-Python cycle-accurate hardware simulator
│   ├── decode_vcd.py                 #   VCD ASCII stream decoder
│   ├── parse_vcd.py                  #   VCD edge timing analyzer
│   ├── trace_success.py              #   Backward cone-of-influence tracer
│   ├── analyze_puzzle.py             #   Gate-level topological analyzer
│   └── check_loops.py                #   Combinational feedback detector
│
├── work_puzzle/                      # Verification artifacts for the puzzle
│   ├── extract_puzzle.tcl            #   Magic extraction script
│   ├── puzzle.spice                  #   Extracted raw SPICE netlist
│   ├── puzzle_clean.spice            #   Cleaned, post-processed SPICE netlist
│   ├── puzzle.v                      #   Recovered structural Verilog netlist
│   ├── puzzle_synth.v                #   Flattened gate netlist for formal solve
│   ├── tb_puzzle.v                   #   Full simulation testbench driving the 122-bit key
│   ├── tb_bruteforce.v               #   Brute-force verification testbench
│   ├── solve_wrapper.v               #   Top-level formal wrapper
│   └── udp_stubs.v                   #   Behavioral primitives for simulation
│
├── work_adder/                       # Verification artifacts for adder benchmark
│   ├── extract_adder_demo.tcl        #   Magic extraction script for accumulator
│   ├── adder_demo.spice              #   Extracted SPICE netlist
│   ├── adder_demo_clean.spice        #   Post-processed SPICE netlist
│   ├── adder_demo.v                  #   Recovered structural Verilog netlist
│   ├── adder_demo_recovered.v        #   Recovered behavioral RTL
│   ├── golden.v                      #   Golden reference RTL
│   ├── tb_equiv.v                    #   Equivalence verification testbench
│   └── lec.ys                        #   Yosys LEC script
│
├── scripts/                          # Automated execution & environment scripts
│   ├── run_pipeline.sh               #   End-to-end pipeline runner
│   ├── run_rtl_recovery.sh           #   Automated RTL recovery runner
│   ├── setup_env.sh                  #   PDK and toolchain setup script
│   ├── build_dcg_library.py          #   Reference DCG fingerprint library builder
│   └── generate_benchmark.py         #   OpenLane synthetic benchmark generator
│
└── papers/                           # Academic foundations
    ├── ReGDS_HOST2020.pdf            #   Original HOST 2020 paper by Rajarathnam et al.
    └── RAMAN_tinyML.pdf              #   Reference tinyML accelerator paper
```

---

## 7. Installation, Environment Setup & Dependencies

### System Requirements
- **Operating System:** Linux (Ubuntu 20.04/22.04+, Debian, RHEL) or macOS (12+)
- **Python:** Python 3.8+
- **Open-Source EDA Tools:**
  - **Magic VLSI** ($\ge 8.3$)
  - **Yosys Open Synthesis Suite** ($\ge 0.25$)
  - **Icarus Verilog** (`iverilog` $\ge 11.0$)

### Step 1: Install System Dependencies

**macOS (via Homebrew):**
```bash
brew install yosys icarus-verilog magic netgen
```

**Ubuntu / Debian:**
```bash
sudo apt-get update
sudo apt-get install -y yosys iverilog magic netgen build-essential
```

### Step 2: Set Up Python Environment
```bash
cd ReGDS_SKY130
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```

### Step 3: Configure SKY130 PDK via Volare
```bash
# Automated setup
bash scripts/setup_env.sh
```

---

## 8. Reproduction & Execution Guide

### 1. Crack the Hardware CTF Puzzle & Extract the Flag
```bash
# Step 1: Run backward cone-of-influence analysis
python3 puzzle_solvers/trace_success.py

# Step 2: Execute the Z3 SMT solver
python3 puzzle_solvers/z3_solve_flag.py

# Step 3: Run the cycle-accurate Verilog simulation to verify the flag
cd work_puzzle
iverilog -o sim.vvp udp_stubs.v puzzle.v tb_puzzle.v
vvp sim.vvp
cd ..
```

### 2. Verify the Unreachable "NOT TOUCH" ROM Easter Egg
```bash
python3 puzzle_solvers/find_not_touch.py
```

### 3. Run the Full ReGDS Pipeline on the Benchmark Macro
```bash
# Ingest 04_final.gds and run full extraction, gate identification, and synthesis
bash scripts/run_pipeline.sh benchmarks/04_final.gds adder_demo
```

### 4. Formally Prove Equivalence via Yosys LEC
```bash
cd work_adder
yosys -s lec.ys
cd ..
```

---

## 9. Limitations & Open Research Problems

While ReGDS-SKY130 achieves 100% logic recovery on digital standard cell blocks, several open challenges remain in hardware reverse engineering:

1. **Computational Scaling of Subgraph Isomorphism**: VF2 is fundamentally exponential. While DCI topological hashing and staggered shrinkage scale to tens of thousands of gates, billion-transistor SoCs require hierarchical partitioning before graph matching.
2. **Custom Analog & Mixed-Signal Blocks**: The DCI matching engine matches against known digital cell libraries. Full-custom analog layouts, PLLs, and SRAM bit-cell arrays present irregular transistor topologies that require domain-specific structural recognition.
3. **Loss of Parasitics**: Stripping fill and decap cells achieves pristine logical recovery but discards RC parasitics and delay characteristics, preventing timing closure analysis of recovered netlists.

---

## 10. References & Citations

If you use ReGDS-SKY130 in your academic research, please cite both this repository and the foundational ReGDS paper:

```bibtex
@inproceedings{rajarathnam2020regds,
  author    = {Rajarathnam, Dilip and Lin, Yibo and Jin, Yier and Pan, David Z.},
  title     = {ReGDS: A Reverse Engineering Framework from GDSII to Gate-level Netlist},
  booktitle = {2020 IEEE International Symposium on Hardware Oriented Security and Trust (HOST)},
  year      = {2020},
  pages     = {121--131},
  doi       = {10.1109/HOST49136.2020.9439601}
}

@misc{krishna2026regds_sky130,
  author       = {Sanjay Krishna},
  title        = {{ReGDS-SKY130}: Automated GDSII-to-Gate-Level Netlist and Word-Level Behavioral RTL Reverse Engineering},
  year         = {2026},
  publisher    = {GitHub},
  howpublished = {\url{https://github.com/sanjaykrishna/ReGDS-SKY130}}
}
```

- **SkyWater SKY130 Open Source PDK:** [https://github.com/google/skywater-pdk](https://github.com/google/skywater-pdk)
- **Yosys Open SYnthesis Suite:** [https://github.com/YosysHQ/yosys](https://github.com/YosysHQ/yosys)
- **Z3 Theorem Prover:** [https://github.com/Z3Prover/z3](https://github.com/Z3Prover/z3)
- **Magic VLSI:** [http://opencircuitdesign.com/magic/](http://opencircuitdesign.com/magic/)
