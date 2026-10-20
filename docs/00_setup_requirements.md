# Setup Requirements

This document outlines the environment setup required for the ReGDS-SKY130 reverse engineering pipeline.

## Prerequisites

- macOS or Linux
- Python 3.10+
- Homebrew (on macOS)

## Tools to be Installed

- **Magic VLSI**: Layout extraction tool (`magic`)
- **Netgen**: LVS tool (`netgen`)
- **Yosys**: Synthesis and equivalence checking (`yosys`)
- **OpenROAD / OpenLane2**: Place and Route
- **volare**: PDK manager for SKY130
- **SKY130 PDK**: specifically `sky130_fd_sc_hd`

## Manual Verification Checklist (Phase 0 Exit Criterion)

Before running the full pipeline, manually verify the extraction process on a single NAND2 standard cell.

1. Install all tools using `scripts/setup_env.sh`.
2. Locate a `sky130_fd_sc_hd__nand2_1` GDS file (e.g. from the volare PDK installation).
3. Run Magic in batch mode to extract the GDS:
   ```bash
   magic -dnull -noconsole
   % load sky130_fd_sc_hd__nand2_1
   % extract all
   % ext2spice
   ```
4. Examine the generated `.spice` file. Ensure that:
   - Device names (nfet/pfet) are recognizable.
   - Node connections (Drain, Gate, Source, Bulk) are present.
   - Note how the bulk (substrate/well) connections are handled (are they global nets like `VGND` / `VPWR`, or local?).
