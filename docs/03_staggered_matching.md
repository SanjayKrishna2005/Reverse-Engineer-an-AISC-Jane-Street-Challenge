# Staggered Matching Strategy

This document describes the two primary techniques used to accelerate the VF2 Subgraph Isomorphism algorithm during Logic Gate Extraction (LGE).

## 1. Partial Match & Logic Stitch

Complex gates are decomposed into simpler primitives. Once the primitives are matched, they are logically "stitched" back into the complex gate.
This reduces the size of the graph VF2 has to match in a single operation, reducing the factorial complexity.

### Stitching Rules Catalog
1. **MUX (2:1)** = 1x Inverter + 2x Transmission Gate
2. **XOR/XNOR** = 2x Inverter + 4x Transmission Gate (or equivalent NAND/NOR combinations based on standard cell design)
3. **Adders (Half/Full)** = Identified from combinations of XOR and majority-like structures.

## 2. Staggered Matching

The library of Digital Connection Graphs (Γ) is partitioned into $k$ buckets. 

### Bucketing Strategy
- **Bucket 1**: Large, complex graphs (e.g. FFs, Adders). Node count > 10.
- **Bucket 2**: Medium graphs (e.g. AOI/OAI, multi-input NAND/NOR). 5 < Node count <= 10.
- **Bucket 3**: Small graphs (e.g. INV, 2-input NAND/NOR). Node count <= 5.

### Algorithm
For each subcircuit DCG $G_{work}$:
1. For each bucket (starting from Bucket 1 down to Bucket $k$):
   2. For each gate $H \in$ bucket:
      3. Find subgraph isomorphisms of $H$ in $G_{work}$.
      4. For each match, record it and **remove** the matched nodes from $G_{work}$.
5. Reconstruct the graph $G_{work}$ (automatically handled by node removal).

*This approach ensures that $G_{work}$ shrinks monotonically, making subsequent matches exponentially faster.*
