module adder_demo_gate (A, B, S, clk, en, rst_n);
  input wire A;
  input wire B;
  output wire S;
  input wire clk;
  input wire en;
  input wire rst_n;
  wire sky130_fd_sc_hd__a31o_2_2_X;
  wire sky130_fd_sc_hd__a31o_2_3_X;
  wire sky130_fd_sc_hd__a31o_2_4_X;
  wire sky130_fd_sc_hd__and2_2_1_B;
  wire sky130_fd_sc_hd__and2_2_2_X;
  wire sky130_fd_sc_hd__and2_2_6_A;
  wire sky130_fd_sc_hd__and2_2_6_X;
  wire sky130_fd_sc_hd__and3_2_0_A;
  wire sky130_fd_sc_hd__and3_2_0_B;
  wire sky130_fd_sc_hd__and3_2_0_C;
  wire sky130_fd_sc_hd__and3_2_0_X;
  wire sky130_fd_sc_hd__and4bb_2_1_X;
  wire sky130_fd_sc_hd__clkbuf_16_2_X;
  wire sky130_fd_sc_hd__dfrtp_2_7_CLK;
  wire sky130_fd_sc_hd__dfrtp_2_9_CLK;
  wire sky130_fd_sc_hd__mux2_1_0_VPB;
  wire sky130_fd_sc_hd__mux2_1_0_X;
  wire sky130_fd_sc_hd__mux2_1_10_X;
  wire sky130_fd_sc_hd__mux2_1_11_X;
  wire sky130_fd_sc_hd__mux2_1_12_X;
  wire sky130_fd_sc_hd__mux2_1_13_X;
  wire sky130_fd_sc_hd__mux2_1_14_X;
  wire sky130_fd_sc_hd__mux2_1_15_X;
  wire sky130_fd_sc_hd__mux2_1_1_X;
  wire sky130_fd_sc_hd__mux2_1_2_X;
  wire sky130_fd_sc_hd__mux2_1_3_X;
  wire sky130_fd_sc_hd__mux2_1_4_X;
  wire sky130_fd_sc_hd__mux2_1_5_X;
  wire sky130_fd_sc_hd__mux2_1_6_X;
  wire sky130_fd_sc_hd__mux2_1_7_X;
  wire sky130_fd_sc_hd__mux2_1_8_VPB;
  wire sky130_fd_sc_hd__mux2_1_8_X;
  wire sky130_fd_sc_hd__mux2_1_9_X;
  wire sky130_fd_sc_hd__nand2_2_3_A;
  wire sky130_fd_sc_hd__nor2_2_0_A;
  wire sky130_fd_sc_hd__nor2_2_0_Y;
  wire sky130_fd_sc_hd__nor2_2_1_A;
  wire sky130_fd_sc_hd__nor2_2_1_B;
  wire sky130_fd_sc_hd__nor2_2_2_B;
  wire sky130_fd_sc_hd__nor2_2_3_B;
  wire sky130_fd_sc_hd__nor2_2_4_A;
  wire sky130_fd_sc_hd__nor2_2_4_B;
  wire sky130_fd_sc_hd__nor2_2_5_VPB;
  wire sky130_fd_sc_hd__nor2_2_5_Y;
  wire sky130_fd_sc_hd__nor2_2_6_Y;
  wire sky130_fd_sc_hd__nor2_2_7_A;
  wire sky130_fd_sc_hd__nor2_2_7_B;
  wire sky130_fd_sc_hd__nor2_2_7_Y;
  wire sky130_fd_sc_hd__or2_2_0_A;
  wire sky130_fd_sc_hd__or2_2_0_B;
  wire sky130_fd_sc_hd__or2_2_0_VPB;
  wire sky130_fd_sc_hd__or2_2_0_X;
  wire sky130_fd_sc_hd__or2_2_1_A;
  wire sky130_fd_sc_hd__or2_2_1_B;
  wire sky130_fd_sc_hd__or2_2_1_X;
  wire sky130_fd_sc_hd__or2_2_2_A;
  wire sky130_fd_sc_hd__or2_2_2_B;
  wire sky130_fd_sc_hd__or2_2_2_X;
  wire sky130_fd_sc_hd__or2_2_3_A;
  wire sky130_fd_sc_hd__or2_2_3_B;
  wire sky130_fd_sc_hd__or2_2_3_X;
  wire sky130_fd_sc_hd__or2_2_4_A;
  wire sky130_fd_sc_hd__or2_2_4_B;
  wire sky130_fd_sc_hd__or2_2_4_X;
  wire sky130_fd_sc_hd__xnor2_2_0_Y;
  wire sky130_fd_sc_hd__xnor2_2_1_B;
  wire sky130_fd_sc_hd__xnor2_2_2_A;
  wire sky130_fd_sc_hd__xor2_2_0_A;
  wire sky130_fd_sc_hd__xor2_2_0_B;
  wire sky130_fd_sc_hd__xor2_2_0_X;
  wire sky130_fd_sc_hd__xor2_2_1_A;
  wire sky130_fd_sc_hd__xor2_2_1_B;
  wire sky130_fd_sc_hd__xor2_2_1_X;
  wire sky130_fd_sc_hd__xor2_2_2_A;
  wire sky130_fd_sc_hd__xor2_2_2_B;
  wire sky130_fd_sc_hd__xor2_2_2_X;
  wire sky130_fd_sc_hd__xor2_2_3_A;
  wire sky130_fd_sc_hd__xor2_2_3_B;
  wire sky130_fd_sc_hd__xor2_2_3_X;
  wire sky130_fd_sc_hd__xor2_2_4_A;
  wire sky130_fd_sc_hd__xor2_2_4_B;
  wire sky130_fd_sc_hd__xor2_2_4_X;

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_4 (
    .S(en),
    .A1(sky130_fd_sc_hd__or2_2_4_A),
    .A0(sky130_fd_sc_hd__nor2_2_7_A),
    .X(sky130_fd_sc_hd__mux2_1_4_X)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_5 (
    .S(en),
    .A1(B),
    .A0(sky130_fd_sc_hd__or2_2_0_A),
    .X(sky130_fd_sc_hd__mux2_1_5_X)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_6 (
    .S(en),
    .A1(sky130_fd_sc_hd__or2_2_0_A),
    .A0(sky130_fd_sc_hd__xor2_2_4_A),
    .X(sky130_fd_sc_hd__mux2_1_6_X)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_7 (
    .S(en),
    .A1(sky130_fd_sc_hd__xor2_2_4_A),
    .A0(sky130_fd_sc_hd__or2_2_3_A),
    .X(sky130_fd_sc_hd__mux2_1_7_X)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_8 (
    .S(en),
    .A1(sky130_fd_sc_hd__or2_2_0_B),
    .A0(sky130_fd_sc_hd__xor2_2_4_B),
    .X(sky130_fd_sc_hd__mux2_1_8_X)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_9 (
    .S(en),
    .A1(sky130_fd_sc_hd__or2_2_4_B),
    .A0(sky130_fd_sc_hd__nor2_2_7_B),
    .X(sky130_fd_sc_hd__mux2_1_9_X)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_0 (
    .Y(sky130_fd_sc_hd__and2_2_6_A),
    .A(sky130_fd_sc_hd__or2_2_0_A),
    .B(sky130_fd_sc_hd__or2_2_0_B)
  );

  sky130_fd_sc_hd__a21bo_2 Xsky130_fd_sc_hd__a21bo_2_0 (
    .B1_N(sky130_fd_sc_hd__and2_2_1_B),
    .A2(sky130_fd_sc_hd__xor2_2_1_B),
    .X(sky130_fd_sc_hd__xor2_2_0_B),
    .A1(sky130_fd_sc_hd__xor2_2_1_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_1 (
    .Y(sky130_fd_sc_hd__and2_2_1_B),
    .A(sky130_fd_sc_hd__or2_2_3_A),
    .B(sky130_fd_sc_hd__or2_2_3_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_2 (
    .Y(sky130_fd_sc_hd__nand2_2_3_A),
    .A(sky130_fd_sc_hd__or2_2_4_A),
    .B(sky130_fd_sc_hd__or2_2_4_B)
  );

  sky130_fd_sc_hd__a21boi_2 Xsky130_fd_sc_hd__a21boi_2_0 (
    .B1_N(sky130_fd_sc_hd__nand2_2_3_A),
    .A2(sky130_fd_sc_hd__a31o_2_3_X),
    .A1(sky130_fd_sc_hd__or2_2_4_X),
    .Y(sky130_fd_sc_hd__xnor2_2_1_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_10 (
    .Q(sky130_fd_sc_hd__or2_2_4_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_13_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_9_CLK)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_3 (
    .Y(sky130_fd_sc_hd__xnor2_2_2_A),
    .A(sky130_fd_sc_hd__nand2_2_3_A),
    .B(sky130_fd_sc_hd__or2_2_4_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_11 (
    .Q(sky130_fd_sc_hd__or2_2_0_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_12_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_9_CLK)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_0 (
    .B(sky130_fd_sc_hd__and3_2_0_B),
    .X(sky130_fd_sc_hd__and3_2_0_X),
    .A(sky130_fd_sc_hd__and3_2_0_A),
    .C(sky130_fd_sc_hd__and3_2_0_C)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_12 (
    .Q(sky130_fd_sc_hd__or2_2_3_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_10_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_9_CLK)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_13 (
    .Q(sky130_fd_sc_hd__or2_2_1_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_15_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_9_CLK)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_0 (
    .X(sky130_fd_sc_hd__xor2_2_0_X),
    .B(sky130_fd_sc_hd__xor2_2_0_B),
    .A(sky130_fd_sc_hd__xor2_2_0_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_14 (
    .Q(sky130_fd_sc_hd__nor2_2_1_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_14_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_9_CLK)
  );

  sky130_fd_sc_hd__o21bai_2 Xsky130_fd_sc_hd__o21bai_2_0 (
    .B1_N(sky130_fd_sc_hd__nor2_2_0_A),
    .Y(sky130_fd_sc_hd__and3_2_0_C),
    .A2(sky130_fd_sc_hd__xnor2_2_1_B),
    .A1(sky130_fd_sc_hd__nor2_2_7_Y)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_1 (
    .X(sky130_fd_sc_hd__xor2_2_1_X),
    .B(sky130_fd_sc_hd__xor2_2_1_B),
    .A(sky130_fd_sc_hd__xor2_2_1_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_15 (
    .Q(sky130_fd_sc_hd__or2_2_2_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_11_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_9_CLK)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_2 (
    .X(sky130_fd_sc_hd__xor2_2_2_X),
    .B(sky130_fd_sc_hd__xor2_2_2_B),
    .A(sky130_fd_sc_hd__xor2_2_2_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_10 (
    .S(en),
    .A1(sky130_fd_sc_hd__xor2_2_4_B),
    .A0(sky130_fd_sc_hd__or2_2_3_B),
    .X(sky130_fd_sc_hd__mux2_1_10_X)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_3 (
    .X(sky130_fd_sc_hd__xor2_2_3_X),
    .B(sky130_fd_sc_hd__xor2_2_3_B),
    .A(sky130_fd_sc_hd__xor2_2_3_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_11 (
    .S(en),
    .A1(sky130_fd_sc_hd__nor2_2_1_B),
    .A0(sky130_fd_sc_hd__or2_2_2_B),
    .X(sky130_fd_sc_hd__mux2_1_11_X)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_4 (
    .X(sky130_fd_sc_hd__xor2_2_4_X),
    .B(sky130_fd_sc_hd__xor2_2_4_B),
    .A(sky130_fd_sc_hd__xor2_2_4_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_12 (
    .S(en),
    .A1(A),
    .A0(sky130_fd_sc_hd__or2_2_0_B),
    .X(sky130_fd_sc_hd__mux2_1_12_X)
  );

  sky130_fd_sc_hd__clkbuf_16 Xsky130_fd_sc_hd__clkbuf_16_0 (
    .X(sky130_fd_sc_hd__dfrtp_2_7_CLK),
    .A(sky130_fd_sc_hd__clkbuf_16_2_X)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_13 (
    .S(en),
    .A1(sky130_fd_sc_hd__or2_2_2_B),
    .A0(sky130_fd_sc_hd__or2_2_4_B),
    .X(sky130_fd_sc_hd__mux2_1_13_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_0 (
    .Q(sky130_fd_sc_hd__nor2_2_1_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_3_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_7_CLK)
  );

  sky130_fd_sc_hd__clkbuf_16 Xsky130_fd_sc_hd__clkbuf_16_1 (
    .X(sky130_fd_sc_hd__dfrtp_2_9_CLK),
    .A(sky130_fd_sc_hd__clkbuf_16_2_X)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_14 (
    .S(en),
    .A1(sky130_fd_sc_hd__or2_2_1_B),
    .A0(sky130_fd_sc_hd__nor2_2_1_B),
    .X(sky130_fd_sc_hd__mux2_1_14_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_1 (
    .Q(sky130_fd_sc_hd__or2_2_0_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_5_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_7_CLK)
  );

  sky130_fd_sc_hd__clkbuf_16 Xsky130_fd_sc_hd__clkbuf_16_2 (
    .X(sky130_fd_sc_hd__clkbuf_16_2_X),
    .A(clk)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_15 (
    .S(en),
    .A1(sky130_fd_sc_hd__or2_2_3_B),
    .A0(sky130_fd_sc_hd__or2_2_1_B),
    .X(sky130_fd_sc_hd__mux2_1_15_X)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_0 (
    .B(sky130_fd_sc_hd__nor2_2_7_Y),
    .Y(sky130_fd_sc_hd__nor2_2_0_Y),
    .A(sky130_fd_sc_hd__nor2_2_0_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_2 (
    .Q(sky130_fd_sc_hd__or2_2_2_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_1_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_7_CLK)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_0 (
    .Y(sky130_fd_sc_hd__xnor2_2_0_Y),
    .A(sky130_fd_sc_hd__and2_2_6_A),
    .B(sky130_fd_sc_hd__xor2_2_4_X)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_1 (
    .B(sky130_fd_sc_hd__nor2_2_1_B),
    .Y(sky130_fd_sc_hd__nor2_2_4_B),
    .A(sky130_fd_sc_hd__nor2_2_1_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_0 (
    .A(sky130_fd_sc_hd__nor2_2_1_A),
    .X(sky130_fd_sc_hd__nor2_2_4_A),
    .B(sky130_fd_sc_hd__nor2_2_1_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_3 (
    .Q(sky130_fd_sc_hd__xor2_2_4_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_6_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_7_CLK)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_1 (
    .Y(sky130_fd_sc_hd__and3_2_0_B),
    .A(sky130_fd_sc_hd__nor2_2_0_Y),
    .B(sky130_fd_sc_hd__xnor2_2_1_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_2 (
    .B(sky130_fd_sc_hd__nor2_2_2_B),
    .Y(sky130_fd_sc_hd__xor2_2_0_A),
    .A(sky130_fd_sc_hd__nor2_2_6_Y)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_1 (
    .A(sky130_fd_sc_hd__or2_2_3_X),
    .X(sky130_fd_sc_hd__xor2_2_1_B),
    .B(sky130_fd_sc_hd__and2_2_1_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_4 (
    .Q(sky130_fd_sc_hd__or2_2_3_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_7_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_7_CLK)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_2 (
    .Y(sky130_fd_sc_hd__and3_2_0_A),
    .A(sky130_fd_sc_hd__xnor2_2_2_A),
    .B(sky130_fd_sc_hd__a31o_2_3_X)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_3 (
    .B(sky130_fd_sc_hd__nor2_2_3_B),
    .Y(sky130_fd_sc_hd__xor2_2_3_A),
    .A(sky130_fd_sc_hd__nor2_2_5_Y)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_2 (
    .A(sky130_fd_sc_hd__xor2_2_4_A),
    .X(sky130_fd_sc_hd__and2_2_2_X),
    .B(sky130_fd_sc_hd__xor2_2_4_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_5 (
    .Q(sky130_fd_sc_hd__nor2_2_7_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_4_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_7_CLK)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_4 (
    .B(sky130_fd_sc_hd__nor2_2_4_B),
    .Y(sky130_fd_sc_hd__xor2_2_2_A),
    .A(sky130_fd_sc_hd__nor2_2_4_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_3 (
    .A(sky130_fd_sc_hd__or2_2_1_A),
    .X(sky130_fd_sc_hd__nor2_2_2_B),
    .B(sky130_fd_sc_hd__or2_2_1_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_6 (
    .Q(sky130_fd_sc_hd__or2_2_1_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_0_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_7_CLK)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_5 (
    .B(sky130_fd_sc_hd__or2_2_2_B),
    .Y(sky130_fd_sc_hd__nor2_2_5_Y),
    .A(sky130_fd_sc_hd__or2_2_2_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_4 (
    .A(sky130_fd_sc_hd__or2_2_2_A),
    .X(sky130_fd_sc_hd__nor2_2_3_B),
    .B(sky130_fd_sc_hd__or2_2_2_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_7 (
    .Q(sky130_fd_sc_hd__or2_2_4_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_2_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_7_CLK)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_0 (
    .X(sky130_fd_sc_hd__xor2_2_1_A),
    .B1(sky130_fd_sc_hd__and2_2_2_X),
    .A3(sky130_fd_sc_hd__xor2_2_4_X),
    .A1(sky130_fd_sc_hd__or2_2_0_A),
    .A2(sky130_fd_sc_hd__or2_2_0_B)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_0 (
    .B(sky130_fd_sc_hd__or2_2_0_B),
    .X(sky130_fd_sc_hd__or2_2_0_X),
    .A(sky130_fd_sc_hd__or2_2_0_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_6 (
    .B(sky130_fd_sc_hd__or2_2_1_B),
    .Y(sky130_fd_sc_hd__nor2_2_6_Y),
    .A(sky130_fd_sc_hd__or2_2_1_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_5 (
    .A(sky130_fd_sc_hd__nor2_2_7_A),
    .X(sky130_fd_sc_hd__nor2_2_0_A),
    .B(sky130_fd_sc_hd__nor2_2_7_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_8 (
    .Q(sky130_fd_sc_hd__xor2_2_4_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_8_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_9_CLK)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_1 (
    .X(sky130_fd_sc_hd__xor2_2_2_B),
    .B1(sky130_fd_sc_hd__a31o_2_4_X),
    .A3(sky130_fd_sc_hd__xor2_2_0_A),
    .A1(sky130_fd_sc_hd__xor2_2_1_A),
    .A2(sky130_fd_sc_hd__xor2_2_1_B)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_0 (
    .X(sky130_fd_sc_hd__xor2_2_3_B),
    .B1(sky130_fd_sc_hd__nor2_2_4_A),
    .A1(sky130_fd_sc_hd__xor2_2_2_A),
    .A2(sky130_fd_sc_hd__xor2_2_2_B)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_1 (
    .B(sky130_fd_sc_hd__or2_2_1_B),
    .X(sky130_fd_sc_hd__or2_2_1_X),
    .A(sky130_fd_sc_hd__or2_2_1_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_7 (
    .B(sky130_fd_sc_hd__nor2_2_7_B),
    .Y(sky130_fd_sc_hd__nor2_2_7_Y),
    .A(sky130_fd_sc_hd__nor2_2_7_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_6 (
    .A(sky130_fd_sc_hd__and2_2_6_A),
    .X(sky130_fd_sc_hd__and2_2_6_X),
    .B(sky130_fd_sc_hd__or2_2_0_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_9 (
    .Q(sky130_fd_sc_hd__nor2_2_7_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_9_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_9_CLK)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_2 (
    .X(sky130_fd_sc_hd__a31o_2_2_X),
    .B1(sky130_fd_sc_hd__nor2_2_3_B),
    .A3(sky130_fd_sc_hd__or2_2_2_X),
    .A1(sky130_fd_sc_hd__nor2_2_1_A),
    .A2(sky130_fd_sc_hd__nor2_2_1_B)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_0 (
    .A_N(sky130_fd_sc_hd__xnor2_2_0_Y),
    .C(sky130_fd_sc_hd__and3_2_0_X),
    .B_N(sky130_fd_sc_hd__and2_2_6_X),
    .X(S),
    .D(sky130_fd_sc_hd__and4bb_2_1_X)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_2 (
    .B(sky130_fd_sc_hd__or2_2_2_B),
    .X(sky130_fd_sc_hd__or2_2_2_X),
    .A(sky130_fd_sc_hd__or2_2_2_A)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_3 (
    .X(sky130_fd_sc_hd__a31o_2_3_X),
    .B1(sky130_fd_sc_hd__a31o_2_2_X),
    .A3(sky130_fd_sc_hd__xor2_2_3_A),
    .A1(sky130_fd_sc_hd__xor2_2_2_A),
    .A2(sky130_fd_sc_hd__xor2_2_2_B)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_1 (
    .A_N(sky130_fd_sc_hd__xor2_2_0_X),
    .C(sky130_fd_sc_hd__xor2_2_2_X),
    .B_N(sky130_fd_sc_hd__xor2_2_1_X),
    .X(sky130_fd_sc_hd__and4bb_2_1_X),
    .D(sky130_fd_sc_hd__xor2_2_3_X)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_3 (
    .B(sky130_fd_sc_hd__or2_2_3_B),
    .X(sky130_fd_sc_hd__or2_2_3_X),
    .A(sky130_fd_sc_hd__or2_2_3_A)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_4 (
    .X(sky130_fd_sc_hd__a31o_2_4_X),
    .B1(sky130_fd_sc_hd__nor2_2_2_B),
    .A3(sky130_fd_sc_hd__or2_2_1_X),
    .A1(sky130_fd_sc_hd__or2_2_3_A),
    .A2(sky130_fd_sc_hd__or2_2_3_B)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_4 (
    .B(sky130_fd_sc_hd__or2_2_4_B),
    .X(sky130_fd_sc_hd__or2_2_4_X),
    .A(sky130_fd_sc_hd__or2_2_4_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_0 (
    .S(en),
    .A1(sky130_fd_sc_hd__or2_2_3_A),
    .A0(sky130_fd_sc_hd__or2_2_1_A),
    .X(sky130_fd_sc_hd__mux2_1_0_X)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_1 (
    .S(en),
    .A1(sky130_fd_sc_hd__nor2_2_1_A),
    .A0(sky130_fd_sc_hd__or2_2_2_A),
    .X(sky130_fd_sc_hd__mux2_1_1_X)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_2 (
    .S(en),
    .A1(sky130_fd_sc_hd__or2_2_2_A),
    .A0(sky130_fd_sc_hd__or2_2_4_A),
    .X(sky130_fd_sc_hd__mux2_1_2_X)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_3 (
    .S(en),
    .A1(sky130_fd_sc_hd__or2_2_1_A),
    .A0(sky130_fd_sc_hd__nor2_2_1_A),
    .X(sky130_fd_sc_hd__mux2_1_3_X)
  );

endmodule
