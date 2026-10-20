# DCI Coding Specification

This document details the Digital Connectivity Index (DCI) coding scheme and how the Digital Connection Graph (DCG) is constructed.

## Edge Weight Calculation

The DCI scheme aims to represent the connectivity between two transistors in a way that is invariant to Drain/Source terminal ordering (which is often arbitrary in layout extraction without explicit power net analysis).

The weight of an edge between two transistors $M_i$ and $M_j$ is given by:

$$ w_{i,j} = \alpha_{i,j} \left( \sum_{M_i, M_j} DCI_{i,j} + \beta_i \beta_j \right) $$

- $\alpha_{i,j} \in \{0, 1\}$: Existence of connection between $M_i$ and $M_j$
- $DCI_{i,j}$: Terminal connectivity index between the connected terminals
- $\beta_i, \beta_j \in \{0, 1\}$: Existence of Drain/Source to Bulk terminal tie-off.

### DCI Terminal Weights

| Terminals of $M_i$ | Terminals of $M_j$ (D/S) | Terminals of $M_j$ (G) | Terminals of $M_j$ (D/S-B) |
| :--- | :---: | :---: | :---: |
| **D/S** | 8 | 2 | - |
| **G** | 2 | 32 | - |
| **D/S-B** | - | - | 1 |

*Note: D/S indicates Drain or Source interchangeably.*

## SKY130 Handling

For the SKY130 PDK, standard cells tie the N-well/P-sub to power/ground through dedicated tap cells, not typically inline within the transistor device extraction.

### $\beta$ Term Strategy
We implement a fallback strategy for the $\beta$ term:
1. By default, $\beta = 0$. The DCI weights are sufficiently distinct to ensure bijectivity (a unique graph mapping per logic gate) even without the bulk tie-off term.
2. If further refinement is needed, spatial heuristics based on proximity to tap cells (from the Magic `.ext` file) will determine $\beta = 1$.

## DCG Construction
- **Vertices ($V_D$)**: Represent transistors. Attributes include transistor type (NMOS, PMOS) and ID.
- **Edges ($E_D$)**: Represent connectivity. Weight is $w_{i,j}$.

This DCG formulation is then used for graph isomorphism (pattern matching) to identify logic gates.
