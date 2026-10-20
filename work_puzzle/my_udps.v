module sky130_fd_sc_hd__udp_dff$NSR (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    always @(posedge CLK or negedge RESET_B or negedge SET_B) begin
        if (!RESET_B) q_reg <= 1'b0;
        else if (!SET_B) q_reg <= 1'b1;
        else q_reg <= D;
    end
    assign Q = q_reg;
endmodule

module sky130_fd_sc_hd__udp_dff$NSR_pp$PG$N (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    always @(posedge CLK or negedge RESET_B or negedge SET_B) begin
        if (!RESET_B) q_reg <= 1'b0;
        else if (!SET_B) q_reg <= 1'b1;
        else q_reg <= D;
    end
    assign Q = q_reg;
endmodule

module sky130_fd_sc_hd__udp_dff$P (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    always @(posedge CLK or negedge RESET_B or negedge SET_B) begin
        if (!RESET_B) q_reg <= 1'b0;
        else if (!SET_B) q_reg <= 1'b1;
        else q_reg <= D;
    end
    assign Q = q_reg;
endmodule

module sky130_fd_sc_hd__udp_dff$PR (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    always @(posedge CLK or negedge RESET_B or negedge SET_B) begin
        if (!RESET_B) q_reg <= 1'b0;
        else if (!SET_B) q_reg <= 1'b1;
        else q_reg <= D;
    end
    assign Q = q_reg;
endmodule

module sky130_fd_sc_hd__udp_dff$PR_pp$PG$N (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    always @(posedge CLK or negedge RESET_B or negedge SET_B) begin
        if (!RESET_B) q_reg <= 1'b0;
        else if (!SET_B) q_reg <= 1'b1;
        else q_reg <= D;
    end
    assign Q = q_reg;
endmodule

module sky130_fd_sc_hd__udp_dff$PS (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    always @(posedge CLK or negedge RESET_B or negedge SET_B) begin
        if (!RESET_B) q_reg <= 1'b0;
        else if (!SET_B) q_reg <= 1'b1;
        else q_reg <= D;
    end
    assign Q = q_reg;
endmodule

module sky130_fd_sc_hd__udp_dff$PS_pp$PG$N (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    always @(posedge CLK or negedge RESET_B or negedge SET_B) begin
        if (!RESET_B) q_reg <= 1'b0;
        else if (!SET_B) q_reg <= 1'b1;
        else q_reg <= D;
    end
    assign Q = q_reg;
endmodule

module sky130_fd_sc_hd__udp_dff$P_pp$PG$N (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    always @(posedge CLK or negedge RESET_B or negedge SET_B) begin
        if (!RESET_B) q_reg <= 1'b0;
        else if (!SET_B) q_reg <= 1'b1;
        else q_reg <= D;
    end
    assign Q = q_reg;
endmodule

module sky130_fd_sc_hd__udp_dlatch$P (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    always @* begin
        if (!RESET_B) q_reg <= 1'b0;
        else if (CLK) q_reg <= D;
    end
    assign Q = q_reg;
endmodule

module sky130_fd_sc_hd__udp_dlatch$PR (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    always @* begin
        if (!RESET_B) q_reg <= 1'b0;
        else if (CLK) q_reg <= D;
    end
    assign Q = q_reg;
endmodule

module sky130_fd_sc_hd__udp_dlatch$PR_pp$PG$N (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    always @* begin
        if (!RESET_B) q_reg <= 1'b0;
        else if (CLK) q_reg <= D;
    end
    assign Q = q_reg;
endmodule

module sky130_fd_sc_hd__udp_dlatch$P_pp$PG$N (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    always @* begin
        if (!RESET_B) q_reg <= 1'b0;
        else if (CLK) q_reg <= D;
    end
    assign Q = q_reg;
endmodule

module sky130_fd_sc_hd__udp_dlatch$lP (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    always @* begin
        if (!RESET_B) q_reg <= 1'b0;
        else if (CLK) q_reg <= D;
    end
    assign Q = q_reg;
endmodule

module sky130_fd_sc_hd__udp_dlatch$lP_pp$PG$N (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    always @* begin
        if (!RESET_B) q_reg <= 1'b0;
        else if (CLK) q_reg <= D;
    end
    assign Q = q_reg;
endmodule

module sky130_fd_sc_hd__udp_mux_2to1 (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    assign X = S ? B : A;
endmodule

module sky130_fd_sc_hd__udp_mux_2to1_N (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    assign X = ~(S ? B : A);
endmodule

module sky130_fd_sc_hd__udp_mux_4to2 (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    assign X = S1 ? (S0 ? A3 : A2) : (S0 ? A1 : A0);
endmodule

module sky130_fd_sc_hd__udp_pwrgood$l_pp$PG (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    assign UDP_OUT = UDP_IN;
endmodule

module sky130_fd_sc_hd__udp_pwrgood$l_pp$PG$S (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    assign UDP_OUT = UDP_IN;
endmodule

module sky130_fd_sc_hd__udp_pwrgood_pp$G (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    assign UDP_OUT = UDP_IN;
endmodule

module sky130_fd_sc_hd__udp_pwrgood_pp$P (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    assign UDP_OUT = UDP_IN;
endmodule

module sky130_fd_sc_hd__udp_pwrgood_pp$PG (Q, D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN, UDP_OUT);
    output Q, UDP_OUT, X;
    input D, CLK, RESET_B, SET_B, NOTIFIER, VPWR, VGND, A, B, S, A0, A1, A2, A3, S0, S1, UDP_IN;
    reg q_reg;
    assign UDP_OUT = UDP_IN;
endmodule

