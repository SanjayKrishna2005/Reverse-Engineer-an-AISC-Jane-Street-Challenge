module sky130_fd_sc_hd__o21a_2 (X, A1, A2, B1, VGND, VNB, VPB, VPWR);
  output X;
  input A1;
  input A2;
  input B1;
  input VGND, VNB, VPB, VPWR;
  assign X = (A1 | A2) & B1;
endmodule

module sky130_fd_sc_hd__o21ai_2 (Y, A1, A2, B1, VGND, VNB, VPB, VPWR);
  output Y;
  input A1;
  input A2;
  input B1;
  input VGND, VNB, VPB, VPWR;
  assign Y = ~((A1 | A2) & B1);
endmodule

module sky130_fd_sc_hd__o21ba_2 (X, A1, A2_N, B1, VGND, VNB, VPB, VPWR);
  output X;
  input A1;
  input A2_N;
  input B1;
  input VGND, VNB, VPB, VPWR;
  assign X = (A1 | (~A2_N)) & B1;
endmodule

module sky130_fd_sc_hd__o21bai_2 (Y, A1, A2_N, B1, VGND, VNB, VPB, VPWR);
  output Y;
  input A1;
  input A2_N;
  input B1;
  input VGND, VNB, VPB, VPWR;
  assign Y = ~((A1 | (~A2_N)) & B1);
endmodule

module sky130_fd_sc_hd__o221a_2 (X, A1, A2, B1, B2, C1, VGND, VNB, VPB, VPWR);
  output X;
  input A1;
  input A2;
  input B1;
  input B2;
  input C1;
  input VGND, VNB, VPB, VPWR;
  assign X = (A1 | A2) & (B1 | B2) & C1;
endmodule

module sky130_fd_sc_hd__o22a_2 (X, A1, A2, B1, B2, VGND, VNB, VPB, VPWR);
  output X;
  input A1;
  input A2;
  input B1;
  input B2;
  input VGND, VNB, VPB, VPWR;
  assign X = (A1 | A2) & (B1 | B2);
endmodule

module sky130_fd_sc_hd__o22ai_2 (Y, A1, A2, B1, B2, VGND, VNB, VPB, VPWR);
  output Y;
  input A1;
  input A2;
  input B1;
  input B2;
  input VGND, VNB, VPB, VPWR;
  assign Y = ~((A1 | A2) & (B1 | B2));
endmodule

module sky130_fd_sc_hd__o2bb2a_2 (X, A1_N, A2_N, B1, B2, VGND, VNB, VPB, VPWR);
  output X;
  input A1_N;
  input A2_N;
  input B1;
  input B2;
  input VGND, VNB, VPB, VPWR;
  assign X = ((~A1_N) | (~A2_N)) & (B1 | B2);
endmodule

module sky130_fd_sc_hd__o311a_2 (X, A1, A2, A3, B1, C1, VGND, VNB, VPB, VPWR);
  output X;
  input A1;
  input A2;
  input A3;
  input B1;
  input C1;
  input VGND, VNB, VPB, VPWR;
  assign X = (A1 | A2 | A3) & B1 & C1;
endmodule

module sky130_fd_sc_hd__o31a_2 (X, A1, A2, A3, B1, VGND, VNB, VPB, VPWR);
  output X;
  input A1;
  input A2;
  input A3;
  input B1;
  input VGND, VNB, VPB, VPWR;
  assign X = (A1 | A2 | A3) & B1;
endmodule

module sky130_fd_sc_hd__o31ai_2 (Y, A1, A2, A3, B1, VGND, VNB, VPB, VPWR);
  output Y;
  input A1;
  input A2;
  input A3;
  input B1;
  input VGND, VNB, VPB, VPWR;
  assign Y = ~((A1 | A2 | A3) & B1);
endmodule

module sky130_fd_sc_hd__o32a_2 (X, A1, A2, A3, B1, B2, VGND, VNB, VPB, VPWR);
  output X;
  input A1;
  input A2;
  input A3;
  input B1;
  input B2;
  input VGND, VNB, VPB, VPWR;
  assign X = (A1 | A2 | A3) & (B1 | B2);
endmodule

module sky130_fd_sc_hd__o32ai_2 (Y, A1, A2, A3, B1, B2, VGND, VNB, VPB, VPWR);
  output Y;
  input A1;
  input A2;
  input A3;
  input B1;
  input B2;
  input VGND, VNB, VPB, VPWR;
  assign Y = ~((A1 | A2 | A3) & (B1 | B2));
endmodule

module sky130_fd_sc_hd__or2_2 (X, A, B, VGND, VNB, VPB, VPWR);
  output X;
  input A;
  input B;
  input VGND, VNB, VPB, VPWR;
  assign X = A | B;
endmodule

module sky130_fd_sc_hd__or3_2 (X, A, B, C, VGND, VNB, VPB, VPWR);
  output X;
  input A;
  input B;
  input C;
  input VGND, VNB, VPB, VPWR;
  assign X = A | B | C;
endmodule

module sky130_fd_sc_hd__or3b_2 (X, A, B, C_N, VGND, VNB, VPB, VPWR);
  output X;
  input A;
  input B;
  input C_N;
  input VGND, VNB, VPB, VPWR;
  assign X = A | B | (~C_N);
endmodule

module sky130_fd_sc_hd__or4_2 (X, A, B, C, D, VGND, VNB, VPB, VPWR);
  output X;
  input A;
  input B;
  input C;
  input D;
  input VGND, VNB, VPB, VPWR;
  assign X = A | B | C | D;
endmodule

module sky130_fd_sc_hd__or4b_2 (X, A, B, C, D_N, VGND, VNB, VPB, VPWR);
  output X;
  input A;
  input B;
  input C;
  input D_N;
  input VGND, VNB, VPB, VPWR;
  assign X = A | B | C | (~D_N);
endmodule

module sky130_fd_sc_hd__or4bb_2 (X, A, B, C_N, D_N, VGND, VNB, VPB, VPWR);
  output X;
  input A;
  input B;
  input C_N;
  input D_N;
  input VGND, VNB, VPB, VPWR;
  assign X = A | B | (~C_N) | (~D_N);
endmodule

module sky130_fd_sc_hd__xnor2_2 (Y, A, B, VGND, VNB, VPB, VPWR);
  output Y;
  input A;
  input B;
  input VGND, VNB, VPB, VPWR;
  assign Y = ~(A ^ B);
endmodule

module sky130_fd_sc_hd__xor2_2 (X, A, B, VGND, VNB, VPB, VPWR);
  output X;
  input A;
  input B;
  input VGND, VNB, VPB, VPWR;
  assign X = A ^ B;
endmodule

module sky130_fd_sc_hd__a2111oi_2 (Y, A1, A2, B1, C1, D1, VGND, VNB, VPB, VPWR);
  output Y;
  input A1;
  input A2;
  input B1;
  input C1;
  input D1;
  input VGND, VNB, VPB, VPWR;
  assign Y = ~((A1 & A2) | B1 | C1 | D1);
endmodule

