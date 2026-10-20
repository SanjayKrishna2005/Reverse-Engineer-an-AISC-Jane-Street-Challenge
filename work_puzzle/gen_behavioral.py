cells = {
    "o21a_2": ("X", "A1, A2, B1", "(A1 | A2) & B1"),
    "o21ai_2": ("Y", "A1, A2, B1", "~((A1 | A2) & B1)"),
    "o21ba_2": ("X", "A1, A2_N, B1", "(A1 | (~A2_N)) & B1"),
    "o21bai_2": ("Y", "A1, A2_N, B1", "~((A1 | (~A2_N)) & B1)"),
    "o221a_2": ("X", "A1, A2, B1, B2, C1", "(A1 | A2) & (B1 | B2) & C1"),
    "o22a_2": ("X", "A1, A2, B1, B2", "(A1 | A2) & (B1 | B2)"),
    "o22ai_2": ("Y", "A1, A2, B1, B2", "~((A1 | A2) & (B1 | B2))"),
    "o2bb2a_2": ("X", "A1_N, A2_N, B1, B2", "((~A1_N) | (~A2_N)) & (B1 | B2)"),
    "o311a_2": ("X", "A1, A2, A3, B1, C1", "(A1 | A2 | A3) & B1 & C1"),
    "o31a_2": ("X", "A1, A2, A3, B1", "(A1 | A2 | A3) & B1"),
    "o31ai_2": ("Y", "A1, A2, A3, B1", "~((A1 | A2 | A3) & B1)"),
    "o32a_2": ("X", "A1, A2, A3, B1, B2", "(A1 | A2 | A3) & (B1 | B2)"),
    "o32ai_2": ("Y", "A1, A2, A3, B1, B2", "~((A1 | A2 | A3) & (B1 | B2))"),
    "or2_2": ("X", "A, B", "A | B"),
    "or3_2": ("X", "A, B, C", "A | B | C"),
    "or3b_2": ("X", "A, B, C_N", "A | B | (~C_N)"),
    "or4_2": ("X", "A, B, C, D", "A | B | C | D"),
    "or4b_2": ("X", "A, B, C, D_N", "A | B | C | (~D_N)"),
    "or4bb_2": ("X", "A, B, C_N, D_N", "A | B | (~C_N) | (~D_N)"),
    "xnor2_2": ("Y", "A, B", "~(A ^ B)"),
    "xor2_2": ("X", "A, B", "A ^ B"),
    "a2111oi_2": ("Y", "A1, A2, B1, C1, D1", "~((A1 & A2) | B1 | C1 | D1)")
}

with open("missing_cells_behavioral.v", "w") as f:
    for name, (out, ins, func) in cells.items():
        f.write(f"module sky130_fd_sc_hd__{name} ({out}, {ins}, VGND, VNB, VPB, VPWR);\n")
        f.write(f"  output {out};\n")
        for i in ins.split(", "):
            f.write(f"  input {i};\n")
        f.write(f"  input VGND, VNB, VPB, VPWR;\n")
        f.write(f"  assign {out} = {func};\n")
        f.write(f"endmodule\n\n")
