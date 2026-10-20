import re

missing = [
    "o21a_2", "o21ai_2", "o21ba_2", "o21bai_2", "o221a_2", "o22a_2", "o22ai_2",
    "o2bb2a_2", "o311a_2", "o31a_2", "o31ai_2", "o32a_2", "o32ai_2", "or2_2",
    "or3_2", "or3b_2", "or4_2", "or4b_2", "or4bb_2", "xnor2_2", "xor2_2", "a2111oi_2"
]
missing_full = ["sky130_fd_sc_hd__" + m for m in missing]

with open("sky130_clean.v", "r") as f:
    content = f.read()

funcs = {
    "o21a_2": "(A1 | A2) & B1",
    "o21ai_2": "~((A1 | A2) & B1)",
    "o21ba_2": "(A1 | (~A2)) & (~B1_N)", # Wait, I don't know the exact logic. Let's just use techmap.
}
# Actually I don't know the exact logic of B1_N vs A2_N...
