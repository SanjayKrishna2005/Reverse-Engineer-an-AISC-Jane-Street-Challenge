// Stub replacements for SKY130 UDP primitives that Yosys cannot parse.
// These implement the behavioral equivalent of each UDP.

// DFF with NegReset and Set (NSR)
module sky130_fd_sc_hd__udp_dff$NSR (Q, S, R, C, D); // Actually PDK uses (Q, S, R, C, D) for NSR
    output reg Q;
    input S, R, C, D;
    always @(posedge C or posedge S or posedge R) begin
        if (R) Q <= 0;
        else if (S) Q <= 1;
        else Q <= D;
    end
endmodule

module sky130_fd_sc_hd__udp_dff$NSR_pp$PG$N (Q, S, R, C, D, VPWR, VGND, NOTIFIER);
    output reg Q;
    input S, R, C, D, VPWR, VGND, NOTIFIER;
    always @(posedge C or posedge S or posedge R) begin
        if (R) Q <= 0;
        else if (S) Q <= 1;
        else Q <= D;
    end
endmodule

// DFF with posedge clock
module sky130_fd_sc_hd__udp_dff$P (Q, D, C);
    output reg Q;
    input C, D;
    always @(posedge C) Q <= D;
endmodule

module sky130_fd_sc_hd__udp_dff$P_pp$PG$N (Q, D, C, VPWR, VGND, NOTIFIER);
    output reg Q;
    input C, D, VPWR, VGND, NOTIFIER;
    always @(posedge C) Q <= D;
endmodule

// DFF with posedge clock and async reset
module sky130_fd_sc_hd__udp_dff$PR (Q, D, C, R);
    output reg Q;
    input C, D, R;
    always @(posedge C or posedge R) begin
        if (R) Q <= 0;
        else Q <= D;
    end
endmodule

module sky130_fd_sc_hd__udp_dff$PR_pp$PG$N (Q, D, C, R, VPWR, VGND, NOTIFIER);
    output reg Q;
    input C, D, R, VPWR, VGND, NOTIFIER;
    always @(posedge C or posedge R) begin
        if (R) Q <= 0;
        else Q <= D;
    end
endmodule

// DFF with posedge clock and async set
module sky130_fd_sc_hd__udp_dff$PS (Q, D, C, S);
    output reg Q;
    input C, D, S;
    always @(posedge C or posedge S) begin
        if (S) Q <= 1;
        else Q <= D;
    end
endmodule

module sky130_fd_sc_hd__udp_dff$PS_pp$PG$N (Q, D, C, S, VPWR, VGND, NOTIFIER);
    output reg Q;
    input C, D, S, VPWR, VGND, NOTIFIER;
    always @(posedge C or posedge S) begin
        if (S) Q <= 1;
        else Q <= D;
    end
endmodule

// D latch
module sky130_fd_sc_hd__udp_dlatch$P (Q, D, E);
    output reg Q;
    input E, D;
    always @(*) if (E) Q <= D;
endmodule

module sky130_fd_sc_hd__udp_dlatch$P_pp$PG$N (Q, D, E, VPWR, VGND, NOTIFIER);
    output reg Q;
    input E, D, VPWR, VGND, NOTIFIER;
    always @(*) if (E) Q <= D;
endmodule

module sky130_fd_sc_hd__udp_dlatch$PR (Q, D, E, R);
    output reg Q;
    input E, D, R;
    always @(*) begin
        if (R) Q <= 0;
        else if (E) Q <= D;
    end
endmodule

module sky130_fd_sc_hd__udp_dlatch$PR_pp$PG$N (Q, D, E, R, VPWR, VGND, NOTIFIER);
    output reg Q;
    input E, D, R, VPWR, VGND, NOTIFIER;
    always @(*) begin
        if (R) Q <= 0;
        else if (E) Q <= D;
    end
endmodule

module sky130_fd_sc_hd__udp_dlatch$lP (Q, D, E);
    output reg Q;
    input E, D;
    always @(*) if (~E) Q <= D;
endmodule

module sky130_fd_sc_hd__udp_dlatch$lP_pp$PG$N (Q, D, E, VPWR, VGND, NOTIFIER);
    output reg Q;
    input E, D, VPWR, VGND, NOTIFIER;
    always @(*) if (~E) Q <= D;
endmodule

// 2-to-1 Mux
module sky130_fd_sc_hd__udp_mux_2to1 (X, A0, A1, S);
    output X;
    input A0, A1, S;
    assign X = S ? A1 : A0;
endmodule

module sky130_fd_sc_hd__udp_mux_2to1_N (Y, A0, A1, S);
    output Y;
    input A0, A1, S;
    assign Y = ~(S ? A1 : A0);
endmodule

// 4-to-2 mux (simplified)
module sky130_fd_sc_hd__udp_mux_4to2 (X, A0, A1, A2, A3, S0, S1);
    output X;
    input A0, A1, A2, A3, S0, S1;
    assign X = S1 ? (S0 ? A3 : A2) : (S0 ? A1 : A0);
endmodule

// Power good stubs (just pass-through for simulation)
module sky130_fd_sc_hd__udp_pwrgood$l_pp$G (UDP_OUT, UDP_IN, VGND);
    output UDP_OUT;
    input UDP_IN, VGND;
    assign UDP_OUT = UDP_IN;
endmodule

module sky130_fd_sc_hd__udp_pwrgood$l_pp$PG (UDP_OUT, UDP_IN, VPWR, VGND);
    output UDP_OUT;
    input UDP_IN, VPWR, VGND;
    assign UDP_OUT = UDP_IN;
endmodule

module sky130_fd_sc_hd__udp_pwrgood$l_pp$PG$S (UDP_OUT, UDP_IN, VPWR, VGND, SLEEP);
    output UDP_OUT;
    input UDP_IN, VPWR, VGND, SLEEP;
    assign UDP_OUT = UDP_IN;
endmodule

module sky130_fd_sc_hd__udp_pwrgood_pp$G (UDP_OUT, UDP_IN, VGND);
    output UDP_OUT;
    input UDP_IN, VGND;
    assign UDP_OUT = UDP_IN;
endmodule

module sky130_fd_sc_hd__udp_pwrgood_pp$P (UDP_OUT, UDP_IN, VPWR);
    output UDP_OUT;
    input UDP_IN, VPWR;
    assign UDP_OUT = UDP_IN;
endmodule

module sky130_fd_sc_hd__udp_pwrgood_pp$PG (UDP_OUT, UDP_IN, VPWR, VGND);
    output UDP_OUT;
    input UDP_IN, VPWR, VGND;
    assign UDP_OUT = UDP_IN;
endmodule
