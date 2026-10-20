udps = [
    "sky130_fd_sc_hd__udp_dff$NSR",
    "sky130_fd_sc_hd__udp_dff$NSR_pp$PG$N",
    "sky130_fd_sc_hd__udp_dff$P",
    "sky130_fd_sc_hd__udp_dff$PR",
    "sky130_fd_sc_hd__udp_dff$PR_pp$PG$N",
    "sky130_fd_sc_hd__udp_dff$PS",
    "sky130_fd_sc_hd__udp_dff$PS_pp$PG$N",
    "sky130_fd_sc_hd__udp_dff$P_pp$PG$N",
    "sky130_fd_sc_hd__udp_dlatch$P",
    "sky130_fd_sc_hd__udp_dlatch$PR",
    "sky130_fd_sc_hd__udp_dlatch$PR_pp$PG$N",
    "sky130_fd_sc_hd__udp_dlatch$P_pp$PG$N",
    "sky130_fd_sc_hd__udp_dlatch$lP",
    "sky130_fd_sc_hd__udp_dlatch$lP_pp$PG$N",
    "sky130_fd_sc_hd__udp_mux_2to1",
    "sky130_fd_sc_hd__udp_mux_2to1_N",
    "sky130_fd_sc_hd__udp_mux_4to2",
    "sky130_fd_sc_hd__udp_pwrgood$l_pp$PG",
    "sky130_fd_sc_hd__udp_pwrgood$l_pp$PG$S",
    "sky130_fd_sc_hd__udp_pwrgood_pp$G",
    "sky130_fd_sc_hd__udp_pwrgood_pp$P",
    "sky130_fd_sc_hd__udp_pwrgood_pp$PG"
]

out = ""
for u in udps:
    out += f"module {u} (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);\n"
    out += "    output Q, UDP_OUT, X;\n"
    out += "    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;\n"
    out += "    reg q_reg;\n"
    if "dff" in u:
        out += "    always @(posedge CLK or negedge RESET_B or negedge SET_B) begin\n"
        out += "        if (!RESET_B) q_reg <= 1'b0;\n"
        out += "        else if (!SET_B) q_reg <= 1'b1;\n"
        out += "        else q_reg <= D;\n"
        out += "    end\n"
        out += "    assign Q = q_reg;\n"
    elif "dlatch" in u:
        out += "    always @* begin\n"
        out += "        if (!RESET_B) q_reg <= 1'b0;\n"
        out += "        else if (CLK) q_reg <= D;\n"
        out += "    end\n"
        out += "    assign Q = q_reg;\n"
    elif "mux_2to1_N" in u:
        out += "    assign X = ~(S ? B : A);\n"
    elif "mux_2to1" in u:
        out += "    assign X = S ? B : A;\n"
    elif "mux_4to2" in u:
        out += "    assign X = S1 ? (S0 ? A3 : A2) : (S0 ? A1 : A0);\n"
    elif "pwrgood" in u:
        out += "    assign UDP_OUT = UDP_IN;\n"
    out += "endmodule\n\n"

with open("my_udps.v", "w") as f:
    f.write(out)
