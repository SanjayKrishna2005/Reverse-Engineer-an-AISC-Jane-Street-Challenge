# Pipeline Design & Intermediate SPICE Format

This document details the intermediate SPICE format that serves as the contract between Phase 1 (SNE) and Phase 2 (DCI/DCG).

## SNE Pipeline

1. **Extraction**: Magic `ext2spice` run on the target GDSII. Outputs hierarchical SPICE.
2. **Parsing**: `spice_parser.py` parses the `.spice` into an AST-like in-memory representation (`SpiceParser`).
3. **Filtering**: `postprocess.py` removes known non-logic cells (decap, tap, fill, diode, tie) based on regular expressions.
4. **Simplification**: 
    - Parallel identical transistors are merged to reduce problem size.
    - Mixed subcircuits (containing both devices and subcircuit instances) are flattened.

## Intermediate SPICE Dialect

The SPICE file exported by the post-processor to be consumed by the DCI/DCG stage adheres to a simplified structure:

### Subcircuits
```spice
.subckt <subckt_name> <port1> <port2> ...
...
.ends
```
Only leaf subcircuits (containing only devices, no instances) and top-level subcircuits are guaranteed to exist, as mixed subcircuits are flattened.

### MOSFET Devices
MOSFETs are represented with exactly 4 nodes + model:
```spice
M<id> <drain> <gate> <source> <bulk> <model> [W=...] [L=...]
```
- `drain` and `source`: Interpreted interchangeably by the DCI algorithm due to power network extraction limitations.
- `bulk`: Expected to be `VGND` / `VPWR` globally or a local node if Magic successfully extracted tie proximity.

### Passive Devices
```spice
C<id> <node1> <node2> <value>
R<id> <node1> <node2> <value>
```
Passives are retained in the AST but typically ignored by the logic gate extraction unless specifically modeled in the library DCGs.

## Data Flow
`GDSII` -> (Magic) -> `raw.spice` -> (postprocess.py) -> `clean.spice` -> (dcg_builder.py) -> `NetworkX Graphs`
