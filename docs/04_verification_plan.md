# Verification Plan

## 1. Automated Verification Strategy

### Level 1: Inline Gate Verification (Incremental)
- **Tool**: `tools/verify/gate_verifier.py` (Inline boolean checker, placeholder)
- **When**: During Phase 3 (Logic Gate Identification)
- **How**: For each matched gate subgraph (nodes < 20), extract the structural boolean function by enumerating all $2^N$ input combinations across the extracted transistor netlist, and compare it to the truth table of the matched library gate.
- **Why**: Catches isomorphic but functionally incorrect matches (e.g. if beta assumptions fail) instantly, preventing error propagation.

### Level 2: End-to-End Equivalence Checking
- **Tool**: `tools/verify/equiv_checker.py` (Yosys wrapper)
- **When**: After Phase 4 (Netlist Generation) and during Phase 7 (RTL Recovery)
- **How**: Runs `yosys` `equiv_make` and `equiv_induct` between the golden reference Verilog and the reverse-engineered Verilog.
- **Why**: Proves that the complete, recovered design is functionally identical to the source.
- **Subunit Strategy**: If the design is large (>5k FFs), the design is partitioned at sub-module boundaries, and LEC is performed per sub-module to aid debugging.

## 2. Manual Verification Checkpoints
- **Phase 0 Exit**: Visually inspect `sky130_fd_sc_hd__nand2_1` SPICE to confirm Magic extraction behavior matches expectations.
- **Phase 7 Reviews**: Manually review LLM-generated RTL for human readability, ensuring descriptive naming and appropriate structural groupings (e.g., case statements for FSMs).
