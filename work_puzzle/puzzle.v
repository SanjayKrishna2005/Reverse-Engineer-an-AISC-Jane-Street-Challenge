module puzzle_gate (I, O, clk, enable, rst_n, success);
  input wire I;
  input wire clk;
  input wire enable;
  input wire rst_n;
  output wire success;
  output wire [7:0] O;
  wire sky130_fd_sc_hd__a2111oi_2_0_a_115_297_;
  wire sky130_fd_sc_hd__a2111oi_2_0_a_287_297_;
  wire sky130_fd_sc_hd__a2111oi_2_0_a_28_297_;
  wire sky130_fd_sc_hd__a2111oi_2_0_a_467_297_;
  wire sky130_fd_sc_hd__a2111oi_2_0_a_684_47_;
  wire sky130_fd_sc_hd__a2111oi_2_0_a_923_47_;
  wire sky130_fd_sc_hd__a211o_2_0_X;
  wire sky130_fd_sc_hd__a211o_2_0_a_299_297_;
  wire sky130_fd_sc_hd__a211o_2_0_a_348_47_;
  wire sky130_fd_sc_hd__a211o_2_0_a_585_297_;
  wire sky130_fd_sc_hd__a211o_2_0_a_79_21_;
  wire sky130_fd_sc_hd__a211o_2_1_X;
  wire sky130_fd_sc_hd__a211o_2_1_a_299_297_;
  wire sky130_fd_sc_hd__a211o_2_1_a_348_47_;
  wire sky130_fd_sc_hd__a211o_2_1_a_585_297_;
  wire sky130_fd_sc_hd__a211o_2_1_a_79_21_;
  wire sky130_fd_sc_hd__a211o_2_2_X;
  wire sky130_fd_sc_hd__a211o_2_2_a_299_297_;
  wire sky130_fd_sc_hd__a211o_2_2_a_348_47_;
  wire sky130_fd_sc_hd__a211o_2_2_a_585_297_;
  wire sky130_fd_sc_hd__a211o_2_2_a_79_21_;
  wire sky130_fd_sc_hd__a211o_2_3_X;
  wire sky130_fd_sc_hd__a211o_2_3_a_299_297_;
  wire sky130_fd_sc_hd__a211o_2_3_a_348_47_;
  wire sky130_fd_sc_hd__a211o_2_3_a_585_297_;
  wire sky130_fd_sc_hd__a211o_2_3_a_79_21_;
  wire sky130_fd_sc_hd__a211o_2_4_a_299_297_;
  wire sky130_fd_sc_hd__a211o_2_4_a_348_47_;
  wire sky130_fd_sc_hd__a211o_2_4_a_585_297_;
  wire sky130_fd_sc_hd__a211o_2_4_a_79_21_;
  wire sky130_fd_sc_hd__a211oi_2_0_a_292_297_;
  wire sky130_fd_sc_hd__a211oi_2_0_a_37_297_;
  wire sky130_fd_sc_hd__a211oi_2_0_a_485_47_;
  wire sky130_fd_sc_hd__a211oi_2_1_a_292_297_;
  wire sky130_fd_sc_hd__a211oi_2_1_a_37_297_;
  wire sky130_fd_sc_hd__a211oi_2_1_a_485_47_;
  wire sky130_fd_sc_hd__a211oi_2_2_a_292_297_;
  wire sky130_fd_sc_hd__a211oi_2_2_a_37_297_;
  wire sky130_fd_sc_hd__a211oi_2_2_a_485_47_;
  wire sky130_fd_sc_hd__a21bo_2_0_a_297_93_;
  wire sky130_fd_sc_hd__a21bo_2_0_a_485_297_;
  wire sky130_fd_sc_hd__a21bo_2_0_a_581_47_;
  wire sky130_fd_sc_hd__a21bo_2_0_a_79_21_;
  wire sky130_fd_sc_hd__a21bo_2_1_a_297_93_;
  wire sky130_fd_sc_hd__a21bo_2_1_a_485_297_;
  wire sky130_fd_sc_hd__a21bo_2_1_a_581_47_;
  wire sky130_fd_sc_hd__a21bo_2_1_a_79_21_;
  wire sky130_fd_sc_hd__a21boi_2_0_a_217_297_;
  wire sky130_fd_sc_hd__a21boi_2_0_a_479_47_;
  wire sky130_fd_sc_hd__a21boi_2_0_a_61_47_;
  wire sky130_fd_sc_hd__a21boi_2_0_a_637_47_;
  wire sky130_fd_sc_hd__a21boi_2_1_a_217_297_;
  wire sky130_fd_sc_hd__a21boi_2_1_a_479_47_;
  wire sky130_fd_sc_hd__a21boi_2_1_a_61_47_;
  wire sky130_fd_sc_hd__a21boi_2_1_a_637_47_;
  wire sky130_fd_sc_hd__a21boi_2_2_a_217_297_;
  wire sky130_fd_sc_hd__a21boi_2_2_a_479_47_;
  wire sky130_fd_sc_hd__a21boi_2_2_a_61_47_;
  wire sky130_fd_sc_hd__a21boi_2_2_a_637_47_;
  wire sky130_fd_sc_hd__a21boi_2_3_a_217_297_;
  wire sky130_fd_sc_hd__a21boi_2_3_a_479_47_;
  wire sky130_fd_sc_hd__a21boi_2_3_a_61_47_;
  wire sky130_fd_sc_hd__a21boi_2_3_a_637_47_;
  wire sky130_fd_sc_hd__a21o_2_0_X;
  wire sky130_fd_sc_hd__a21o_2_0_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_0_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_0_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_10_X;
  wire sky130_fd_sc_hd__a21o_2_10_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_10_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_10_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_11_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_11_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_11_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_12_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_12_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_12_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_13_X;
  wire sky130_fd_sc_hd__a21o_2_13_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_13_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_13_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_14_X;
  wire sky130_fd_sc_hd__a21o_2_14_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_14_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_14_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_15_X;
  wire sky130_fd_sc_hd__a21o_2_15_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_15_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_15_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_16_X;
  wire sky130_fd_sc_hd__a21o_2_16_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_16_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_16_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_17_X;
  wire sky130_fd_sc_hd__a21o_2_17_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_17_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_17_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_18_X;
  wire sky130_fd_sc_hd__a21o_2_18_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_18_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_18_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_1_X;
  wire sky130_fd_sc_hd__a21o_2_1_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_1_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_1_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_2_X;
  wire sky130_fd_sc_hd__a21o_2_2_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_2_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_2_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_3_A2;
  wire sky130_fd_sc_hd__a21o_2_3_X;
  wire sky130_fd_sc_hd__a21o_2_3_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_3_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_3_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_4_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_4_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_4_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_5_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_5_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_5_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_6_A2;
  wire sky130_fd_sc_hd__a21o_2_6_X;
  wire sky130_fd_sc_hd__a21o_2_6_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_6_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_6_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_7_VPB;
  wire sky130_fd_sc_hd__a21o_2_7_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_7_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_7_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_8_A2;
  wire sky130_fd_sc_hd__a21o_2_8_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_8_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_8_a_80_199_;
  wire sky130_fd_sc_hd__a21o_2_9_X;
  wire sky130_fd_sc_hd__a21o_2_9_a_386_297_;
  wire sky130_fd_sc_hd__a21o_2_9_a_458_47_;
  wire sky130_fd_sc_hd__a21o_2_9_a_80_199_;
  wire sky130_fd_sc_hd__a21oi_2_0_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_0_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_0_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_10_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_10_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_10_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_11_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_11_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_11_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_12_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_12_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_12_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_13_Y;
  wire sky130_fd_sc_hd__a21oi_2_13_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_13_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_13_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_14_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_14_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_14_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_15_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_15_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_15_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_16_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_16_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_16_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_17_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_17_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_17_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_18_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_18_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_18_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_19_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_19_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_19_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_1_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_1_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_1_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_2_Y;
  wire sky130_fd_sc_hd__a21oi_2_2_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_2_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_2_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_3_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_3_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_3_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_4_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_4_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_4_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_5_Y;
  wire sky130_fd_sc_hd__a21oi_2_5_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_5_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_5_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_6_Y;
  wire sky130_fd_sc_hd__a21oi_2_6_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_6_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_6_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_7_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_7_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_7_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_8_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_8_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_8_a_285_47_;
  wire sky130_fd_sc_hd__a21oi_2_9_a_114_47_;
  wire sky130_fd_sc_hd__a21oi_2_9_a_27_297_;
  wire sky130_fd_sc_hd__a21oi_2_9_a_285_47_;
  wire sky130_fd_sc_hd__a221o_2_0_X;
  wire sky130_fd_sc_hd__a221o_2_0_a_109_297_;
  wire sky130_fd_sc_hd__a221o_2_0_a_193_297_;
  wire sky130_fd_sc_hd__a221o_2_0_a_205_47_;
  wire sky130_fd_sc_hd__a221o_2_0_a_27_47_;
  wire sky130_fd_sc_hd__a221o_2_0_a_465_47_;
  wire sky130_fd_sc_hd__a221o_2_1_X;
  wire sky130_fd_sc_hd__a221o_2_1_a_109_297_;
  wire sky130_fd_sc_hd__a221o_2_1_a_193_297_;
  wire sky130_fd_sc_hd__a221o_2_1_a_205_47_;
  wire sky130_fd_sc_hd__a221o_2_1_a_27_47_;
  wire sky130_fd_sc_hd__a221o_2_1_a_465_47_;
  wire sky130_fd_sc_hd__a221o_2_2_X;
  wire sky130_fd_sc_hd__a221o_2_2_a_109_297_;
  wire sky130_fd_sc_hd__a221o_2_2_a_193_297_;
  wire sky130_fd_sc_hd__a221o_2_2_a_205_47_;
  wire sky130_fd_sc_hd__a221o_2_2_a_27_47_;
  wire sky130_fd_sc_hd__a221o_2_2_a_465_47_;
  wire sky130_fd_sc_hd__a221o_2_3_a_109_297_;
  wire sky130_fd_sc_hd__a221o_2_3_a_193_297_;
  wire sky130_fd_sc_hd__a221o_2_3_a_205_47_;
  wire sky130_fd_sc_hd__a221o_2_3_a_27_47_;
  wire sky130_fd_sc_hd__a221o_2_3_a_465_47_;
  wire sky130_fd_sc_hd__a221o_2_4_X;
  wire sky130_fd_sc_hd__a221o_2_4_a_109_297_;
  wire sky130_fd_sc_hd__a221o_2_4_a_193_297_;
  wire sky130_fd_sc_hd__a221o_2_4_a_205_47_;
  wire sky130_fd_sc_hd__a221o_2_4_a_27_47_;
  wire sky130_fd_sc_hd__a221o_2_4_a_465_47_;
  wire sky130_fd_sc_hd__a221o_2_5_a_109_297_;
  wire sky130_fd_sc_hd__a221o_2_5_a_193_297_;
  wire sky130_fd_sc_hd__a221o_2_5_a_205_47_;
  wire sky130_fd_sc_hd__a221o_2_5_a_27_47_;
  wire sky130_fd_sc_hd__a221o_2_5_a_465_47_;
  wire sky130_fd_sc_hd__a221oi_2_0_a_27_297_;
  wire sky130_fd_sc_hd__a221oi_2_0_a_301_297_;
  wire sky130_fd_sc_hd__a221oi_2_0_a_383_47_;
  wire sky130_fd_sc_hd__a221oi_2_0_a_735_47_;
  wire sky130_fd_sc_hd__a22o_2_0_X;
  wire sky130_fd_sc_hd__a22o_2_0_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_0_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_0_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_0_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_10_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_10_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_10_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_10_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_11_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_11_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_11_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_11_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_12_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_12_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_12_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_12_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_13_A1;
  wire sky130_fd_sc_hd__a22o_2_13_X;
  wire sky130_fd_sc_hd__a22o_2_13_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_13_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_13_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_13_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_14_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_14_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_14_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_14_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_15_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_15_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_15_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_15_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_16_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_16_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_16_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_16_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_17_X;
  wire sky130_fd_sc_hd__a22o_2_17_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_17_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_17_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_17_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_18_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_18_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_18_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_18_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_19_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_19_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_19_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_19_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_1_X;
  wire sky130_fd_sc_hd__a22o_2_1_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_1_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_1_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_1_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_20_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_20_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_20_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_20_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_21_B2;
  wire sky130_fd_sc_hd__a22o_2_21_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_21_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_21_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_21_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_22_X;
  wire sky130_fd_sc_hd__a22o_2_22_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_22_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_22_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_22_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_2_A2;
  wire sky130_fd_sc_hd__a22o_2_2_B2;
  wire sky130_fd_sc_hd__a22o_2_2_X;
  wire sky130_fd_sc_hd__a22o_2_2_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_2_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_2_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_2_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_3_X;
  wire sky130_fd_sc_hd__a22o_2_3_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_3_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_3_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_3_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_4_B2;
  wire sky130_fd_sc_hd__a22o_2_4_X;
  wire sky130_fd_sc_hd__a22o_2_4_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_4_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_4_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_4_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_5_X;
  wire sky130_fd_sc_hd__a22o_2_5_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_5_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_5_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_5_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_6_X;
  wire sky130_fd_sc_hd__a22o_2_6_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_6_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_6_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_6_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_7_A1;
  wire sky130_fd_sc_hd__a22o_2_7_X;
  wire sky130_fd_sc_hd__a22o_2_7_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_7_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_7_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_7_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_8_X;
  wire sky130_fd_sc_hd__a22o_2_8_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_8_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_8_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_8_a_381_47_;
  wire sky130_fd_sc_hd__a22o_2_9_A1;
  wire sky130_fd_sc_hd__a22o_2_9_X;
  wire sky130_fd_sc_hd__a22o_2_9_a_109_297_;
  wire sky130_fd_sc_hd__a22o_2_9_a_109_47_;
  wire sky130_fd_sc_hd__a22o_2_9_a_27_297_;
  wire sky130_fd_sc_hd__a22o_2_9_a_381_47_;
  wire sky130_fd_sc_hd__a22oi_2_0_Y;
  wire sky130_fd_sc_hd__a22oi_2_0_a_109_297_;
  wire sky130_fd_sc_hd__a22oi_2_0_a_27_47_;
  wire sky130_fd_sc_hd__a22oi_2_0_a_467_47_;
  wire sky130_fd_sc_hd__a311o_2_0_a_319_297_;
  wire sky130_fd_sc_hd__a311o_2_0_a_319_47_;
  wire sky130_fd_sc_hd__a311o_2_0_a_417_47_;
  wire sky130_fd_sc_hd__a311o_2_0_a_635_297_;
  wire sky130_fd_sc_hd__a311o_2_0_a_79_21_;
  wire sky130_fd_sc_hd__a311o_2_1_a_319_297_;
  wire sky130_fd_sc_hd__a311o_2_1_a_319_47_;
  wire sky130_fd_sc_hd__a311o_2_1_a_417_47_;
  wire sky130_fd_sc_hd__a311o_2_1_a_635_297_;
  wire sky130_fd_sc_hd__a311o_2_1_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_0_X;
  wire sky130_fd_sc_hd__a31o_2_0_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_0_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_0_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_0_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_10_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_10_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_10_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_10_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_11_X;
  wire sky130_fd_sc_hd__a31o_2_11_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_11_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_11_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_11_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_12_X;
  wire sky130_fd_sc_hd__a31o_2_12_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_12_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_12_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_12_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_13_X;
  wire sky130_fd_sc_hd__a31o_2_13_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_13_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_13_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_13_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_14_X;
  wire sky130_fd_sc_hd__a31o_2_14_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_14_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_14_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_14_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_15_X;
  wire sky130_fd_sc_hd__a31o_2_15_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_15_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_15_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_15_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_16_X;
  wire sky130_fd_sc_hd__a31o_2_16_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_16_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_16_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_16_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_17_X;
  wire sky130_fd_sc_hd__a31o_2_17_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_17_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_17_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_17_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_18_X;
  wire sky130_fd_sc_hd__a31o_2_18_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_18_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_18_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_18_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_19_X;
  wire sky130_fd_sc_hd__a31o_2_19_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_19_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_19_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_19_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_1_X;
  wire sky130_fd_sc_hd__a31o_2_1_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_1_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_1_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_1_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_20_VPB;
  wire sky130_fd_sc_hd__a31o_2_20_X;
  wire sky130_fd_sc_hd__a31o_2_20_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_20_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_20_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_20_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_21_X;
  wire sky130_fd_sc_hd__a31o_2_21_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_21_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_21_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_21_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_22_X;
  wire sky130_fd_sc_hd__a31o_2_22_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_22_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_22_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_22_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_23_X;
  wire sky130_fd_sc_hd__a31o_2_23_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_23_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_23_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_23_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_24_X;
  wire sky130_fd_sc_hd__a31o_2_24_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_24_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_24_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_24_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_25_X;
  wire sky130_fd_sc_hd__a31o_2_25_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_25_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_25_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_25_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_2_X;
  wire sky130_fd_sc_hd__a31o_2_2_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_2_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_2_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_2_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_3_X;
  wire sky130_fd_sc_hd__a31o_2_3_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_3_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_3_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_3_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_4_X;
  wire sky130_fd_sc_hd__a31o_2_4_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_4_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_4_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_4_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_5_A2;
  wire sky130_fd_sc_hd__a31o_2_5_A3;
  wire sky130_fd_sc_hd__a31o_2_5_X;
  wire sky130_fd_sc_hd__a31o_2_5_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_5_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_5_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_5_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_6_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_6_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_6_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_6_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_7_X;
  wire sky130_fd_sc_hd__a31o_2_7_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_7_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_7_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_7_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_8_X;
  wire sky130_fd_sc_hd__a31o_2_8_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_8_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_8_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_8_a_79_21_;
  wire sky130_fd_sc_hd__a31o_2_9_X;
  wire sky130_fd_sc_hd__a31o_2_9_a_277_297_;
  wire sky130_fd_sc_hd__a31o_2_9_a_277_47_;
  wire sky130_fd_sc_hd__a31o_2_9_a_361_47_;
  wire sky130_fd_sc_hd__a31o_2_9_a_79_21_;
  wire sky130_fd_sc_hd__a31oi_2_0_a_277_47_;
  wire sky130_fd_sc_hd__a31oi_2_0_a_27_297_;
  wire sky130_fd_sc_hd__a31oi_2_0_a_27_47_;
  wire sky130_fd_sc_hd__a32o_2_0_a_21_199_;
  wire sky130_fd_sc_hd__a32o_2_0_a_299_297_;
  wire sky130_fd_sc_hd__a32o_2_0_a_352_47_;
  wire sky130_fd_sc_hd__a32o_2_0_a_549_47_;
  wire sky130_fd_sc_hd__a32o_2_0_a_665_47_;
  wire sky130_fd_sc_hd__a32o_2_1_B2;
  wire sky130_fd_sc_hd__a32o_2_1_X;
  wire sky130_fd_sc_hd__a32o_2_1_a_21_199_;
  wire sky130_fd_sc_hd__a32o_2_1_a_299_297_;
  wire sky130_fd_sc_hd__a32o_2_1_a_352_47_;
  wire sky130_fd_sc_hd__a32o_2_1_a_549_47_;
  wire sky130_fd_sc_hd__a32o_2_1_a_665_47_;
  wire sky130_fd_sc_hd__a32o_2_2_X;
  wire sky130_fd_sc_hd__a32o_2_2_a_21_199_;
  wire sky130_fd_sc_hd__a32o_2_2_a_299_297_;
  wire sky130_fd_sc_hd__a32o_2_2_a_352_47_;
  wire sky130_fd_sc_hd__a32o_2_2_a_549_47_;
  wire sky130_fd_sc_hd__a32o_2_2_a_665_47_;
  wire sky130_fd_sc_hd__a32o_2_3_B1;
  wire sky130_fd_sc_hd__a32o_2_3_X;
  wire sky130_fd_sc_hd__a32o_2_3_a_21_199_;
  wire sky130_fd_sc_hd__a32o_2_3_a_299_297_;
  wire sky130_fd_sc_hd__a32o_2_3_a_352_47_;
  wire sky130_fd_sc_hd__a32o_2_3_a_549_47_;
  wire sky130_fd_sc_hd__a32o_2_3_a_665_47_;
  wire sky130_fd_sc_hd__a32o_2_4_B2;
  wire sky130_fd_sc_hd__a32o_2_4_X;
  wire sky130_fd_sc_hd__a32o_2_4_a_21_199_;
  wire sky130_fd_sc_hd__a32o_2_4_a_299_297_;
  wire sky130_fd_sc_hd__a32o_2_4_a_352_47_;
  wire sky130_fd_sc_hd__a32o_2_4_a_549_47_;
  wire sky130_fd_sc_hd__a32o_2_4_a_665_47_;
  wire sky130_fd_sc_hd__a41oi_2_0_Y;
  wire sky130_fd_sc_hd__a41oi_2_0_a_149_297_;
  wire sky130_fd_sc_hd__a41oi_2_0_a_317_47_;
  wire sky130_fd_sc_hd__a41oi_2_0_a_567_47_;
  wire sky130_fd_sc_hd__a41oi_2_0_a_757_47_;
  wire sky130_fd_sc_hd__and2_2_0_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_0_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_10_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_10_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_11_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_11_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_12_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_12_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_13_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_13_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_14_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_14_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_15_X;
  wire sky130_fd_sc_hd__and2_2_15_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_15_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_16_VPB;
  wire sky130_fd_sc_hd__and2_2_16_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_16_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_1_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_1_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_2_A;
  wire sky130_fd_sc_hd__and2_2_2_X;
  wire sky130_fd_sc_hd__and2_2_2_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_2_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_3_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_3_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_4_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_4_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_5_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_5_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_6_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_6_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_7_B;
  wire sky130_fd_sc_hd__and2_2_7_X;
  wire sky130_fd_sc_hd__and2_2_7_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_7_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_8_A;
  wire sky130_fd_sc_hd__and2_2_8_B;
  wire sky130_fd_sc_hd__and2_2_8_X;
  wire sky130_fd_sc_hd__and2_2_8_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_8_a_61_75_;
  wire sky130_fd_sc_hd__and2_2_9_a_147_75_;
  wire sky130_fd_sc_hd__and2_2_9_a_61_75_;
  wire sky130_fd_sc_hd__and2b_2_0_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_0_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_0_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_10_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_10_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_10_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_11_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_11_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_11_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_12_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_12_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_12_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_13_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_13_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_13_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_14_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_14_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_14_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_15_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_15_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_15_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_16_X;
  wire sky130_fd_sc_hd__and2b_2_16_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_16_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_16_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_17_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_17_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_17_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_18_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_18_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_18_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_19_X;
  wire sky130_fd_sc_hd__and2b_2_19_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_19_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_19_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_1_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_1_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_1_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_20_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_20_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_20_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_21_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_21_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_21_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_22_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_22_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_22_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_23_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_23_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_23_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_24_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_24_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_24_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_25_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_25_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_25_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_26_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_26_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_26_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_27_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_27_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_27_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_28_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_28_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_28_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_29_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_29_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_29_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_2_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_2_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_2_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_3_B;
  wire sky130_fd_sc_hd__and2b_2_3_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_3_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_3_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_4_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_4_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_4_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_5_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_5_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_5_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_6_X;
  wire sky130_fd_sc_hd__and2b_2_6_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_6_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_6_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_7_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_7_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_7_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_8_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_8_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_8_a_297_47_;
  wire sky130_fd_sc_hd__and2b_2_9_B;
  wire sky130_fd_sc_hd__and2b_2_9_X;
  wire sky130_fd_sc_hd__and2b_2_9_a_212_413_;
  wire sky130_fd_sc_hd__and2b_2_9_a_27_413_;
  wire sky130_fd_sc_hd__and2b_2_9_a_297_47_;
  wire sky130_fd_sc_hd__and3_2_0_C;
  wire sky130_fd_sc_hd__and3_2_0_X;
  wire sky130_fd_sc_hd__and3_2_0_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_0_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_0_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_10_A;
  wire sky130_fd_sc_hd__and3_2_10_B;
  wire sky130_fd_sc_hd__and3_2_10_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_10_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_10_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_11_X;
  wire sky130_fd_sc_hd__and3_2_11_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_11_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_11_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_12_A;
  wire sky130_fd_sc_hd__and3_2_12_B;
  wire sky130_fd_sc_hd__and3_2_12_C;
  wire sky130_fd_sc_hd__and3_2_12_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_12_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_12_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_13_C;
  wire sky130_fd_sc_hd__and3_2_13_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_13_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_13_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_14_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_14_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_14_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_15_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_15_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_15_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_16_X;
  wire sky130_fd_sc_hd__and3_2_16_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_16_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_16_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_17_C;
  wire sky130_fd_sc_hd__and3_2_17_X;
  wire sky130_fd_sc_hd__and3_2_17_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_17_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_17_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_18_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_18_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_18_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_19_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_19_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_19_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_1_C;
  wire sky130_fd_sc_hd__and3_2_1_X;
  wire sky130_fd_sc_hd__and3_2_1_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_1_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_1_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_20_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_20_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_20_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_21_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_21_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_21_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_22_VPB;
  wire sky130_fd_sc_hd__and3_2_22_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_22_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_22_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_23_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_23_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_23_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_24_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_24_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_24_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_25_C;
  wire sky130_fd_sc_hd__and3_2_25_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_25_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_25_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_2_A;
  wire sky130_fd_sc_hd__and3_2_2_B;
  wire sky130_fd_sc_hd__and3_2_2_C;
  wire sky130_fd_sc_hd__and3_2_2_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_2_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_2_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_3_B;
  wire sky130_fd_sc_hd__and3_2_3_C;
  wire sky130_fd_sc_hd__and3_2_3_VPB;
  wire sky130_fd_sc_hd__and3_2_3_X;
  wire sky130_fd_sc_hd__and3_2_3_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_3_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_3_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_4_A;
  wire sky130_fd_sc_hd__and3_2_4_B;
  wire sky130_fd_sc_hd__and3_2_4_X;
  wire sky130_fd_sc_hd__and3_2_4_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_4_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_4_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_5_A;
  wire sky130_fd_sc_hd__and3_2_5_B;
  wire sky130_fd_sc_hd__and3_2_5_C;
  wire sky130_fd_sc_hd__and3_2_5_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_5_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_5_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_6_C;
  wire sky130_fd_sc_hd__and3_2_6_X;
  wire sky130_fd_sc_hd__and3_2_6_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_6_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_6_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_7_C;
  wire sky130_fd_sc_hd__and3_2_7_X;
  wire sky130_fd_sc_hd__and3_2_7_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_7_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_7_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_8_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_8_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_8_a_29_311_;
  wire sky130_fd_sc_hd__and3_2_9_VPB;
  wire sky130_fd_sc_hd__and3_2_9_a_112_53_;
  wire sky130_fd_sc_hd__and3_2_9_a_184_53_;
  wire sky130_fd_sc_hd__and3_2_9_a_29_311_;
  wire sky130_fd_sc_hd__and3b_2_0_C;
  wire sky130_fd_sc_hd__and3b_2_0_a_109_53_;
  wire sky130_fd_sc_hd__and3b_2_0_a_215_311_;
  wire sky130_fd_sc_hd__and3b_2_0_a_301_53_;
  wire sky130_fd_sc_hd__and3b_2_0_a_373_53_;
  wire sky130_fd_sc_hd__and3b_2_1_X;
  wire sky130_fd_sc_hd__and3b_2_1_a_109_53_;
  wire sky130_fd_sc_hd__and3b_2_1_a_215_311_;
  wire sky130_fd_sc_hd__and3b_2_1_a_301_53_;
  wire sky130_fd_sc_hd__and3b_2_1_a_373_53_;
  wire sky130_fd_sc_hd__and3b_2_2_X;
  wire sky130_fd_sc_hd__and3b_2_2_a_109_53_;
  wire sky130_fd_sc_hd__and3b_2_2_a_215_311_;
  wire sky130_fd_sc_hd__and3b_2_2_a_301_53_;
  wire sky130_fd_sc_hd__and3b_2_2_a_373_53_;
  wire sky130_fd_sc_hd__and3b_2_3_a_109_53_;
  wire sky130_fd_sc_hd__and3b_2_3_a_215_311_;
  wire sky130_fd_sc_hd__and3b_2_3_a_301_53_;
  wire sky130_fd_sc_hd__and3b_2_3_a_373_53_;
  wire sky130_fd_sc_hd__and4_2_0_A;
  wire sky130_fd_sc_hd__and4_2_0_B;
  wire sky130_fd_sc_hd__and4_2_0_C;
  wire sky130_fd_sc_hd__and4_2_0_D;
  wire sky130_fd_sc_hd__and4_2_0_VPB;
  wire sky130_fd_sc_hd__and4_2_0_X;
  wire sky130_fd_sc_hd__and4_2_0_a_109_47_;
  wire sky130_fd_sc_hd__and4_2_0_a_198_47_;
  wire sky130_fd_sc_hd__and4_2_0_a_27_47_;
  wire sky130_fd_sc_hd__and4_2_0_a_304_47_;
  wire sky130_fd_sc_hd__and4_2_1_A;
  wire sky130_fd_sc_hd__and4_2_1_B;
  wire sky130_fd_sc_hd__and4_2_1_C;
  wire sky130_fd_sc_hd__and4_2_1_D;
  wire sky130_fd_sc_hd__and4_2_1_VPB;
  wire sky130_fd_sc_hd__and4_2_1_X;
  wire sky130_fd_sc_hd__and4_2_1_a_109_47_;
  wire sky130_fd_sc_hd__and4_2_1_a_198_47_;
  wire sky130_fd_sc_hd__and4_2_1_a_27_47_;
  wire sky130_fd_sc_hd__and4_2_1_a_304_47_;
  wire sky130_fd_sc_hd__and4_2_2_a_109_47_;
  wire sky130_fd_sc_hd__and4_2_2_a_198_47_;
  wire sky130_fd_sc_hd__and4_2_2_a_27_47_;
  wire sky130_fd_sc_hd__and4_2_2_a_304_47_;
  wire sky130_fd_sc_hd__and4_2_3_A;
  wire sky130_fd_sc_hd__and4_2_3_B;
  wire sky130_fd_sc_hd__and4_2_3_C;
  wire sky130_fd_sc_hd__and4_2_3_X;
  wire sky130_fd_sc_hd__and4_2_3_a_109_47_;
  wire sky130_fd_sc_hd__and4_2_3_a_198_47_;
  wire sky130_fd_sc_hd__and4_2_3_a_27_47_;
  wire sky130_fd_sc_hd__and4_2_3_a_304_47_;
  wire sky130_fd_sc_hd__and4_2_4_B;
  wire sky130_fd_sc_hd__and4_2_4_D;
  wire sky130_fd_sc_hd__and4_2_4_X;
  wire sky130_fd_sc_hd__and4_2_4_a_109_47_;
  wire sky130_fd_sc_hd__and4_2_4_a_198_47_;
  wire sky130_fd_sc_hd__and4_2_4_a_27_47_;
  wire sky130_fd_sc_hd__and4_2_4_a_304_47_;
  wire sky130_fd_sc_hd__and4_2_5_A;
  wire sky130_fd_sc_hd__and4_2_5_B;
  wire sky130_fd_sc_hd__and4_2_5_C;
  wire sky130_fd_sc_hd__and4_2_5_D;
  wire sky130_fd_sc_hd__and4_2_5_X;
  wire sky130_fd_sc_hd__and4_2_5_a_109_47_;
  wire sky130_fd_sc_hd__and4_2_5_a_198_47_;
  wire sky130_fd_sc_hd__and4_2_5_a_27_47_;
  wire sky130_fd_sc_hd__and4_2_5_a_304_47_;
  wire sky130_fd_sc_hd__and4_2_6_A;
  wire sky130_fd_sc_hd__and4_2_6_B;
  wire sky130_fd_sc_hd__and4_2_6_C;
  wire sky130_fd_sc_hd__and4_2_6_D;
  wire sky130_fd_sc_hd__and4_2_6_X;
  wire sky130_fd_sc_hd__and4_2_6_a_109_47_;
  wire sky130_fd_sc_hd__and4_2_6_a_198_47_;
  wire sky130_fd_sc_hd__and4_2_6_a_27_47_;
  wire sky130_fd_sc_hd__and4_2_6_a_304_47_;
  wire sky130_fd_sc_hd__and4_2_7_X;
  wire sky130_fd_sc_hd__and4_2_7_a_109_47_;
  wire sky130_fd_sc_hd__and4_2_7_a_198_47_;
  wire sky130_fd_sc_hd__and4_2_7_a_27_47_;
  wire sky130_fd_sc_hd__and4_2_7_a_304_47_;
  wire sky130_fd_sc_hd__and4b_2_0_a_193_413_;
  wire sky130_fd_sc_hd__and4b_2_0_a_27_413_;
  wire sky130_fd_sc_hd__and4b_2_0_a_297_47_;
  wire sky130_fd_sc_hd__and4b_2_0_a_369_47_;
  wire sky130_fd_sc_hd__and4b_2_0_a_469_47_;
  wire sky130_fd_sc_hd__and4b_2_1_a_193_413_;
  wire sky130_fd_sc_hd__and4b_2_1_a_27_413_;
  wire sky130_fd_sc_hd__and4b_2_1_a_297_47_;
  wire sky130_fd_sc_hd__and4b_2_1_a_369_47_;
  wire sky130_fd_sc_hd__and4b_2_1_a_469_47_;
  wire sky130_fd_sc_hd__and4b_2_2_X;
  wire sky130_fd_sc_hd__and4b_2_2_a_193_413_;
  wire sky130_fd_sc_hd__and4b_2_2_a_27_413_;
  wire sky130_fd_sc_hd__and4b_2_2_a_297_47_;
  wire sky130_fd_sc_hd__and4b_2_2_a_369_47_;
  wire sky130_fd_sc_hd__and4b_2_2_a_469_47_;
  wire sky130_fd_sc_hd__and4b_2_3_D;
  wire sky130_fd_sc_hd__and4b_2_3_X;
  wire sky130_fd_sc_hd__and4b_2_3_a_193_413_;
  wire sky130_fd_sc_hd__and4b_2_3_a_27_413_;
  wire sky130_fd_sc_hd__and4b_2_3_a_297_47_;
  wire sky130_fd_sc_hd__and4b_2_3_a_369_47_;
  wire sky130_fd_sc_hd__and4b_2_3_a_469_47_;
  wire sky130_fd_sc_hd__and4bb_2_0_X;
  wire sky130_fd_sc_hd__and4bb_2_0_a_174_21_;
  wire sky130_fd_sc_hd__and4bb_2_0_a_27_47_;
  wire sky130_fd_sc_hd__and4bb_2_0_a_476_47_;
  wire sky130_fd_sc_hd__and4bb_2_0_a_505_280_;
  wire sky130_fd_sc_hd__and4bb_2_0_a_548_47_;
  wire sky130_fd_sc_hd__and4bb_2_0_a_639_47_;
  wire sky130_fd_sc_hd__and4bb_2_10_a_174_21_;
  wire sky130_fd_sc_hd__and4bb_2_10_a_27_47_;
  wire sky130_fd_sc_hd__and4bb_2_10_a_476_47_;
  wire sky130_fd_sc_hd__and4bb_2_10_a_505_280_;
  wire sky130_fd_sc_hd__and4bb_2_10_a_548_47_;
  wire sky130_fd_sc_hd__and4bb_2_10_a_639_47_;
  wire sky130_fd_sc_hd__and4bb_2_11_a_174_21_;
  wire sky130_fd_sc_hd__and4bb_2_11_a_27_47_;
  wire sky130_fd_sc_hd__and4bb_2_11_a_476_47_;
  wire sky130_fd_sc_hd__and4bb_2_11_a_505_280_;
  wire sky130_fd_sc_hd__and4bb_2_11_a_548_47_;
  wire sky130_fd_sc_hd__and4bb_2_11_a_639_47_;
  wire sky130_fd_sc_hd__and4bb_2_12_a_174_21_;
  wire sky130_fd_sc_hd__and4bb_2_12_a_27_47_;
  wire sky130_fd_sc_hd__and4bb_2_12_a_476_47_;
  wire sky130_fd_sc_hd__and4bb_2_12_a_505_280_;
  wire sky130_fd_sc_hd__and4bb_2_12_a_548_47_;
  wire sky130_fd_sc_hd__and4bb_2_12_a_639_47_;
  wire sky130_fd_sc_hd__and4bb_2_13_a_174_21_;
  wire sky130_fd_sc_hd__and4bb_2_13_a_27_47_;
  wire sky130_fd_sc_hd__and4bb_2_13_a_476_47_;
  wire sky130_fd_sc_hd__and4bb_2_13_a_505_280_;
  wire sky130_fd_sc_hd__and4bb_2_13_a_548_47_;
  wire sky130_fd_sc_hd__and4bb_2_13_a_639_47_;
  wire sky130_fd_sc_hd__and4bb_2_1_a_174_21_;
  wire sky130_fd_sc_hd__and4bb_2_1_a_27_47_;
  wire sky130_fd_sc_hd__and4bb_2_1_a_476_47_;
  wire sky130_fd_sc_hd__and4bb_2_1_a_505_280_;
  wire sky130_fd_sc_hd__and4bb_2_1_a_548_47_;
  wire sky130_fd_sc_hd__and4bb_2_1_a_639_47_;
  wire sky130_fd_sc_hd__and4bb_2_2_a_174_21_;
  wire sky130_fd_sc_hd__and4bb_2_2_a_27_47_;
  wire sky130_fd_sc_hd__and4bb_2_2_a_476_47_;
  wire sky130_fd_sc_hd__and4bb_2_2_a_505_280_;
  wire sky130_fd_sc_hd__and4bb_2_2_a_548_47_;
  wire sky130_fd_sc_hd__and4bb_2_2_a_639_47_;
  wire sky130_fd_sc_hd__and4bb_2_3_a_174_21_;
  wire sky130_fd_sc_hd__and4bb_2_3_a_27_47_;
  wire sky130_fd_sc_hd__and4bb_2_3_a_476_47_;
  wire sky130_fd_sc_hd__and4bb_2_3_a_505_280_;
  wire sky130_fd_sc_hd__and4bb_2_3_a_548_47_;
  wire sky130_fd_sc_hd__and4bb_2_3_a_639_47_;
  wire sky130_fd_sc_hd__and4bb_2_4_a_174_21_;
  wire sky130_fd_sc_hd__and4bb_2_4_a_27_47_;
  wire sky130_fd_sc_hd__and4bb_2_4_a_476_47_;
  wire sky130_fd_sc_hd__and4bb_2_4_a_505_280_;
  wire sky130_fd_sc_hd__and4bb_2_4_a_548_47_;
  wire sky130_fd_sc_hd__and4bb_2_4_a_639_47_;
  wire sky130_fd_sc_hd__and4bb_2_5_a_174_21_;
  wire sky130_fd_sc_hd__and4bb_2_5_a_27_47_;
  wire sky130_fd_sc_hd__and4bb_2_5_a_476_47_;
  wire sky130_fd_sc_hd__and4bb_2_5_a_505_280_;
  wire sky130_fd_sc_hd__and4bb_2_5_a_548_47_;
  wire sky130_fd_sc_hd__and4bb_2_5_a_639_47_;
  wire sky130_fd_sc_hd__and4bb_2_6_a_174_21_;
  wire sky130_fd_sc_hd__and4bb_2_6_a_27_47_;
  wire sky130_fd_sc_hd__and4bb_2_6_a_476_47_;
  wire sky130_fd_sc_hd__and4bb_2_6_a_505_280_;
  wire sky130_fd_sc_hd__and4bb_2_6_a_548_47_;
  wire sky130_fd_sc_hd__and4bb_2_6_a_639_47_;
  wire sky130_fd_sc_hd__and4bb_2_7_a_174_21_;
  wire sky130_fd_sc_hd__and4bb_2_7_a_27_47_;
  wire sky130_fd_sc_hd__and4bb_2_7_a_476_47_;
  wire sky130_fd_sc_hd__and4bb_2_7_a_505_280_;
  wire sky130_fd_sc_hd__and4bb_2_7_a_548_47_;
  wire sky130_fd_sc_hd__and4bb_2_7_a_639_47_;
  wire sky130_fd_sc_hd__and4bb_2_8_a_174_21_;
  wire sky130_fd_sc_hd__and4bb_2_8_a_27_47_;
  wire sky130_fd_sc_hd__and4bb_2_8_a_476_47_;
  wire sky130_fd_sc_hd__and4bb_2_8_a_505_280_;
  wire sky130_fd_sc_hd__and4bb_2_8_a_548_47_;
  wire sky130_fd_sc_hd__and4bb_2_8_a_639_47_;
  wire sky130_fd_sc_hd__and4bb_2_9_a_174_21_;
  wire sky130_fd_sc_hd__and4bb_2_9_a_27_47_;
  wire sky130_fd_sc_hd__and4bb_2_9_a_476_47_;
  wire sky130_fd_sc_hd__and4bb_2_9_a_505_280_;
  wire sky130_fd_sc_hd__and4bb_2_9_a_548_47_;
  wire sky130_fd_sc_hd__and4bb_2_9_a_639_47_;
  wire sky130_fd_sc_hd__buf_2_0_X;
  wire sky130_fd_sc_hd__buf_2_0_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_16_0_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_4_0_X;
  wire sky130_fd_sc_hd__clkbuf_4_0_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_4_10_X;
  wire sky130_fd_sc_hd__clkbuf_4_10_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_4_11_X;
  wire sky130_fd_sc_hd__clkbuf_4_11_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_4_12_X;
  wire sky130_fd_sc_hd__clkbuf_4_12_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_4_13_X;
  wire sky130_fd_sc_hd__clkbuf_4_13_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_4_14_X;
  wire sky130_fd_sc_hd__clkbuf_4_14_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_4_1_X;
  wire sky130_fd_sc_hd__clkbuf_4_1_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_4_2_X;
  wire sky130_fd_sc_hd__clkbuf_4_2_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_4_3_X;
  wire sky130_fd_sc_hd__clkbuf_4_3_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_4_4_X;
  wire sky130_fd_sc_hd__clkbuf_4_4_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_4_5_X;
  wire sky130_fd_sc_hd__clkbuf_4_5_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_4_6_X;
  wire sky130_fd_sc_hd__clkbuf_4_6_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_4_7_X;
  wire sky130_fd_sc_hd__clkbuf_4_7_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_4_8_X;
  wire sky130_fd_sc_hd__clkbuf_4_8_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_4_9_A;
  wire sky130_fd_sc_hd__clkbuf_4_9_VPB;
  wire sky130_fd_sc_hd__clkbuf_4_9_X;
  wire sky130_fd_sc_hd__clkbuf_4_9_a_27_47_;
  wire sky130_fd_sc_hd__clkbuf_8_0_X;
  wire sky130_fd_sc_hd__clkbuf_8_0_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_8_10_X;
  wire sky130_fd_sc_hd__clkbuf_8_10_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_8_11_X;
  wire sky130_fd_sc_hd__clkbuf_8_11_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_8_12_VPB;
  wire sky130_fd_sc_hd__clkbuf_8_12_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_8_13_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_8_14_VPB;
  wire sky130_fd_sc_hd__clkbuf_8_14_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_8_15_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_8_1_X;
  wire sky130_fd_sc_hd__clkbuf_8_1_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_8_2_X;
  wire sky130_fd_sc_hd__clkbuf_8_2_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_8_3_X;
  wire sky130_fd_sc_hd__clkbuf_8_3_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_8_4_X;
  wire sky130_fd_sc_hd__clkbuf_8_4_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_8_5_X;
  wire sky130_fd_sc_hd__clkbuf_8_5_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_8_6_X;
  wire sky130_fd_sc_hd__clkbuf_8_6_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_8_7_X;
  wire sky130_fd_sc_hd__clkbuf_8_7_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_8_8_X;
  wire sky130_fd_sc_hd__clkbuf_8_8_a_110_47_;
  wire sky130_fd_sc_hd__clkbuf_8_9_A;
  wire sky130_fd_sc_hd__clkbuf_8_9_X;
  wire sky130_fd_sc_hd__clkbuf_8_9_a_110_47_;
  wire sky130_fd_sc_hd__conb_1_0_LO;
  wire sky130_fd_sc_hd__conb_1_2_HI;
  wire sky130_fd_sc_hd__conb_1_3_LO;
  wire sky130_fd_sc_hd__conb_1_4_LO;
  wire sky130_fd_sc_hd__conb_1_5_LO;
  wire sky130_fd_sc_hd__dfrtp_2_0_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_0_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_0_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_0_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_0_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_0_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_0_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_0_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_0_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_0_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_0_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_0_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_0_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_10_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_10_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_10_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_10_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_10_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_10_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_10_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_10_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_10_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_10_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_10_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_10_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_10_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_11_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_11_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_11_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_11_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_11_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_11_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_11_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_11_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_11_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_11_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_11_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_11_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_11_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_12_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_12_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_12_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_12_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_12_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_12_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_12_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_12_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_12_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_12_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_12_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_12_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_12_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_13_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_13_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_13_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_13_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_13_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_13_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_13_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_13_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_13_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_13_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_13_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_13_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_13_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_14_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_14_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_14_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_14_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_14_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_14_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_14_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_14_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_14_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_14_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_14_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_14_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_14_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_15_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_15_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_15_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_15_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_15_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_15_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_15_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_15_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_15_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_15_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_15_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_15_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_15_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_16_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_16_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_16_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_16_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_16_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_16_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_16_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_16_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_16_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_16_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_16_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_16_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_16_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_17_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_17_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_17_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_17_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_17_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_17_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_17_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_17_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_17_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_17_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_17_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_17_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_17_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_18_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_18_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_18_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_18_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_18_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_18_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_18_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_18_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_18_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_18_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_18_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_18_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_18_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_19_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_19_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_19_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_19_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_19_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_19_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_19_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_19_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_19_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_19_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_19_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_19_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_19_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_1_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_1_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_1_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_1_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_1_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_1_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_1_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_1_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_1_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_1_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_1_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_1_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_1_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_20_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_20_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_20_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_20_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_20_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_20_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_20_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_20_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_20_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_20_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_20_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_20_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_20_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_21_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_21_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_21_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_21_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_21_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_21_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_21_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_21_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_21_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_21_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_21_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_21_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_21_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_22_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_22_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_22_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_22_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_22_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_22_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_22_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_22_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_22_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_22_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_22_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_22_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_22_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_23_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_23_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_23_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_23_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_23_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_23_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_23_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_23_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_23_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_23_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_23_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_23_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_23_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_24_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_24_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_24_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_24_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_24_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_24_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_24_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_24_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_24_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_24_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_24_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_24_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_24_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_25_D;
  wire sky130_fd_sc_hd__dfrtp_2_25_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_25_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_25_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_25_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_25_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_25_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_25_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_25_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_25_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_25_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_25_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_25_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_25_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_26_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_26_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_26_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_26_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_26_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_26_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_26_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_26_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_26_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_26_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_26_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_26_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_26_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_27_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_27_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_27_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_27_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_27_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_27_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_27_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_27_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_27_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_27_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_27_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_27_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_27_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_28_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_28_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_28_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_28_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_28_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_28_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_28_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_28_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_28_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_28_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_28_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_28_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_28_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_29_D;
  wire sky130_fd_sc_hd__dfrtp_2_29_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_29_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_29_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_29_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_29_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_29_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_29_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_29_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_29_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_29_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_29_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_29_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_29_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_2_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_2_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_2_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_2_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_2_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_2_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_2_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_2_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_2_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_2_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_2_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_2_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_2_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_30_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_30_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_30_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_30_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_30_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_30_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_30_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_30_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_30_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_30_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_30_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_30_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_30_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_31_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_31_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_31_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_31_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_31_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_31_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_31_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_31_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_31_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_31_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_31_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_31_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_31_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_32_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_32_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_32_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_32_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_32_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_32_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_32_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_32_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_32_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_32_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_32_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_32_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_32_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_33_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_33_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_33_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_33_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_33_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_33_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_33_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_33_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_33_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_33_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_33_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_33_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_33_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_34_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_34_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_34_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_34_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_34_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_34_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_34_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_34_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_34_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_34_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_34_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_34_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_34_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_35_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_35_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_35_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_35_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_35_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_35_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_35_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_35_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_35_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_35_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_35_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_35_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_35_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_36_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_36_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_36_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_36_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_36_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_36_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_36_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_36_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_36_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_36_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_36_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_36_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_36_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_37_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_37_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_37_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_37_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_37_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_37_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_37_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_37_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_37_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_37_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_37_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_37_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_37_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_38_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_38_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_38_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_38_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_38_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_38_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_38_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_38_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_38_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_38_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_38_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_38_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_38_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_39_VPB;
  wire sky130_fd_sc_hd__dfrtp_2_39_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_39_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_39_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_39_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_39_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_39_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_39_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_39_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_39_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_39_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_39_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_39_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_39_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_3_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_3_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_3_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_3_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_3_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_3_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_3_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_3_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_3_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_3_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_3_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_3_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_3_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_40_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_40_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_40_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_40_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_40_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_40_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_40_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_40_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_40_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_40_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_40_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_40_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_40_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_41_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_41_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_41_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_41_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_41_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_41_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_41_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_41_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_41_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_41_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_41_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_41_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_41_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_42_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_42_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_42_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_42_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_42_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_42_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_42_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_42_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_42_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_42_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_42_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_42_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_42_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_43_D;
  wire sky130_fd_sc_hd__dfrtp_2_43_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_43_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_43_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_43_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_43_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_43_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_43_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_43_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_43_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_43_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_43_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_43_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_43_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_44_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_44_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_44_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_44_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_44_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_44_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_44_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_44_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_44_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_44_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_44_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_44_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_44_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_45_D;
  wire sky130_fd_sc_hd__dfrtp_2_45_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_45_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_45_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_45_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_45_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_45_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_45_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_45_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_45_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_45_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_45_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_45_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_45_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_46_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_46_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_46_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_46_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_46_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_46_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_46_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_46_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_46_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_46_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_46_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_46_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_46_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_47_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_47_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_47_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_47_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_47_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_47_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_47_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_47_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_47_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_47_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_47_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_47_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_47_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_48_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_48_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_48_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_48_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_48_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_48_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_48_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_48_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_48_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_48_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_48_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_48_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_48_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_49_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_49_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_49_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_49_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_49_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_49_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_49_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_49_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_49_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_49_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_49_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_49_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_49_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_4_D;
  wire sky130_fd_sc_hd__dfrtp_2_4_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_4_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_4_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_4_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_4_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_4_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_4_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_4_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_4_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_4_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_4_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_4_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_4_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_50_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_50_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_50_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_50_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_50_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_50_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_50_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_50_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_50_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_50_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_50_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_50_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_50_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_51_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_51_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_51_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_51_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_51_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_51_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_51_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_51_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_51_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_51_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_51_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_51_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_51_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_52_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_52_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_52_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_52_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_52_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_52_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_52_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_52_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_52_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_52_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_52_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_52_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_52_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_53_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_53_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_53_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_53_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_53_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_53_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_53_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_53_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_53_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_53_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_53_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_53_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_53_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_54_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_54_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_54_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_54_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_54_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_54_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_54_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_54_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_54_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_54_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_54_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_54_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_54_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_55_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_55_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_55_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_55_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_55_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_55_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_55_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_55_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_55_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_55_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_55_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_55_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_55_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_56_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_56_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_56_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_56_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_56_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_56_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_56_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_56_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_56_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_56_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_56_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_56_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_56_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_57_D;
  wire sky130_fd_sc_hd__dfrtp_2_57_VPB;
  wire sky130_fd_sc_hd__dfrtp_2_57_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_57_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_57_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_57_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_57_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_57_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_57_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_57_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_57_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_57_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_57_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_57_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_57_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_58_D;
  wire sky130_fd_sc_hd__dfrtp_2_58_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_58_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_58_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_58_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_58_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_58_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_58_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_58_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_58_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_58_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_58_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_58_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_58_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_59_D;
  wire sky130_fd_sc_hd__dfrtp_2_59_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_59_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_59_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_59_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_59_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_59_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_59_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_59_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_59_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_59_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_59_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_59_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_59_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_5_VPB;
  wire sky130_fd_sc_hd__dfrtp_2_5_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_5_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_5_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_5_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_5_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_5_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_5_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_5_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_5_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_5_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_5_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_5_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_5_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_60_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_60_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_60_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_60_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_60_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_60_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_60_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_60_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_60_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_60_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_60_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_60_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_60_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_61_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_61_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_61_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_61_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_61_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_61_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_61_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_61_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_61_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_61_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_61_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_61_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_61_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_62_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_62_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_62_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_62_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_62_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_62_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_62_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_62_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_62_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_62_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_62_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_62_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_62_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_63_D;
  wire sky130_fd_sc_hd__dfrtp_2_63_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_63_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_63_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_63_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_63_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_63_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_63_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_63_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_63_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_63_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_63_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_63_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_63_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_64_D;
  wire sky130_fd_sc_hd__dfrtp_2_64_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_64_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_64_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_64_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_64_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_64_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_64_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_64_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_64_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_64_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_64_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_64_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_64_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_65_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_65_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_65_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_65_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_65_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_65_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_65_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_65_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_65_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_65_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_65_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_65_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_65_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_66_D;
  wire sky130_fd_sc_hd__dfrtp_2_66_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_66_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_66_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_66_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_66_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_66_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_66_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_66_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_66_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_66_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_66_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_66_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_66_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_67_D;
  wire sky130_fd_sc_hd__dfrtp_2_67_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_67_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_67_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_67_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_67_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_67_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_67_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_67_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_67_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_67_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_67_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_67_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_67_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_68_D;
  wire sky130_fd_sc_hd__dfrtp_2_68_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_68_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_68_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_68_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_68_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_68_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_68_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_68_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_68_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_68_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_68_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_68_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_68_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_69_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_69_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_69_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_69_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_69_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_69_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_69_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_69_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_69_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_69_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_69_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_69_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_69_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_6_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_6_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_6_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_6_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_6_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_6_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_6_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_6_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_6_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_6_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_6_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_6_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_6_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_70_D;
  wire sky130_fd_sc_hd__dfrtp_2_70_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_70_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_70_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_70_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_70_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_70_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_70_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_70_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_70_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_70_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_70_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_70_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_70_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_71_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_71_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_71_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_71_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_71_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_71_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_71_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_71_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_71_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_71_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_71_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_71_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_71_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_72_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_72_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_72_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_72_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_72_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_72_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_72_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_72_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_72_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_72_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_72_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_72_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_72_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_73_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_73_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_73_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_73_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_73_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_73_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_73_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_73_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_73_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_73_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_73_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_73_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_73_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_74_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_74_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_74_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_74_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_74_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_74_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_74_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_74_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_74_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_74_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_74_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_74_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_74_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_75_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_75_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_75_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_75_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_75_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_75_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_75_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_75_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_75_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_75_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_75_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_75_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_75_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_76_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_76_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_76_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_76_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_76_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_76_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_76_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_76_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_76_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_76_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_76_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_76_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_76_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_77_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_77_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_77_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_77_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_77_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_77_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_77_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_77_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_77_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_77_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_77_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_77_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_77_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_78_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_78_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_78_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_78_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_78_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_78_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_78_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_78_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_78_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_78_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_78_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_78_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_78_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_79_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_79_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_79_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_79_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_79_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_79_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_79_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_79_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_79_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_79_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_79_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_79_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_79_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_7_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_7_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_7_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_7_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_7_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_7_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_7_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_7_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_7_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_7_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_7_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_7_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_7_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_80_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_80_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_80_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_80_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_80_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_80_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_80_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_80_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_80_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_80_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_80_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_80_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_80_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_81_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_81_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_81_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_81_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_81_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_81_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_81_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_81_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_81_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_81_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_81_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_81_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_81_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_82_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_82_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_82_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_82_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_82_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_82_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_82_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_82_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_82_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_82_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_82_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_82_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_82_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_83_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_83_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_83_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_83_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_83_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_83_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_83_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_83_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_83_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_83_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_83_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_83_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_83_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_8_CLK;
  wire sky130_fd_sc_hd__dfrtp_2_8_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_8_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_8_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_8_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_8_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_8_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_8_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_8_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_8_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_8_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_8_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_8_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_8_a_805_47_;
  wire sky130_fd_sc_hd__dfrtp_2_9_a_1108_47_;
  wire sky130_fd_sc_hd__dfrtp_2_9_a_1217_47_;
  wire sky130_fd_sc_hd__dfrtp_2_9_a_1270_413_;
  wire sky130_fd_sc_hd__dfrtp_2_9_a_1283_21_;
  wire sky130_fd_sc_hd__dfrtp_2_9_a_1462_47_;
  wire sky130_fd_sc_hd__dfrtp_2_9_a_193_47_;
  wire sky130_fd_sc_hd__dfrtp_2_9_a_27_47_;
  wire sky130_fd_sc_hd__dfrtp_2_9_a_448_47_;
  wire sky130_fd_sc_hd__dfrtp_2_9_a_543_47_;
  wire sky130_fd_sc_hd__dfrtp_2_9_a_639_47_;
  wire sky130_fd_sc_hd__dfrtp_2_9_a_651_413_;
  wire sky130_fd_sc_hd__dfrtp_2_9_a_761_289_;
  wire sky130_fd_sc_hd__dfrtp_2_9_a_805_47_;
  wire sky130_fd_sc_hd__dfstp_2_0_D;
  wire sky130_fd_sc_hd__dfstp_2_0_a_1028_413_;
  wire sky130_fd_sc_hd__dfstp_2_0_a_1056_47_;
  wire sky130_fd_sc_hd__dfstp_2_0_a_1136_413_;
  wire sky130_fd_sc_hd__dfstp_2_0_a_1178_261_;
  wire sky130_fd_sc_hd__dfstp_2_0_a_1228_47_;
  wire sky130_fd_sc_hd__dfstp_2_0_a_1300_47_;
  wire sky130_fd_sc_hd__dfstp_2_0_a_1602_47_;
  wire sky130_fd_sc_hd__dfstp_2_0_a_193_47_;
  wire sky130_fd_sc_hd__dfstp_2_0_a_27_47_;
  wire sky130_fd_sc_hd__dfstp_2_0_a_381_47_;
  wire sky130_fd_sc_hd__dfstp_2_0_a_476_47_;
  wire sky130_fd_sc_hd__dfstp_2_0_a_562_413_;
  wire sky130_fd_sc_hd__dfstp_2_0_a_586_47_;
  wire sky130_fd_sc_hd__dfstp_2_0_a_652_21_;
  wire sky130_fd_sc_hd__dfstp_2_0_a_796_47_;
  wire sky130_fd_sc_hd__dfstp_2_0_a_956_413_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_1028_413_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_1056_47_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_1136_413_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_1178_261_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_1228_47_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_1300_47_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_1602_47_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_193_47_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_27_47_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_381_47_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_476_47_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_562_413_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_586_47_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_652_21_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_796_47_;
  wire sky130_fd_sc_hd__dfstp_2_1_a_956_413_;
  wire sky130_fd_sc_hd__dfstp_2_2_D;
  wire sky130_fd_sc_hd__dfstp_2_2_a_1028_413_;
  wire sky130_fd_sc_hd__dfstp_2_2_a_1056_47_;
  wire sky130_fd_sc_hd__dfstp_2_2_a_1136_413_;
  wire sky130_fd_sc_hd__dfstp_2_2_a_1178_261_;
  wire sky130_fd_sc_hd__dfstp_2_2_a_1228_47_;
  wire sky130_fd_sc_hd__dfstp_2_2_a_1300_47_;
  wire sky130_fd_sc_hd__dfstp_2_2_a_1602_47_;
  wire sky130_fd_sc_hd__dfstp_2_2_a_193_47_;
  wire sky130_fd_sc_hd__dfstp_2_2_a_27_47_;
  wire sky130_fd_sc_hd__dfstp_2_2_a_381_47_;
  wire sky130_fd_sc_hd__dfstp_2_2_a_476_47_;
  wire sky130_fd_sc_hd__dfstp_2_2_a_562_413_;
  wire sky130_fd_sc_hd__dfstp_2_2_a_586_47_;
  wire sky130_fd_sc_hd__dfstp_2_2_a_652_21_;
  wire sky130_fd_sc_hd__dfstp_2_2_a_796_47_;
  wire sky130_fd_sc_hd__dfstp_2_2_a_956_413_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_1028_413_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_1056_47_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_1136_413_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_1178_261_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_1228_47_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_1300_47_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_1602_47_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_193_47_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_27_47_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_381_47_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_476_47_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_562_413_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_586_47_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_652_21_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_796_47_;
  wire sky130_fd_sc_hd__dfstp_2_3_a_956_413_;
  wire sky130_fd_sc_hd__dfxtp_2_0_D;
  wire sky130_fd_sc_hd__dfxtp_2_0_a_1017_47_;
  wire sky130_fd_sc_hd__dfxtp_2_0_a_1059_315_;
  wire sky130_fd_sc_hd__dfxtp_2_0_a_193_47_;
  wire sky130_fd_sc_hd__dfxtp_2_0_a_27_47_;
  wire sky130_fd_sc_hd__dfxtp_2_0_a_381_47_;
  wire sky130_fd_sc_hd__dfxtp_2_0_a_466_413_;
  wire sky130_fd_sc_hd__dfxtp_2_0_a_561_413_;
  wire sky130_fd_sc_hd__dfxtp_2_0_a_592_47_;
  wire sky130_fd_sc_hd__dfxtp_2_0_a_634_159_;
  wire sky130_fd_sc_hd__dfxtp_2_0_a_891_413_;
  wire sky130_fd_sc_hd__dfxtp_2_0_a_975_413_;
  wire sky130_fd_sc_hd__dfxtp_2_1_D;
  wire sky130_fd_sc_hd__dfxtp_2_1_a_1017_47_;
  wire sky130_fd_sc_hd__dfxtp_2_1_a_1059_315_;
  wire sky130_fd_sc_hd__dfxtp_2_1_a_193_47_;
  wire sky130_fd_sc_hd__dfxtp_2_1_a_27_47_;
  wire sky130_fd_sc_hd__dfxtp_2_1_a_381_47_;
  wire sky130_fd_sc_hd__dfxtp_2_1_a_466_413_;
  wire sky130_fd_sc_hd__dfxtp_2_1_a_561_413_;
  wire sky130_fd_sc_hd__dfxtp_2_1_a_592_47_;
  wire sky130_fd_sc_hd__dfxtp_2_1_a_634_159_;
  wire sky130_fd_sc_hd__dfxtp_2_1_a_891_413_;
  wire sky130_fd_sc_hd__dfxtp_2_1_a_975_413_;
  wire sky130_fd_sc_hd__dfxtp_2_2_CLK;
  wire sky130_fd_sc_hd__dfxtp_2_2_D;
  wire sky130_fd_sc_hd__dfxtp_2_2_a_1017_47_;
  wire sky130_fd_sc_hd__dfxtp_2_2_a_1059_315_;
  wire sky130_fd_sc_hd__dfxtp_2_2_a_193_47_;
  wire sky130_fd_sc_hd__dfxtp_2_2_a_27_47_;
  wire sky130_fd_sc_hd__dfxtp_2_2_a_381_47_;
  wire sky130_fd_sc_hd__dfxtp_2_2_a_466_413_;
  wire sky130_fd_sc_hd__dfxtp_2_2_a_561_413_;
  wire sky130_fd_sc_hd__dfxtp_2_2_a_592_47_;
  wire sky130_fd_sc_hd__dfxtp_2_2_a_634_159_;
  wire sky130_fd_sc_hd__dfxtp_2_2_a_891_413_;
  wire sky130_fd_sc_hd__dfxtp_2_2_a_975_413_;
  wire sky130_fd_sc_hd__dfxtp_2_3_CLK;
  wire sky130_fd_sc_hd__dfxtp_2_3_D;
  wire sky130_fd_sc_hd__dfxtp_2_3_a_1017_47_;
  wire sky130_fd_sc_hd__dfxtp_2_3_a_1059_315_;
  wire sky130_fd_sc_hd__dfxtp_2_3_a_193_47_;
  wire sky130_fd_sc_hd__dfxtp_2_3_a_27_47_;
  wire sky130_fd_sc_hd__dfxtp_2_3_a_381_47_;
  wire sky130_fd_sc_hd__dfxtp_2_3_a_466_413_;
  wire sky130_fd_sc_hd__dfxtp_2_3_a_561_413_;
  wire sky130_fd_sc_hd__dfxtp_2_3_a_592_47_;
  wire sky130_fd_sc_hd__dfxtp_2_3_a_634_159_;
  wire sky130_fd_sc_hd__dfxtp_2_3_a_891_413_;
  wire sky130_fd_sc_hd__dfxtp_2_3_a_975_413_;
  wire sky130_fd_sc_hd__diode_2_1_VPB;
  wire sky130_fd_sc_hd__diode_2_9_VPB;
  wire sky130_fd_sc_hd__inv_2_0_Y;
  wire sky130_fd_sc_hd__inv_2_10_A;
  wire sky130_fd_sc_hd__inv_2_10_Y;
  wire sky130_fd_sc_hd__inv_2_11_A;
  wire sky130_fd_sc_hd__inv_2_12_A;
  wire sky130_fd_sc_hd__inv_2_12_Y;
  wire sky130_fd_sc_hd__inv_2_13_Y;
  wire sky130_fd_sc_hd__inv_2_14_Y;
  wire sky130_fd_sc_hd__inv_2_15_VPB;
  wire sky130_fd_sc_hd__inv_2_15_Y;
  wire sky130_fd_sc_hd__inv_2_16_A;
  wire sky130_fd_sc_hd__inv_2_17_A;
  wire sky130_fd_sc_hd__inv_2_18_A;
  wire sky130_fd_sc_hd__inv_2_19_A;
  wire sky130_fd_sc_hd__inv_2_1_A;
  wire sky130_fd_sc_hd__inv_2_20_A;
  wire sky130_fd_sc_hd__inv_2_21_Y;
  wire sky130_fd_sc_hd__inv_2_22_Y;
  wire sky130_fd_sc_hd__inv_2_23_A;
  wire sky130_fd_sc_hd__inv_2_23_Y;
  wire sky130_fd_sc_hd__inv_2_2_A;
  wire sky130_fd_sc_hd__inv_2_3_A;
  wire sky130_fd_sc_hd__inv_2_4_A;
  wire sky130_fd_sc_hd__inv_2_4_Y;
  wire sky130_fd_sc_hd__inv_2_5_A;
  wire sky130_fd_sc_hd__inv_2_5_Y;
  wire sky130_fd_sc_hd__inv_2_6_A;
  wire sky130_fd_sc_hd__inv_2_6_Y;
  wire sky130_fd_sc_hd__inv_2_7_A;
  wire sky130_fd_sc_hd__inv_2_7_Y;
  wire sky130_fd_sc_hd__inv_2_8_A;
  wire sky130_fd_sc_hd__inv_2_8_Y;
  wire sky130_fd_sc_hd__inv_2_9_A;
  wire sky130_fd_sc_hd__inv_2_9_Y;
  wire sky130_fd_sc_hd__mux2_1_0_X;
  wire sky130_fd_sc_hd__mux2_1_0_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_0_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_0_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_0_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_0_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_0_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_10_X;
  wire sky130_fd_sc_hd__mux2_1_10_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_10_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_10_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_10_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_10_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_10_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_11_X;
  wire sky130_fd_sc_hd__mux2_1_11_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_11_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_11_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_11_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_11_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_11_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_12_A0;
  wire sky130_fd_sc_hd__mux2_1_12_A1;
  wire sky130_fd_sc_hd__mux2_1_12_X;
  wire sky130_fd_sc_hd__mux2_1_12_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_12_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_12_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_12_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_12_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_12_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_13_X;
  wire sky130_fd_sc_hd__mux2_1_13_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_13_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_13_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_13_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_13_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_13_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_14_X;
  wire sky130_fd_sc_hd__mux2_1_14_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_14_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_14_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_14_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_14_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_14_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_15_A0;
  wire sky130_fd_sc_hd__mux2_1_15_X;
  wire sky130_fd_sc_hd__mux2_1_15_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_15_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_15_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_15_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_15_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_15_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_16_A0;
  wire sky130_fd_sc_hd__mux2_1_16_X;
  wire sky130_fd_sc_hd__mux2_1_16_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_16_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_16_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_16_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_16_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_16_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_17_X;
  wire sky130_fd_sc_hd__mux2_1_17_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_17_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_17_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_17_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_17_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_17_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_18_X;
  wire sky130_fd_sc_hd__mux2_1_18_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_18_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_18_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_18_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_18_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_18_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_19_A0;
  wire sky130_fd_sc_hd__mux2_1_19_A1;
  wire sky130_fd_sc_hd__mux2_1_19_X;
  wire sky130_fd_sc_hd__mux2_1_19_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_19_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_19_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_19_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_19_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_19_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_1_X;
  wire sky130_fd_sc_hd__mux2_1_1_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_1_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_1_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_1_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_1_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_1_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_20_X;
  wire sky130_fd_sc_hd__mux2_1_20_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_20_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_20_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_20_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_20_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_20_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_2_X;
  wire sky130_fd_sc_hd__mux2_1_2_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_2_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_2_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_2_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_2_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_2_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_3_X;
  wire sky130_fd_sc_hd__mux2_1_3_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_3_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_3_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_3_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_3_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_3_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_4_S;
  wire sky130_fd_sc_hd__mux2_1_4_X;
  wire sky130_fd_sc_hd__mux2_1_4_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_4_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_4_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_4_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_4_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_4_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_5_A1;
  wire sky130_fd_sc_hd__mux2_1_5_X;
  wire sky130_fd_sc_hd__mux2_1_5_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_5_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_5_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_5_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_5_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_5_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_6_X;
  wire sky130_fd_sc_hd__mux2_1_6_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_6_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_6_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_6_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_6_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_6_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_7_A0;
  wire sky130_fd_sc_hd__mux2_1_7_X;
  wire sky130_fd_sc_hd__mux2_1_7_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_7_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_7_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_7_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_7_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_7_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_8_A0;
  wire sky130_fd_sc_hd__mux2_1_8_A1;
  wire sky130_fd_sc_hd__mux2_1_8_X;
  wire sky130_fd_sc_hd__mux2_1_8_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_8_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_8_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_8_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_8_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_8_a_76_199_;
  wire sky130_fd_sc_hd__mux2_1_9_A0;
  wire sky130_fd_sc_hd__mux2_1_9_A1;
  wire sky130_fd_sc_hd__mux2_1_9_X;
  wire sky130_fd_sc_hd__mux2_1_9_a_218_374_;
  wire sky130_fd_sc_hd__mux2_1_9_a_218_47_;
  wire sky130_fd_sc_hd__mux2_1_9_a_439_47_;
  wire sky130_fd_sc_hd__mux2_1_9_a_505_21_;
  wire sky130_fd_sc_hd__mux2_1_9_a_535_374_;
  wire sky130_fd_sc_hd__mux2_1_9_a_76_199_;
  wire sky130_fd_sc_hd__nand2_2_0_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_10_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_11_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_12_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_13_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_14_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_15_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_16_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_17_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_18_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_19_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_1_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_20_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_21_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_22_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_23_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_24_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_25_VPB;
  wire sky130_fd_sc_hd__nand2_2_25_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_26_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_27_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_28_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_29_Y;
  wire sky130_fd_sc_hd__nand2_2_29_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_2_Y;
  wire sky130_fd_sc_hd__nand2_2_2_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_30_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_31_A;
  wire sky130_fd_sc_hd__nand2_2_31_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_32_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_33_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_34_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_35_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_36_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_37_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_38_Y;
  wire sky130_fd_sc_hd__nand2_2_38_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_3_Y;
  wire sky130_fd_sc_hd__nand2_2_3_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_4_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_5_Y;
  wire sky130_fd_sc_hd__nand2_2_5_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_6_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_7_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_8_a_27_47_;
  wire sky130_fd_sc_hd__nand2_2_9_Y;
  wire sky130_fd_sc_hd__nand2_2_9_a_27_47_;
  wire sky130_fd_sc_hd__nand2b_2_0_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_0_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_10_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_10_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_11_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_11_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_12_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_12_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_13_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_13_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_14_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_14_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_15_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_15_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_16_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_16_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_17_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_17_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_18_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_18_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_19_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_19_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_1_Y;
  wire sky130_fd_sc_hd__nand2b_2_1_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_1_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_20_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_20_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_21_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_21_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_22_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_22_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_23_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_23_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_2_Y;
  wire sky130_fd_sc_hd__nand2b_2_2_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_2_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_3_Y;
  wire sky130_fd_sc_hd__nand2b_2_3_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_3_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_4_Y;
  wire sky130_fd_sc_hd__nand2b_2_4_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_4_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_5_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_5_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_6_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_6_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_7_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_7_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_8_Y;
  wire sky130_fd_sc_hd__nand2b_2_8_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_8_a_27_93_;
  wire sky130_fd_sc_hd__nand2b_2_9_a_229_47_;
  wire sky130_fd_sc_hd__nand2b_2_9_a_27_93_;
  wire sky130_fd_sc_hd__nand3_2_0_Y;
  wire sky130_fd_sc_hd__nand3_2_0_a_277_47_;
  wire sky130_fd_sc_hd__nand3_2_0_a_27_47_;
  wire sky130_fd_sc_hd__nand3_2_1_Y;
  wire sky130_fd_sc_hd__nand3_2_1_a_277_47_;
  wire sky130_fd_sc_hd__nand3_2_1_a_27_47_;
  wire sky130_fd_sc_hd__nand3b_2_0_a_218_47_;
  wire sky130_fd_sc_hd__nand3b_2_0_a_27_47_;
  wire sky130_fd_sc_hd__nand3b_2_0_a_408_47_;
  wire sky130_fd_sc_hd__nand4_2_0_C;
  wire sky130_fd_sc_hd__nand4_2_0_VPB;
  wire sky130_fd_sc_hd__nand4_2_0_a_277_47_;
  wire sky130_fd_sc_hd__nand4_2_0_a_27_47_;
  wire sky130_fd_sc_hd__nand4_2_0_a_471_47_;
  wire sky130_fd_sc_hd__nand4_2_10_C;
  wire sky130_fd_sc_hd__nand4_2_10_D;
  wire sky130_fd_sc_hd__nand4_2_10_a_277_47_;
  wire sky130_fd_sc_hd__nand4_2_10_a_27_47_;
  wire sky130_fd_sc_hd__nand4_2_10_a_471_47_;
  wire sky130_fd_sc_hd__nand4_2_11_C;
  wire sky130_fd_sc_hd__nand4_2_11_a_277_47_;
  wire sky130_fd_sc_hd__nand4_2_11_a_27_47_;
  wire sky130_fd_sc_hd__nand4_2_11_a_471_47_;
  wire sky130_fd_sc_hd__nand4_2_12_C;
  wire sky130_fd_sc_hd__nand4_2_12_D;
  wire sky130_fd_sc_hd__nand4_2_12_a_277_47_;
  wire sky130_fd_sc_hd__nand4_2_12_a_27_47_;
  wire sky130_fd_sc_hd__nand4_2_12_a_471_47_;
  wire sky130_fd_sc_hd__nand4_2_13_C;
  wire sky130_fd_sc_hd__nand4_2_13_D;
  wire sky130_fd_sc_hd__nand4_2_13_a_277_47_;
  wire sky130_fd_sc_hd__nand4_2_13_a_27_47_;
  wire sky130_fd_sc_hd__nand4_2_13_a_471_47_;
  wire sky130_fd_sc_hd__nand4_2_14_a_277_47_;
  wire sky130_fd_sc_hd__nand4_2_14_a_27_47_;
  wire sky130_fd_sc_hd__nand4_2_14_a_471_47_;
  wire sky130_fd_sc_hd__nand4_2_1_C;
  wire sky130_fd_sc_hd__nand4_2_1_D;
  wire sky130_fd_sc_hd__nand4_2_1_Y;
  wire sky130_fd_sc_hd__nand4_2_1_a_277_47_;
  wire sky130_fd_sc_hd__nand4_2_1_a_27_47_;
  wire sky130_fd_sc_hd__nand4_2_1_a_471_47_;
  wire sky130_fd_sc_hd__nand4_2_2_C;
  wire sky130_fd_sc_hd__nand4_2_2_D;
  wire sky130_fd_sc_hd__nand4_2_2_a_277_47_;
  wire sky130_fd_sc_hd__nand4_2_2_a_27_47_;
  wire sky130_fd_sc_hd__nand4_2_2_a_471_47_;
  wire sky130_fd_sc_hd__nand4_2_3_C;
  wire sky130_fd_sc_hd__nand4_2_3_D;
  wire sky130_fd_sc_hd__nand4_2_3_a_277_47_;
  wire sky130_fd_sc_hd__nand4_2_3_a_27_47_;
  wire sky130_fd_sc_hd__nand4_2_3_a_471_47_;
  wire sky130_fd_sc_hd__nand4_2_4_C;
  wire sky130_fd_sc_hd__nand4_2_4_D;
  wire sky130_fd_sc_hd__nand4_2_4_Y;
  wire sky130_fd_sc_hd__nand4_2_4_a_277_47_;
  wire sky130_fd_sc_hd__nand4_2_4_a_27_47_;
  wire sky130_fd_sc_hd__nand4_2_4_a_471_47_;
  wire sky130_fd_sc_hd__nand4_2_5_C;
  wire sky130_fd_sc_hd__nand4_2_5_D;
  wire sky130_fd_sc_hd__nand4_2_5_VPB;
  wire sky130_fd_sc_hd__nand4_2_5_Y;
  wire sky130_fd_sc_hd__nand4_2_5_a_277_47_;
  wire sky130_fd_sc_hd__nand4_2_5_a_27_47_;
  wire sky130_fd_sc_hd__nand4_2_5_a_471_47_;
  wire sky130_fd_sc_hd__nand4_2_6_C;
  wire sky130_fd_sc_hd__nand4_2_6_D;
  wire sky130_fd_sc_hd__nand4_2_6_Y;
  wire sky130_fd_sc_hd__nand4_2_6_a_277_47_;
  wire sky130_fd_sc_hd__nand4_2_6_a_27_47_;
  wire sky130_fd_sc_hd__nand4_2_6_a_471_47_;
  wire sky130_fd_sc_hd__nand4_2_7_C;
  wire sky130_fd_sc_hd__nand4_2_7_Y;
  wire sky130_fd_sc_hd__nand4_2_7_a_277_47_;
  wire sky130_fd_sc_hd__nand4_2_7_a_27_47_;
  wire sky130_fd_sc_hd__nand4_2_7_a_471_47_;
  wire sky130_fd_sc_hd__nand4_2_8_C;
  wire sky130_fd_sc_hd__nand4_2_8_D;
  wire sky130_fd_sc_hd__nand4_2_8_Y;
  wire sky130_fd_sc_hd__nand4_2_8_a_277_47_;
  wire sky130_fd_sc_hd__nand4_2_8_a_27_47_;
  wire sky130_fd_sc_hd__nand4_2_8_a_471_47_;
  wire sky130_fd_sc_hd__nand4_2_9_C;
  wire sky130_fd_sc_hd__nand4_2_9_D;
  wire sky130_fd_sc_hd__nand4_2_9_Y;
  wire sky130_fd_sc_hd__nand4_2_9_a_277_47_;
  wire sky130_fd_sc_hd__nand4_2_9_a_27_47_;
  wire sky130_fd_sc_hd__nand4_2_9_a_471_47_;
  wire sky130_fd_sc_hd__nor2_2_0_B;
  wire sky130_fd_sc_hd__nor2_2_0_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_10_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_11_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_12_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_13_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_14_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_15_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_16_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_17_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_18_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_19_Y;
  wire sky130_fd_sc_hd__nor2_2_19_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_1_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_20_A;
  wire sky130_fd_sc_hd__nor2_2_20_Y;
  wire sky130_fd_sc_hd__nor2_2_20_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_21_A;
  wire sky130_fd_sc_hd__nor2_2_21_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_22_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_23_Y;
  wire sky130_fd_sc_hd__nor2_2_23_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_24_Y;
  wire sky130_fd_sc_hd__nor2_2_24_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_25_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_26_Y;
  wire sky130_fd_sc_hd__nor2_2_26_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_27_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_28_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_29_Y;
  wire sky130_fd_sc_hd__nor2_2_29_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_2_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_30_B;
  wire sky130_fd_sc_hd__nor2_2_30_Y;
  wire sky130_fd_sc_hd__nor2_2_30_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_31_B;
  wire sky130_fd_sc_hd__nor2_2_31_Y;
  wire sky130_fd_sc_hd__nor2_2_31_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_32_B;
  wire sky130_fd_sc_hd__nor2_2_32_Y;
  wire sky130_fd_sc_hd__nor2_2_32_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_33_Y;
  wire sky130_fd_sc_hd__nor2_2_33_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_34_VPB;
  wire sky130_fd_sc_hd__nor2_2_34_Y;
  wire sky130_fd_sc_hd__nor2_2_34_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_35_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_36_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_37_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_38_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_39_Y;
  wire sky130_fd_sc_hd__nor2_2_39_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_3_B;
  wire sky130_fd_sc_hd__nor2_2_3_Y;
  wire sky130_fd_sc_hd__nor2_2_3_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_40_A;
  wire sky130_fd_sc_hd__nor2_2_40_Y;
  wire sky130_fd_sc_hd__nor2_2_40_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_41_Y;
  wire sky130_fd_sc_hd__nor2_2_41_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_42_Y;
  wire sky130_fd_sc_hd__nor2_2_42_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_43_Y;
  wire sky130_fd_sc_hd__nor2_2_43_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_44_Y;
  wire sky130_fd_sc_hd__nor2_2_44_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_45_Y;
  wire sky130_fd_sc_hd__nor2_2_45_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_46_A;
  wire sky130_fd_sc_hd__nor2_2_46_B;
  wire sky130_fd_sc_hd__nor2_2_46_Y;
  wire sky130_fd_sc_hd__nor2_2_46_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_47_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_48_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_4_Y;
  wire sky130_fd_sc_hd__nor2_2_4_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_5_A;
  wire sky130_fd_sc_hd__nor2_2_5_Y;
  wire sky130_fd_sc_hd__nor2_2_5_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_6_Y;
  wire sky130_fd_sc_hd__nor2_2_6_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_7_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_8_A;
  wire sky130_fd_sc_hd__nor2_2_8_a_27_297_;
  wire sky130_fd_sc_hd__nor2_2_9_B;
  wire sky130_fd_sc_hd__nor2_2_9_a_27_297_;
  wire sky130_fd_sc_hd__nor3_2_0_Y;
  wire sky130_fd_sc_hd__nor3_2_0_a_27_297_;
  wire sky130_fd_sc_hd__nor3_2_0_a_281_297_;
  wire sky130_fd_sc_hd__nor3_2_1_B;
  wire sky130_fd_sc_hd__nor3_2_1_C;
  wire sky130_fd_sc_hd__nor3_2_1_Y;
  wire sky130_fd_sc_hd__nor3_2_1_a_27_297_;
  wire sky130_fd_sc_hd__nor3_2_1_a_281_297_;
  wire sky130_fd_sc_hd__nor3_2_2_A;
  wire sky130_fd_sc_hd__nor3_2_2_B;
  wire sky130_fd_sc_hd__nor3_2_2_Y;
  wire sky130_fd_sc_hd__nor3_2_2_a_27_297_;
  wire sky130_fd_sc_hd__nor3_2_2_a_281_297_;
  wire sky130_fd_sc_hd__nor3_2_3_A;
  wire sky130_fd_sc_hd__nor3_2_3_B;
  wire sky130_fd_sc_hd__nor3_2_3_C;
  wire sky130_fd_sc_hd__nor3_2_3_Y;
  wire sky130_fd_sc_hd__nor3_2_3_a_27_297_;
  wire sky130_fd_sc_hd__nor3_2_3_a_281_297_;
  wire sky130_fd_sc_hd__nor3b_2_0_B;
  wire sky130_fd_sc_hd__nor3b_2_0_a_27_297_;
  wire sky130_fd_sc_hd__nor3b_2_0_a_281_297_;
  wire sky130_fd_sc_hd__nor3b_2_0_a_531_21_;
  wire sky130_fd_sc_hd__nor3b_2_1_a_27_297_;
  wire sky130_fd_sc_hd__nor3b_2_1_a_281_297_;
  wire sky130_fd_sc_hd__nor3b_2_1_a_531_21_;
  wire sky130_fd_sc_hd__nor3b_2_2_Y;
  wire sky130_fd_sc_hd__nor3b_2_2_a_27_297_;
  wire sky130_fd_sc_hd__nor3b_2_2_a_281_297_;
  wire sky130_fd_sc_hd__nor3b_2_2_a_531_21_;
  wire sky130_fd_sc_hd__nor3b_2_3_Y;
  wire sky130_fd_sc_hd__nor3b_2_3_a_27_297_;
  wire sky130_fd_sc_hd__nor3b_2_3_a_281_297_;
  wire sky130_fd_sc_hd__nor3b_2_3_a_531_21_;
  wire sky130_fd_sc_hd__nor3b_2_4_a_27_297_;
  wire sky130_fd_sc_hd__nor3b_2_4_a_281_297_;
  wire sky130_fd_sc_hd__nor3b_2_4_a_531_21_;
  wire sky130_fd_sc_hd__nor4_2_0_VPB;
  wire sky130_fd_sc_hd__nor4_2_0_Y;
  wire sky130_fd_sc_hd__nor4_2_0_a_27_297_;
  wire sky130_fd_sc_hd__nor4_2_0_a_281_297_;
  wire sky130_fd_sc_hd__nor4_2_0_a_475_297_;
  wire sky130_fd_sc_hd__nor4_2_1_VPB;
  wire sky130_fd_sc_hd__nor4_2_1_Y;
  wire sky130_fd_sc_hd__nor4_2_1_a_27_297_;
  wire sky130_fd_sc_hd__nor4_2_1_a_281_297_;
  wire sky130_fd_sc_hd__nor4_2_1_a_475_297_;
  wire sky130_fd_sc_hd__nor4b_2_0_a_277_297_;
  wire sky130_fd_sc_hd__nor4b_2_0_a_27_297_;
  wire sky130_fd_sc_hd__nor4b_2_0_a_474_297_;
  wire sky130_fd_sc_hd__nor4b_2_0_a_694_21_;
  wire sky130_fd_sc_hd__nor4b_2_1_a_277_297_;
  wire sky130_fd_sc_hd__nor4b_2_1_a_27_297_;
  wire sky130_fd_sc_hd__nor4b_2_1_a_474_297_;
  wire sky130_fd_sc_hd__nor4b_2_1_a_694_21_;
  wire sky130_fd_sc_hd__o211a_2_0_X;
  wire sky130_fd_sc_hd__o211a_2_0_a_110_47_;
  wire sky130_fd_sc_hd__o211a_2_0_a_182_47_;
  wire sky130_fd_sc_hd__o211a_2_0_a_27_47_;
  wire sky130_fd_sc_hd__o211a_2_0_a_373_297_;
  wire sky130_fd_sc_hd__o211a_2_10_X;
  wire sky130_fd_sc_hd__o211a_2_10_a_110_47_;
  wire sky130_fd_sc_hd__o211a_2_10_a_182_47_;
  wire sky130_fd_sc_hd__o211a_2_10_a_27_47_;
  wire sky130_fd_sc_hd__o211a_2_10_a_373_297_;
  wire sky130_fd_sc_hd__o211a_2_11_a_110_47_;
  wire sky130_fd_sc_hd__o211a_2_11_a_182_47_;
  wire sky130_fd_sc_hd__o211a_2_11_a_27_47_;
  wire sky130_fd_sc_hd__o211a_2_11_a_373_297_;
  wire sky130_fd_sc_hd__o211a_2_1_a_110_47_;
  wire sky130_fd_sc_hd__o211a_2_1_a_182_47_;
  wire sky130_fd_sc_hd__o211a_2_1_a_27_47_;
  wire sky130_fd_sc_hd__o211a_2_1_a_373_297_;
  wire sky130_fd_sc_hd__o211a_2_2_a_110_47_;
  wire sky130_fd_sc_hd__o211a_2_2_a_182_47_;
  wire sky130_fd_sc_hd__o211a_2_2_a_27_47_;
  wire sky130_fd_sc_hd__o211a_2_2_a_373_297_;
  wire sky130_fd_sc_hd__o211a_2_3_a_110_47_;
  wire sky130_fd_sc_hd__o211a_2_3_a_182_47_;
  wire sky130_fd_sc_hd__o211a_2_3_a_27_47_;
  wire sky130_fd_sc_hd__o211a_2_3_a_373_297_;
  wire sky130_fd_sc_hd__o211a_2_4_a_110_47_;
  wire sky130_fd_sc_hd__o211a_2_4_a_182_47_;
  wire sky130_fd_sc_hd__o211a_2_4_a_27_47_;
  wire sky130_fd_sc_hd__o211a_2_4_a_373_297_;
  wire sky130_fd_sc_hd__o211a_2_5_a_110_47_;
  wire sky130_fd_sc_hd__o211a_2_5_a_182_47_;
  wire sky130_fd_sc_hd__o211a_2_5_a_27_47_;
  wire sky130_fd_sc_hd__o211a_2_5_a_373_297_;
  wire sky130_fd_sc_hd__o211a_2_6_a_110_47_;
  wire sky130_fd_sc_hd__o211a_2_6_a_182_47_;
  wire sky130_fd_sc_hd__o211a_2_6_a_27_47_;
  wire sky130_fd_sc_hd__o211a_2_6_a_373_297_;
  wire sky130_fd_sc_hd__o211a_2_7_X;
  wire sky130_fd_sc_hd__o211a_2_7_a_110_47_;
  wire sky130_fd_sc_hd__o211a_2_7_a_182_47_;
  wire sky130_fd_sc_hd__o211a_2_7_a_27_47_;
  wire sky130_fd_sc_hd__o211a_2_7_a_373_297_;
  wire sky130_fd_sc_hd__o211a_2_8_X;
  wire sky130_fd_sc_hd__o211a_2_8_a_110_47_;
  wire sky130_fd_sc_hd__o211a_2_8_a_182_47_;
  wire sky130_fd_sc_hd__o211a_2_8_a_27_47_;
  wire sky130_fd_sc_hd__o211a_2_8_a_373_297_;
  wire sky130_fd_sc_hd__o211a_2_9_X;
  wire sky130_fd_sc_hd__o211a_2_9_a_110_47_;
  wire sky130_fd_sc_hd__o211a_2_9_a_182_47_;
  wire sky130_fd_sc_hd__o211a_2_9_a_27_47_;
  wire sky130_fd_sc_hd__o211a_2_9_a_373_297_;
  wire sky130_fd_sc_hd__o211ai_2_0_Y;
  wire sky130_fd_sc_hd__o211ai_2_0_a_27_47_;
  wire sky130_fd_sc_hd__o211ai_2_0_a_286_47_;
  wire sky130_fd_sc_hd__o211ai_2_0_a_487_297_;
  wire sky130_fd_sc_hd__o21a_2_0_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_0_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_0_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_10_X;
  wire sky130_fd_sc_hd__o21a_2_10_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_10_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_10_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_11_X;
  wire sky130_fd_sc_hd__o21a_2_11_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_11_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_11_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_12_A1;
  wire sky130_fd_sc_hd__o21a_2_12_X;
  wire sky130_fd_sc_hd__o21a_2_12_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_12_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_12_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_13_X;
  wire sky130_fd_sc_hd__o21a_2_13_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_13_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_13_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_14_B1;
  wire sky130_fd_sc_hd__o21a_2_14_X;
  wire sky130_fd_sc_hd__o21a_2_14_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_14_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_14_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_15_A2;
  wire sky130_fd_sc_hd__o21a_2_15_X;
  wire sky130_fd_sc_hd__o21a_2_15_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_15_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_15_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_16_A1;
  wire sky130_fd_sc_hd__o21a_2_16_X;
  wire sky130_fd_sc_hd__o21a_2_16_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_16_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_16_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_17_X;
  wire sky130_fd_sc_hd__o21a_2_17_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_17_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_17_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_18_A1;
  wire sky130_fd_sc_hd__o21a_2_18_X;
  wire sky130_fd_sc_hd__o21a_2_18_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_18_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_18_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_19_A1;
  wire sky130_fd_sc_hd__o21a_2_19_X;
  wire sky130_fd_sc_hd__o21a_2_19_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_19_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_19_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_1_X;
  wire sky130_fd_sc_hd__o21a_2_1_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_1_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_1_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_20_X;
  wire sky130_fd_sc_hd__o21a_2_20_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_20_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_20_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_21_A1;
  wire sky130_fd_sc_hd__o21a_2_21_X;
  wire sky130_fd_sc_hd__o21a_2_21_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_21_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_21_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_22_X;
  wire sky130_fd_sc_hd__o21a_2_22_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_22_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_22_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_23_A1;
  wire sky130_fd_sc_hd__o21a_2_23_X;
  wire sky130_fd_sc_hd__o21a_2_23_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_23_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_23_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_24_A1;
  wire sky130_fd_sc_hd__o21a_2_24_A2;
  wire sky130_fd_sc_hd__o21a_2_24_X;
  wire sky130_fd_sc_hd__o21a_2_24_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_24_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_24_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_25_A1;
  wire sky130_fd_sc_hd__o21a_2_25_A2;
  wire sky130_fd_sc_hd__o21a_2_25_X;
  wire sky130_fd_sc_hd__o21a_2_25_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_25_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_25_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_26_X;
  wire sky130_fd_sc_hd__o21a_2_26_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_26_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_26_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_27_A1;
  wire sky130_fd_sc_hd__o21a_2_27_A2;
  wire sky130_fd_sc_hd__o21a_2_27_X;
  wire sky130_fd_sc_hd__o21a_2_27_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_27_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_27_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_28_A1;
  wire sky130_fd_sc_hd__o21a_2_28_A2;
  wire sky130_fd_sc_hd__o21a_2_28_X;
  wire sky130_fd_sc_hd__o21a_2_28_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_28_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_28_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_29_X;
  wire sky130_fd_sc_hd__o21a_2_29_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_29_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_29_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_2_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_2_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_2_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_30_A1;
  wire sky130_fd_sc_hd__o21a_2_30_X;
  wire sky130_fd_sc_hd__o21a_2_30_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_30_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_30_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_3_A2;
  wire sky130_fd_sc_hd__o21a_2_3_X;
  wire sky130_fd_sc_hd__o21a_2_3_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_3_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_3_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_4_A1;
  wire sky130_fd_sc_hd__o21a_2_4_A2;
  wire sky130_fd_sc_hd__o21a_2_4_X;
  wire sky130_fd_sc_hd__o21a_2_4_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_4_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_4_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_5_A1;
  wire sky130_fd_sc_hd__o21a_2_5_A2;
  wire sky130_fd_sc_hd__o21a_2_5_X;
  wire sky130_fd_sc_hd__o21a_2_5_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_5_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_5_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_6_A2;
  wire sky130_fd_sc_hd__o21a_2_6_X;
  wire sky130_fd_sc_hd__o21a_2_6_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_6_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_6_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_7_A2;
  wire sky130_fd_sc_hd__o21a_2_7_X;
  wire sky130_fd_sc_hd__o21a_2_7_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_7_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_7_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_8_A1;
  wire sky130_fd_sc_hd__o21a_2_8_A2;
  wire sky130_fd_sc_hd__o21a_2_8_X;
  wire sky130_fd_sc_hd__o21a_2_8_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_8_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_8_a_79_21_;
  wire sky130_fd_sc_hd__o21a_2_9_A2;
  wire sky130_fd_sc_hd__o21a_2_9_X;
  wire sky130_fd_sc_hd__o21a_2_9_a_384_47_;
  wire sky130_fd_sc_hd__o21a_2_9_a_470_297_;
  wire sky130_fd_sc_hd__o21a_2_9_a_79_21_;
  wire sky130_fd_sc_hd__o21ai_2_0_a_112_297_;
  wire sky130_fd_sc_hd__o21ai_2_0_a_29_47_;
  wire sky130_fd_sc_hd__o21ai_2_1_Y;
  wire sky130_fd_sc_hd__o21ai_2_1_a_112_297_;
  wire sky130_fd_sc_hd__o21ai_2_1_a_29_47_;
  wire sky130_fd_sc_hd__o21ai_2_2_Y;
  wire sky130_fd_sc_hd__o21ai_2_2_a_112_297_;
  wire sky130_fd_sc_hd__o21ai_2_2_a_29_47_;
  wire sky130_fd_sc_hd__o21ai_2_3_B1;
  wire sky130_fd_sc_hd__o21ai_2_3_Y;
  wire sky130_fd_sc_hd__o21ai_2_3_a_112_297_;
  wire sky130_fd_sc_hd__o21ai_2_3_a_29_47_;
  wire sky130_fd_sc_hd__o21ai_2_4_Y;
  wire sky130_fd_sc_hd__o21ai_2_4_a_112_297_;
  wire sky130_fd_sc_hd__o21ai_2_4_a_29_47_;
  wire sky130_fd_sc_hd__o21ai_2_5_Y;
  wire sky130_fd_sc_hd__o21ai_2_5_a_112_297_;
  wire sky130_fd_sc_hd__o21ai_2_5_a_29_47_;
  wire sky130_fd_sc_hd__o21ba_2_0_X;
  wire sky130_fd_sc_hd__o21ba_2_0_a_174_21_;
  wire sky130_fd_sc_hd__o21ba_2_0_a_27_93_;
  wire sky130_fd_sc_hd__o21ba_2_0_a_478_47_;
  wire sky130_fd_sc_hd__o21ba_2_0_a_574_297_;
  wire sky130_fd_sc_hd__o21ba_2_1_X;
  wire sky130_fd_sc_hd__o21ba_2_1_a_174_21_;
  wire sky130_fd_sc_hd__o21ba_2_1_a_27_93_;
  wire sky130_fd_sc_hd__o21ba_2_1_a_478_47_;
  wire sky130_fd_sc_hd__o21ba_2_1_a_574_297_;
  wire sky130_fd_sc_hd__o21bai_2_0_Y;
  wire sky130_fd_sc_hd__o21bai_2_0_a_229_47_;
  wire sky130_fd_sc_hd__o21bai_2_0_a_28_297_;
  wire sky130_fd_sc_hd__o21bai_2_0_a_397_297_;
  wire sky130_fd_sc_hd__o221a_2_0_X;
  wire sky130_fd_sc_hd__o221a_2_0_a_141_47_;
  wire sky130_fd_sc_hd__o221a_2_0_a_225_47_;
  wire sky130_fd_sc_hd__o221a_2_0_a_237_297_;
  wire sky130_fd_sc_hd__o221a_2_0_a_38_47_;
  wire sky130_fd_sc_hd__o221a_2_0_a_497_297_;
  wire sky130_fd_sc_hd__o221a_2_1_X;
  wire sky130_fd_sc_hd__o221a_2_1_a_141_47_;
  wire sky130_fd_sc_hd__o221a_2_1_a_225_47_;
  wire sky130_fd_sc_hd__o221a_2_1_a_237_297_;
  wire sky130_fd_sc_hd__o221a_2_1_a_38_47_;
  wire sky130_fd_sc_hd__o221a_2_1_a_497_297_;
  wire sky130_fd_sc_hd__o221a_2_2_B2;
  wire sky130_fd_sc_hd__o221a_2_2_C1;
  wire sky130_fd_sc_hd__o221a_2_2_X;
  wire sky130_fd_sc_hd__o221a_2_2_a_141_47_;
  wire sky130_fd_sc_hd__o221a_2_2_a_225_47_;
  wire sky130_fd_sc_hd__o221a_2_2_a_237_297_;
  wire sky130_fd_sc_hd__o221a_2_2_a_38_47_;
  wire sky130_fd_sc_hd__o221a_2_2_a_497_297_;
  wire sky130_fd_sc_hd__o22a_2_0_X;
  wire sky130_fd_sc_hd__o22a_2_0_a_301_47_;
  wire sky130_fd_sc_hd__o22a_2_0_a_383_297_;
  wire sky130_fd_sc_hd__o22a_2_0_a_579_297_;
  wire sky130_fd_sc_hd__o22a_2_0_a_81_21_;
  wire sky130_fd_sc_hd__o22a_2_1_a_301_47_;
  wire sky130_fd_sc_hd__o22a_2_1_a_383_297_;
  wire sky130_fd_sc_hd__o22a_2_1_a_579_297_;
  wire sky130_fd_sc_hd__o22a_2_1_a_81_21_;
  wire sky130_fd_sc_hd__o22a_2_2_VPB;
  wire sky130_fd_sc_hd__o22a_2_2_X;
  wire sky130_fd_sc_hd__o22a_2_2_a_301_47_;
  wire sky130_fd_sc_hd__o22a_2_2_a_383_297_;
  wire sky130_fd_sc_hd__o22a_2_2_a_579_297_;
  wire sky130_fd_sc_hd__o22a_2_2_a_81_21_;
  wire sky130_fd_sc_hd__o22a_2_3_B1;
  wire sky130_fd_sc_hd__o22a_2_3_B2;
  wire sky130_fd_sc_hd__o22a_2_3_X;
  wire sky130_fd_sc_hd__o22a_2_3_a_301_47_;
  wire sky130_fd_sc_hd__o22a_2_3_a_383_297_;
  wire sky130_fd_sc_hd__o22a_2_3_a_579_297_;
  wire sky130_fd_sc_hd__o22a_2_3_a_81_21_;
  wire sky130_fd_sc_hd__o22ai_2_0_Y;
  wire sky130_fd_sc_hd__o22ai_2_0_a_27_297_;
  wire sky130_fd_sc_hd__o22ai_2_0_a_27_47_;
  wire sky130_fd_sc_hd__o22ai_2_0_a_475_297_;
  wire sky130_fd_sc_hd__o22ai_2_1_Y;
  wire sky130_fd_sc_hd__o22ai_2_1_a_27_297_;
  wire sky130_fd_sc_hd__o22ai_2_1_a_27_47_;
  wire sky130_fd_sc_hd__o22ai_2_1_a_475_297_;
  wire sky130_fd_sc_hd__o2bb2a_2_0_a_294_47_;
  wire sky130_fd_sc_hd__o2bb2a_2_0_a_295_369_;
  wire sky130_fd_sc_hd__o2bb2a_2_0_a_581_47_;
  wire sky130_fd_sc_hd__o2bb2a_2_0_a_665_369_;
  wire sky130_fd_sc_hd__o2bb2a_2_0_a_84_21_;
  wire sky130_fd_sc_hd__o311a_2_0_C1;
  wire sky130_fd_sc_hd__o311a_2_0_X;
  wire sky130_fd_sc_hd__o311a_2_0_a_360_297_;
  wire sky130_fd_sc_hd__o311a_2_0_a_360_47_;
  wire sky130_fd_sc_hd__o311a_2_0_a_460_297_;
  wire sky130_fd_sc_hd__o311a_2_0_a_677_47_;
  wire sky130_fd_sc_hd__o311a_2_0_a_91_21_;
  wire sky130_fd_sc_hd__o311a_2_1_X;
  wire sky130_fd_sc_hd__o311a_2_1_a_360_297_;
  wire sky130_fd_sc_hd__o311a_2_1_a_360_47_;
  wire sky130_fd_sc_hd__o311a_2_1_a_460_297_;
  wire sky130_fd_sc_hd__o311a_2_1_a_677_47_;
  wire sky130_fd_sc_hd__o311a_2_1_a_91_21_;
  wire sky130_fd_sc_hd__o31a_2_0_A1;
  wire sky130_fd_sc_hd__o31a_2_0_A2;
  wire sky130_fd_sc_hd__o31a_2_0_B1;
  wire sky130_fd_sc_hd__o31a_2_0_VPB;
  wire sky130_fd_sc_hd__o31a_2_0_X;
  wire sky130_fd_sc_hd__o31a_2_0_a_108_21_;
  wire sky130_fd_sc_hd__o31a_2_0_a_346_297_;
  wire sky130_fd_sc_hd__o31a_2_0_a_346_47_;
  wire sky130_fd_sc_hd__o31a_2_0_a_430_297_;
  wire sky130_fd_sc_hd__o31a_2_10_X;
  wire sky130_fd_sc_hd__o31a_2_10_a_108_21_;
  wire sky130_fd_sc_hd__o31a_2_10_a_346_297_;
  wire sky130_fd_sc_hd__o31a_2_10_a_346_47_;
  wire sky130_fd_sc_hd__o31a_2_10_a_430_297_;
  wire sky130_fd_sc_hd__o31a_2_1_A3;
  wire sky130_fd_sc_hd__o31a_2_1_B1;
  wire sky130_fd_sc_hd__o31a_2_1_X;
  wire sky130_fd_sc_hd__o31a_2_1_a_108_21_;
  wire sky130_fd_sc_hd__o31a_2_1_a_346_297_;
  wire sky130_fd_sc_hd__o31a_2_1_a_346_47_;
  wire sky130_fd_sc_hd__o31a_2_1_a_430_297_;
  wire sky130_fd_sc_hd__o31a_2_2_A1;
  wire sky130_fd_sc_hd__o31a_2_2_A2;
  wire sky130_fd_sc_hd__o31a_2_2_A3;
  wire sky130_fd_sc_hd__o31a_2_2_VPB;
  wire sky130_fd_sc_hd__o31a_2_2_X;
  wire sky130_fd_sc_hd__o31a_2_2_a_108_21_;
  wire sky130_fd_sc_hd__o31a_2_2_a_346_297_;
  wire sky130_fd_sc_hd__o31a_2_2_a_346_47_;
  wire sky130_fd_sc_hd__o31a_2_2_a_430_297_;
  wire sky130_fd_sc_hd__o31a_2_3_A3;
  wire sky130_fd_sc_hd__o31a_2_3_X;
  wire sky130_fd_sc_hd__o31a_2_3_a_108_21_;
  wire sky130_fd_sc_hd__o31a_2_3_a_346_297_;
  wire sky130_fd_sc_hd__o31a_2_3_a_346_47_;
  wire sky130_fd_sc_hd__o31a_2_3_a_430_297_;
  wire sky130_fd_sc_hd__o31a_2_4_X;
  wire sky130_fd_sc_hd__o31a_2_4_a_108_21_;
  wire sky130_fd_sc_hd__o31a_2_4_a_346_297_;
  wire sky130_fd_sc_hd__o31a_2_4_a_346_47_;
  wire sky130_fd_sc_hd__o31a_2_4_a_430_297_;
  wire sky130_fd_sc_hd__o31a_2_5_A2;
  wire sky130_fd_sc_hd__o31a_2_5_X;
  wire sky130_fd_sc_hd__o31a_2_5_a_108_21_;
  wire sky130_fd_sc_hd__o31a_2_5_a_346_297_;
  wire sky130_fd_sc_hd__o31a_2_5_a_346_47_;
  wire sky130_fd_sc_hd__o31a_2_5_a_430_297_;
  wire sky130_fd_sc_hd__o31a_2_6_A2;
  wire sky130_fd_sc_hd__o31a_2_6_A3;
  wire sky130_fd_sc_hd__o31a_2_6_X;
  wire sky130_fd_sc_hd__o31a_2_6_a_108_21_;
  wire sky130_fd_sc_hd__o31a_2_6_a_346_297_;
  wire sky130_fd_sc_hd__o31a_2_6_a_346_47_;
  wire sky130_fd_sc_hd__o31a_2_6_a_430_297_;
  wire sky130_fd_sc_hd__o31a_2_7_A2;
  wire sky130_fd_sc_hd__o31a_2_7_A3;
  wire sky130_fd_sc_hd__o31a_2_7_X;
  wire sky130_fd_sc_hd__o31a_2_7_a_108_21_;
  wire sky130_fd_sc_hd__o31a_2_7_a_346_297_;
  wire sky130_fd_sc_hd__o31a_2_7_a_346_47_;
  wire sky130_fd_sc_hd__o31a_2_7_a_430_297_;
  wire sky130_fd_sc_hd__o31a_2_8_A2;
  wire sky130_fd_sc_hd__o31a_2_8_A3;
  wire sky130_fd_sc_hd__o31a_2_8_X;
  wire sky130_fd_sc_hd__o31a_2_8_a_108_21_;
  wire sky130_fd_sc_hd__o31a_2_8_a_346_297_;
  wire sky130_fd_sc_hd__o31a_2_8_a_346_47_;
  wire sky130_fd_sc_hd__o31a_2_8_a_430_297_;
  wire sky130_fd_sc_hd__o31a_2_9_A1;
  wire sky130_fd_sc_hd__o31a_2_9_A2;
  wire sky130_fd_sc_hd__o31a_2_9_A3;
  wire sky130_fd_sc_hd__o31a_2_9_X;
  wire sky130_fd_sc_hd__o31a_2_9_a_108_21_;
  wire sky130_fd_sc_hd__o31a_2_9_a_346_297_;
  wire sky130_fd_sc_hd__o31a_2_9_a_346_47_;
  wire sky130_fd_sc_hd__o31a_2_9_a_430_297_;
  wire sky130_fd_sc_hd__o31ai_2_0_a_27_297_;
  wire sky130_fd_sc_hd__o31ai_2_0_a_27_47_;
  wire sky130_fd_sc_hd__o31ai_2_0_a_281_297_;
  wire sky130_fd_sc_hd__o31ai_2_1_Y;
  wire sky130_fd_sc_hd__o31ai_2_1_a_27_297_;
  wire sky130_fd_sc_hd__o31ai_2_1_a_27_47_;
  wire sky130_fd_sc_hd__o31ai_2_1_a_281_297_;
  wire sky130_fd_sc_hd__o32a_2_0_A3;
  wire sky130_fd_sc_hd__o32a_2_0_X;
  wire sky130_fd_sc_hd__o32a_2_0_a_345_297_;
  wire sky130_fd_sc_hd__o32a_2_0_a_345_47_;
  wire sky130_fd_sc_hd__o32a_2_0_a_429_297_;
  wire sky130_fd_sc_hd__o32a_2_0_a_629_297_;
  wire sky130_fd_sc_hd__o32a_2_0_a_79_21_;
  wire sky130_fd_sc_hd__o32a_2_1_A3;
  wire sky130_fd_sc_hd__o32a_2_1_B1;
  wire sky130_fd_sc_hd__o32a_2_1_B2;
  wire sky130_fd_sc_hd__o32a_2_1_X;
  wire sky130_fd_sc_hd__o32a_2_1_a_345_297_;
  wire sky130_fd_sc_hd__o32a_2_1_a_345_47_;
  wire sky130_fd_sc_hd__o32a_2_1_a_429_297_;
  wire sky130_fd_sc_hd__o32a_2_1_a_629_297_;
  wire sky130_fd_sc_hd__o32a_2_1_a_79_21_;
  wire sky130_fd_sc_hd__o32a_2_2_A2;
  wire sky130_fd_sc_hd__o32a_2_2_A3;
  wire sky130_fd_sc_hd__o32a_2_2_B1;
  wire sky130_fd_sc_hd__o32a_2_2_B2;
  wire sky130_fd_sc_hd__o32a_2_2_X;
  wire sky130_fd_sc_hd__o32a_2_2_a_345_297_;
  wire sky130_fd_sc_hd__o32a_2_2_a_345_47_;
  wire sky130_fd_sc_hd__o32a_2_2_a_429_297_;
  wire sky130_fd_sc_hd__o32a_2_2_a_629_297_;
  wire sky130_fd_sc_hd__o32a_2_2_a_79_21_;
  wire sky130_fd_sc_hd__o32a_2_3_A1;
  wire sky130_fd_sc_hd__o32a_2_3_A2;
  wire sky130_fd_sc_hd__o32a_2_3_A3;
  wire sky130_fd_sc_hd__o32a_2_3_X;
  wire sky130_fd_sc_hd__o32a_2_3_a_345_297_;
  wire sky130_fd_sc_hd__o32a_2_3_a_345_47_;
  wire sky130_fd_sc_hd__o32a_2_3_a_429_297_;
  wire sky130_fd_sc_hd__o32a_2_3_a_629_297_;
  wire sky130_fd_sc_hd__o32a_2_3_a_79_21_;
  wire sky130_fd_sc_hd__o32ai_2_0_B1;
  wire sky130_fd_sc_hd__o32ai_2_0_Y;
  wire sky130_fd_sc_hd__o32ai_2_0_a_27_297_;
  wire sky130_fd_sc_hd__o32ai_2_0_a_27_47_;
  wire sky130_fd_sc_hd__o32ai_2_0_a_475_297_;
  wire sky130_fd_sc_hd__o32ai_2_0_a_729_297_;
  wire sky130_fd_sc_hd__or2_2_0_B;
  wire sky130_fd_sc_hd__or2_2_0_a_121_297_;
  wire sky130_fd_sc_hd__or2_2_0_a_39_297_;
  wire sky130_fd_sc_hd__or2_2_10_A;
  wire sky130_fd_sc_hd__or2_2_10_X;
  wire sky130_fd_sc_hd__or2_2_10_a_121_297_;
  wire sky130_fd_sc_hd__or2_2_10_a_39_297_;
  wire sky130_fd_sc_hd__or2_2_11_A;
  wire sky130_fd_sc_hd__or2_2_11_B;
  wire sky130_fd_sc_hd__or2_2_11_X;
  wire sky130_fd_sc_hd__or2_2_11_a_121_297_;
  wire sky130_fd_sc_hd__or2_2_11_a_39_297_;
  wire sky130_fd_sc_hd__or2_2_12_A;
  wire sky130_fd_sc_hd__or2_2_12_B;
  wire sky130_fd_sc_hd__or2_2_12_X;
  wire sky130_fd_sc_hd__or2_2_12_a_121_297_;
  wire sky130_fd_sc_hd__or2_2_12_a_39_297_;
  wire sky130_fd_sc_hd__or2_2_1_A;
  wire sky130_fd_sc_hd__or2_2_1_B;
  wire sky130_fd_sc_hd__or2_2_1_X;
  wire sky130_fd_sc_hd__or2_2_1_a_121_297_;
  wire sky130_fd_sc_hd__or2_2_1_a_39_297_;
  wire sky130_fd_sc_hd__or2_2_2_A;
  wire sky130_fd_sc_hd__or2_2_2_a_121_297_;
  wire sky130_fd_sc_hd__or2_2_2_a_39_297_;
  wire sky130_fd_sc_hd__or2_2_3_X;
  wire sky130_fd_sc_hd__or2_2_3_a_121_297_;
  wire sky130_fd_sc_hd__or2_2_3_a_39_297_;
  wire sky130_fd_sc_hd__or2_2_4_A;
  wire sky130_fd_sc_hd__or2_2_4_B;
  wire sky130_fd_sc_hd__or2_2_4_X;
  wire sky130_fd_sc_hd__or2_2_4_a_121_297_;
  wire sky130_fd_sc_hd__or2_2_4_a_39_297_;
  wire sky130_fd_sc_hd__or2_2_5_A;
  wire sky130_fd_sc_hd__or2_2_5_X;
  wire sky130_fd_sc_hd__or2_2_5_a_121_297_;
  wire sky130_fd_sc_hd__or2_2_5_a_39_297_;
  wire sky130_fd_sc_hd__or2_2_6_B;
  wire sky130_fd_sc_hd__or2_2_6_X;
  wire sky130_fd_sc_hd__or2_2_6_a_121_297_;
  wire sky130_fd_sc_hd__or2_2_6_a_39_297_;
  wire sky130_fd_sc_hd__or2_2_7_A;
  wire sky130_fd_sc_hd__or2_2_7_X;
  wire sky130_fd_sc_hd__or2_2_7_a_121_297_;
  wire sky130_fd_sc_hd__or2_2_7_a_39_297_;
  wire sky130_fd_sc_hd__or2_2_8_B;
  wire sky130_fd_sc_hd__or2_2_8_VPB;
  wire sky130_fd_sc_hd__or2_2_8_X;
  wire sky130_fd_sc_hd__or2_2_8_a_121_297_;
  wire sky130_fd_sc_hd__or2_2_8_a_39_297_;
  wire sky130_fd_sc_hd__or2_2_9_A;
  wire sky130_fd_sc_hd__or2_2_9_B;
  wire sky130_fd_sc_hd__or2_2_9_X;
  wire sky130_fd_sc_hd__or2_2_9_a_121_297_;
  wire sky130_fd_sc_hd__or2_2_9_a_39_297_;
  wire sky130_fd_sc_hd__or3_2_0_B;
  wire sky130_fd_sc_hd__or3_2_0_X;
  wire sky130_fd_sc_hd__or3_2_0_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_0_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_0_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_10_A;
  wire sky130_fd_sc_hd__or3_2_10_X;
  wire sky130_fd_sc_hd__or3_2_10_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_10_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_10_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_11_A;
  wire sky130_fd_sc_hd__or3_2_11_X;
  wire sky130_fd_sc_hd__or3_2_11_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_11_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_11_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_12_X;
  wire sky130_fd_sc_hd__or3_2_12_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_12_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_12_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_13_A;
  wire sky130_fd_sc_hd__or3_2_13_X;
  wire sky130_fd_sc_hd__or3_2_13_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_13_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_13_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_14_A;
  wire sky130_fd_sc_hd__or3_2_14_X;
  wire sky130_fd_sc_hd__or3_2_14_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_14_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_14_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_15_A;
  wire sky130_fd_sc_hd__or3_2_15_X;
  wire sky130_fd_sc_hd__or3_2_15_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_15_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_15_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_16_A;
  wire sky130_fd_sc_hd__or3_2_16_X;
  wire sky130_fd_sc_hd__or3_2_16_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_16_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_16_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_17_A;
  wire sky130_fd_sc_hd__or3_2_17_B;
  wire sky130_fd_sc_hd__or3_2_17_C;
  wire sky130_fd_sc_hd__or3_2_17_X;
  wire sky130_fd_sc_hd__or3_2_17_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_17_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_17_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_1_B;
  wire sky130_fd_sc_hd__or3_2_1_C;
  wire sky130_fd_sc_hd__or3_2_1_X;
  wire sky130_fd_sc_hd__or3_2_1_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_1_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_1_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_2_B;
  wire sky130_fd_sc_hd__or3_2_2_C;
  wire sky130_fd_sc_hd__or3_2_2_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_2_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_2_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_3_A;
  wire sky130_fd_sc_hd__or3_2_3_B;
  wire sky130_fd_sc_hd__or3_2_3_C;
  wire sky130_fd_sc_hd__or3_2_3_X;
  wire sky130_fd_sc_hd__or3_2_3_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_3_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_3_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_4_B;
  wire sky130_fd_sc_hd__or3_2_4_C;
  wire sky130_fd_sc_hd__or3_2_4_X;
  wire sky130_fd_sc_hd__or3_2_4_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_4_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_4_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_5_A;
  wire sky130_fd_sc_hd__or3_2_5_B;
  wire sky130_fd_sc_hd__or3_2_5_C;
  wire sky130_fd_sc_hd__or3_2_5_X;
  wire sky130_fd_sc_hd__or3_2_5_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_5_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_5_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_6_A;
  wire sky130_fd_sc_hd__or3_2_6_B;
  wire sky130_fd_sc_hd__or3_2_6_C;
  wire sky130_fd_sc_hd__or3_2_6_X;
  wire sky130_fd_sc_hd__or3_2_6_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_6_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_6_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_7_A;
  wire sky130_fd_sc_hd__or3_2_7_B;
  wire sky130_fd_sc_hd__or3_2_7_C;
  wire sky130_fd_sc_hd__or3_2_7_X;
  wire sky130_fd_sc_hd__or3_2_7_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_7_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_7_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_8_A;
  wire sky130_fd_sc_hd__or3_2_8_B;
  wire sky130_fd_sc_hd__or3_2_8_C;
  wire sky130_fd_sc_hd__or3_2_8_X;
  wire sky130_fd_sc_hd__or3_2_8_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_8_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_8_a_30_53_;
  wire sky130_fd_sc_hd__or3_2_9_A;
  wire sky130_fd_sc_hd__or3_2_9_B;
  wire sky130_fd_sc_hd__or3_2_9_C;
  wire sky130_fd_sc_hd__or3_2_9_X;
  wire sky130_fd_sc_hd__or3_2_9_a_112_297_;
  wire sky130_fd_sc_hd__or3_2_9_a_184_297_;
  wire sky130_fd_sc_hd__or3_2_9_a_30_53_;
  wire sky130_fd_sc_hd__or3b_2_0_A;
  wire sky130_fd_sc_hd__or3b_2_0_X;
  wire sky130_fd_sc_hd__or3b_2_0_a_176_21_;
  wire sky130_fd_sc_hd__or3b_2_0_a_27_47_;
  wire sky130_fd_sc_hd__or3b_2_0_a_388_297_;
  wire sky130_fd_sc_hd__or3b_2_0_a_472_297_;
  wire sky130_fd_sc_hd__or4_2_0_A;
  wire sky130_fd_sc_hd__or4_2_0_B;
  wire sky130_fd_sc_hd__or4_2_0_C;
  wire sky130_fd_sc_hd__or4_2_0_D;
  wire sky130_fd_sc_hd__or4_2_0_X;
  wire sky130_fd_sc_hd__or4_2_0_a_109_297_;
  wire sky130_fd_sc_hd__or4_2_0_a_205_297_;
  wire sky130_fd_sc_hd__or4_2_0_a_277_297_;
  wire sky130_fd_sc_hd__or4_2_0_a_27_297_;
  wire sky130_fd_sc_hd__or4_2_1_A;
  wire sky130_fd_sc_hd__or4_2_1_B;
  wire sky130_fd_sc_hd__or4_2_1_C;
  wire sky130_fd_sc_hd__or4_2_1_D;
  wire sky130_fd_sc_hd__or4_2_1_X;
  wire sky130_fd_sc_hd__or4_2_1_a_109_297_;
  wire sky130_fd_sc_hd__or4_2_1_a_205_297_;
  wire sky130_fd_sc_hd__or4_2_1_a_277_297_;
  wire sky130_fd_sc_hd__or4_2_1_a_27_297_;
  wire sky130_fd_sc_hd__or4_2_2_A;
  wire sky130_fd_sc_hd__or4_2_2_B;
  wire sky130_fd_sc_hd__or4_2_2_C;
  wire sky130_fd_sc_hd__or4_2_2_D;
  wire sky130_fd_sc_hd__or4_2_2_X;
  wire sky130_fd_sc_hd__or4_2_2_a_109_297_;
  wire sky130_fd_sc_hd__or4_2_2_a_205_297_;
  wire sky130_fd_sc_hd__or4_2_2_a_277_297_;
  wire sky130_fd_sc_hd__or4_2_2_a_27_297_;
  wire sky130_fd_sc_hd__or4_2_3_A;
  wire sky130_fd_sc_hd__or4_2_3_B;
  wire sky130_fd_sc_hd__or4_2_3_C;
  wire sky130_fd_sc_hd__or4_2_3_D;
  wire sky130_fd_sc_hd__or4_2_3_X;
  wire sky130_fd_sc_hd__or4_2_3_a_109_297_;
  wire sky130_fd_sc_hd__or4_2_3_a_205_297_;
  wire sky130_fd_sc_hd__or4_2_3_a_277_297_;
  wire sky130_fd_sc_hd__or4_2_3_a_27_297_;
  wire sky130_fd_sc_hd__or4_2_4_A;
  wire sky130_fd_sc_hd__or4_2_4_B;
  wire sky130_fd_sc_hd__or4_2_4_C;
  wire sky130_fd_sc_hd__or4_2_4_D;
  wire sky130_fd_sc_hd__or4_2_4_X;
  wire sky130_fd_sc_hd__or4_2_4_a_109_297_;
  wire sky130_fd_sc_hd__or4_2_4_a_205_297_;
  wire sky130_fd_sc_hd__or4_2_4_a_277_297_;
  wire sky130_fd_sc_hd__or4_2_4_a_27_297_;
  wire sky130_fd_sc_hd__or4_2_5_A;
  wire sky130_fd_sc_hd__or4_2_5_B;
  wire sky130_fd_sc_hd__or4_2_5_C;
  wire sky130_fd_sc_hd__or4_2_5_D;
  wire sky130_fd_sc_hd__or4_2_5_X;
  wire sky130_fd_sc_hd__or4_2_5_a_109_297_;
  wire sky130_fd_sc_hd__or4_2_5_a_205_297_;
  wire sky130_fd_sc_hd__or4_2_5_a_277_297_;
  wire sky130_fd_sc_hd__or4_2_5_a_27_297_;
  wire sky130_fd_sc_hd__or4_2_6_A;
  wire sky130_fd_sc_hd__or4_2_6_B;
  wire sky130_fd_sc_hd__or4_2_6_C;
  wire sky130_fd_sc_hd__or4_2_6_D;
  wire sky130_fd_sc_hd__or4_2_6_X;
  wire sky130_fd_sc_hd__or4_2_6_a_109_297_;
  wire sky130_fd_sc_hd__or4_2_6_a_205_297_;
  wire sky130_fd_sc_hd__or4_2_6_a_277_297_;
  wire sky130_fd_sc_hd__or4_2_6_a_27_297_;
  wire sky130_fd_sc_hd__or4_2_7_A;
  wire sky130_fd_sc_hd__or4_2_7_B;
  wire sky130_fd_sc_hd__or4_2_7_C;
  wire sky130_fd_sc_hd__or4_2_7_D;
  wire sky130_fd_sc_hd__or4_2_7_X;
  wire sky130_fd_sc_hd__or4_2_7_a_109_297_;
  wire sky130_fd_sc_hd__or4_2_7_a_205_297_;
  wire sky130_fd_sc_hd__or4_2_7_a_277_297_;
  wire sky130_fd_sc_hd__or4_2_7_a_27_297_;
  wire sky130_fd_sc_hd__or4_2_8_A;
  wire sky130_fd_sc_hd__or4_2_8_B;
  wire sky130_fd_sc_hd__or4_2_8_C;
  wire sky130_fd_sc_hd__or4_2_8_D;
  wire sky130_fd_sc_hd__or4_2_8_X;
  wire sky130_fd_sc_hd__or4_2_8_a_109_297_;
  wire sky130_fd_sc_hd__or4_2_8_a_205_297_;
  wire sky130_fd_sc_hd__or4_2_8_a_277_297_;
  wire sky130_fd_sc_hd__or4_2_8_a_27_297_;
  wire sky130_fd_sc_hd__or4_2_9_A;
  wire sky130_fd_sc_hd__or4_2_9_B;
  wire sky130_fd_sc_hd__or4_2_9_C;
  wire sky130_fd_sc_hd__or4_2_9_D;
  wire sky130_fd_sc_hd__or4_2_9_X;
  wire sky130_fd_sc_hd__or4_2_9_a_109_297_;
  wire sky130_fd_sc_hd__or4_2_9_a_205_297_;
  wire sky130_fd_sc_hd__or4_2_9_a_277_297_;
  wire sky130_fd_sc_hd__or4_2_9_a_27_297_;
  wire sky130_fd_sc_hd__or4b_2_0_a_176_21_;
  wire sky130_fd_sc_hd__or4b_2_0_a_27_53_;
  wire sky130_fd_sc_hd__or4b_2_0_a_387_297_;
  wire sky130_fd_sc_hd__or4b_2_0_a_483_297_;
  wire sky130_fd_sc_hd__or4b_2_0_a_555_297_;
  wire sky130_fd_sc_hd__or4b_2_1_a_176_21_;
  wire sky130_fd_sc_hd__or4b_2_1_a_27_53_;
  wire sky130_fd_sc_hd__or4b_2_1_a_387_297_;
  wire sky130_fd_sc_hd__or4b_2_1_a_483_297_;
  wire sky130_fd_sc_hd__or4b_2_1_a_555_297_;
  wire sky130_fd_sc_hd__or4b_2_2_C;
  wire sky130_fd_sc_hd__or4b_2_2_a_176_21_;
  wire sky130_fd_sc_hd__or4b_2_2_a_27_53_;
  wire sky130_fd_sc_hd__or4b_2_2_a_387_297_;
  wire sky130_fd_sc_hd__or4b_2_2_a_483_297_;
  wire sky130_fd_sc_hd__or4b_2_2_a_555_297_;
  wire sky130_fd_sc_hd__or4b_2_3_A;
  wire sky130_fd_sc_hd__or4b_2_3_B;
  wire sky130_fd_sc_hd__or4b_2_3_C;
  wire sky130_fd_sc_hd__or4b_2_3_a_176_21_;
  wire sky130_fd_sc_hd__or4b_2_3_a_27_53_;
  wire sky130_fd_sc_hd__or4b_2_3_a_387_297_;
  wire sky130_fd_sc_hd__or4b_2_3_a_483_297_;
  wire sky130_fd_sc_hd__or4b_2_3_a_555_297_;
  wire sky130_fd_sc_hd__or4b_2_4_a_176_21_;
  wire sky130_fd_sc_hd__or4b_2_4_a_27_53_;
  wire sky130_fd_sc_hd__or4b_2_4_a_387_297_;
  wire sky130_fd_sc_hd__or4b_2_4_a_483_297_;
  wire sky130_fd_sc_hd__or4b_2_4_a_555_297_;
  wire sky130_fd_sc_hd__or4b_2_5_a_176_21_;
  wire sky130_fd_sc_hd__or4b_2_5_a_27_53_;
  wire sky130_fd_sc_hd__or4b_2_5_a_387_297_;
  wire sky130_fd_sc_hd__or4b_2_5_a_483_297_;
  wire sky130_fd_sc_hd__or4b_2_5_a_555_297_;
  wire sky130_fd_sc_hd__or4b_2_6_a_176_21_;
  wire sky130_fd_sc_hd__or4b_2_6_a_27_53_;
  wire sky130_fd_sc_hd__or4b_2_6_a_387_297_;
  wire sky130_fd_sc_hd__or4b_2_6_a_483_297_;
  wire sky130_fd_sc_hd__or4b_2_6_a_555_297_;
  wire sky130_fd_sc_hd__or4b_2_7_a_176_21_;
  wire sky130_fd_sc_hd__or4b_2_7_a_27_53_;
  wire sky130_fd_sc_hd__or4b_2_7_a_387_297_;
  wire sky130_fd_sc_hd__or4b_2_7_a_483_297_;
  wire sky130_fd_sc_hd__or4b_2_7_a_555_297_;
  wire sky130_fd_sc_hd__or4b_2_8_A;
  wire sky130_fd_sc_hd__or4b_2_8_C;
  wire sky130_fd_sc_hd__or4b_2_8_X;
  wire sky130_fd_sc_hd__or4b_2_8_a_176_21_;
  wire sky130_fd_sc_hd__or4b_2_8_a_27_53_;
  wire sky130_fd_sc_hd__or4b_2_8_a_387_297_;
  wire sky130_fd_sc_hd__or4b_2_8_a_483_297_;
  wire sky130_fd_sc_hd__or4b_2_8_a_555_297_;
  wire sky130_fd_sc_hd__or4bb_2_0_X;
  wire sky130_fd_sc_hd__or4bb_2_0_a_206_93_;
  wire sky130_fd_sc_hd__or4bb_2_0_a_27_410_;
  wire sky130_fd_sc_hd__or4bb_2_0_a_316_413_;
  wire sky130_fd_sc_hd__or4bb_2_0_a_398_413_;
  wire sky130_fd_sc_hd__or4bb_2_0_a_494_297_;
  wire sky130_fd_sc_hd__or4bb_2_0_a_566_297_;
  wire sky130_fd_sc_hd__xnor2_2_0_A;
  wire sky130_fd_sc_hd__xnor2_2_0_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_0_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_0_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_0_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_10_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_10_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_10_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_10_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_11_B;
  wire sky130_fd_sc_hd__xnor2_2_11_Y;
  wire sky130_fd_sc_hd__xnor2_2_11_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_11_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_11_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_11_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_12_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_12_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_12_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_12_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_13_Y;
  wire sky130_fd_sc_hd__xnor2_2_13_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_13_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_13_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_13_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_14_B;
  wire sky130_fd_sc_hd__xnor2_2_14_Y;
  wire sky130_fd_sc_hd__xnor2_2_14_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_14_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_14_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_14_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_15_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_15_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_15_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_15_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_16_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_16_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_16_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_16_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_17_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_17_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_17_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_17_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_18_Y;
  wire sky130_fd_sc_hd__xnor2_2_18_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_18_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_18_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_18_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_19_Y;
  wire sky130_fd_sc_hd__xnor2_2_19_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_19_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_19_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_19_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_1_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_1_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_1_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_1_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_20_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_20_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_20_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_20_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_21_B;
  wire sky130_fd_sc_hd__xnor2_2_21_Y;
  wire sky130_fd_sc_hd__xnor2_2_21_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_21_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_21_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_21_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_22_Y;
  wire sky130_fd_sc_hd__xnor2_2_22_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_22_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_22_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_22_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_23_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_23_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_23_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_23_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_24_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_24_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_24_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_24_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_25_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_25_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_25_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_25_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_26_A;
  wire sky130_fd_sc_hd__xnor2_2_26_B;
  wire sky130_fd_sc_hd__xnor2_2_26_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_26_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_26_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_26_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_27_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_27_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_27_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_27_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_28_Y;
  wire sky130_fd_sc_hd__xnor2_2_28_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_28_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_28_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_28_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_2_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_2_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_2_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_2_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_3_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_3_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_3_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_3_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_4_A;
  wire sky130_fd_sc_hd__xnor2_2_4_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_4_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_4_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_4_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_5_B;
  wire sky130_fd_sc_hd__xnor2_2_5_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_5_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_5_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_5_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_6_A;
  wire sky130_fd_sc_hd__xnor2_2_6_Y;
  wire sky130_fd_sc_hd__xnor2_2_6_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_6_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_6_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_6_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_7_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_7_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_7_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_7_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_8_A;
  wire sky130_fd_sc_hd__xnor2_2_8_B;
  wire sky130_fd_sc_hd__xnor2_2_8_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_8_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_8_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_8_a_560_47_;
  wire sky130_fd_sc_hd__xnor2_2_9_a_27_297_;
  wire sky130_fd_sc_hd__xnor2_2_9_a_27_47_;
  wire sky130_fd_sc_hd__xnor2_2_9_a_474_297_;
  wire sky130_fd_sc_hd__xnor2_2_9_a_560_47_;
  wire sky130_fd_sc_hd__xor2_2_0_B;
  wire sky130_fd_sc_hd__xor2_2_0_X;
  wire sky130_fd_sc_hd__xor2_2_0_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_0_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_0_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_0_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_10_X;
  wire sky130_fd_sc_hd__xor2_2_10_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_10_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_10_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_10_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_11_B;
  wire sky130_fd_sc_hd__xor2_2_11_X;
  wire sky130_fd_sc_hd__xor2_2_11_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_11_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_11_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_11_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_12_X;
  wire sky130_fd_sc_hd__xor2_2_12_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_12_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_12_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_12_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_13_X;
  wire sky130_fd_sc_hd__xor2_2_13_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_13_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_13_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_13_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_14_B;
  wire sky130_fd_sc_hd__xor2_2_14_X;
  wire sky130_fd_sc_hd__xor2_2_14_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_14_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_14_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_14_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_15_X;
  wire sky130_fd_sc_hd__xor2_2_15_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_15_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_15_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_15_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_16_A;
  wire sky130_fd_sc_hd__xor2_2_16_X;
  wire sky130_fd_sc_hd__xor2_2_16_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_16_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_16_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_16_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_17_B;
  wire sky130_fd_sc_hd__xor2_2_17_X;
  wire sky130_fd_sc_hd__xor2_2_17_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_17_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_17_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_17_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_18_X;
  wire sky130_fd_sc_hd__xor2_2_18_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_18_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_18_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_18_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_19_A;
  wire sky130_fd_sc_hd__xor2_2_19_B;
  wire sky130_fd_sc_hd__xor2_2_19_X;
  wire sky130_fd_sc_hd__xor2_2_19_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_19_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_19_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_19_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_1_B;
  wire sky130_fd_sc_hd__xor2_2_1_X;
  wire sky130_fd_sc_hd__xor2_2_1_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_1_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_1_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_1_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_20_A;
  wire sky130_fd_sc_hd__xor2_2_20_B;
  wire sky130_fd_sc_hd__xor2_2_20_X;
  wire sky130_fd_sc_hd__xor2_2_20_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_20_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_20_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_20_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_2_A;
  wire sky130_fd_sc_hd__xor2_2_2_B;
  wire sky130_fd_sc_hd__xor2_2_2_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_2_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_2_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_2_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_3_A;
  wire sky130_fd_sc_hd__xor2_2_3_B;
  wire sky130_fd_sc_hd__xor2_2_3_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_3_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_3_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_3_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_4_A;
  wire sky130_fd_sc_hd__xor2_2_4_X;
  wire sky130_fd_sc_hd__xor2_2_4_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_4_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_4_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_4_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_5_A;
  wire sky130_fd_sc_hd__xor2_2_5_B;
  wire sky130_fd_sc_hd__xor2_2_5_X;
  wire sky130_fd_sc_hd__xor2_2_5_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_5_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_5_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_5_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_6_A;
  wire sky130_fd_sc_hd__xor2_2_6_B;
  wire sky130_fd_sc_hd__xor2_2_6_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_6_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_6_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_6_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_7_A;
  wire sky130_fd_sc_hd__xor2_2_7_X;
  wire sky130_fd_sc_hd__xor2_2_7_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_7_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_7_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_7_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_8_A;
  wire sky130_fd_sc_hd__xor2_2_8_B;
  wire sky130_fd_sc_hd__xor2_2_8_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_8_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_8_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_8_a_470_47_;
  wire sky130_fd_sc_hd__xor2_2_9_A;
  wire sky130_fd_sc_hd__xor2_2_9_X;
  wire sky130_fd_sc_hd__xor2_2_9_a_112_47_;
  wire sky130_fd_sc_hd__xor2_2_9_a_27_297_;
  wire sky130_fd_sc_hd__xor2_2_9_a_470_297_;
  wire sky130_fd_sc_hd__xor2_2_9_a_470_47_;

  sky130_fd_sc_hd__nor4_2 Xsky130_fd_sc_hd__nor4_2_0 (
    .C(sky130_fd_sc_hd__or4b_2_2_C),
    .D(sky130_fd_sc_hd__or4b_2_3_C),
    .Y(sky130_fd_sc_hd__nor4_2_0_Y),
    .A(sky130_fd_sc_hd__or4b_2_3_A),
    .B(sky130_fd_sc_hd__or4b_2_3_B)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_8 (
    .B(sky130_fd_sc_hd__or2_2_8_B),
    .X(sky130_fd_sc_hd__or2_2_8_X),
    .A(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_3 (
    .X(sky130_fd_sc_hd__and4_2_1_A),
    .B(sky130_fd_sc_hd__and2b_2_3_B),
    .A_N(sky130_fd_sc_hd__nand4_2_1_C)
  );

  sky130_fd_sc_hd__o31ai_2 Xsky130_fd_sc_hd__o31ai_2_1 (
    .A1(sky130_fd_sc_hd__or3_2_3_A),
    .Y(sky130_fd_sc_hd__o31ai_2_1_Y),
    .B1(sky130_fd_sc_hd__nor2_2_5_A),
    .A3(sky130_fd_sc_hd__or2_2_2_A),
    .A2(sky130_fd_sc_hd__or3_2_3_B)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_17 (
    .X(sky130_fd_sc_hd__a31o_2_17_X),
    .B1(sky130_fd_sc_hd__nand4_2_4_C),
    .A3(sky130_fd_sc_hd__nand4_2_4_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_20 (
    .B(sky130_fd_sc_hd__o31a_2_10_X),
    .X(O[3]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_12 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__o21a_2_27_A2),
    .D(sky130_fd_sc_hd__nand4_2_12_D),
    .C(sky130_fd_sc_hd__nand4_2_12_C)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_17 (
    .A(sky130_fd_sc_hd__or3_2_17_A),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_17_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_9 (
    .X(sky130_fd_sc_hd__a31o_2_9_X),
    .B1(sky130_fd_sc_hd__nor3_2_2_A),
    .A3(sky130_fd_sc_hd__and4_2_4_D),
    .A1(sky130_fd_sc_hd__and4_2_3_C),
    .A2(sky130_fd_sc_hd__inv_2_10_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_24 (
    .Y(sky130_fd_sc_hd__nor3b_2_0_B),
    .A(sky130_fd_sc_hd__xor2_2_16_A),
    .B(sky130_fd_sc_hd__xor2_2_19_X)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_7 (
    .A_N(sky130_fd_sc_hd__or4b_2_3_A),
    .C(sky130_fd_sc_hd__or4b_2_2_C),
    .B_N(sky130_fd_sc_hd__or4b_2_3_C),
    .X(sky130_fd_sc_hd__nand4_2_4_D),
    .D(sky130_fd_sc_hd__or4b_2_3_B)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_13 (
    .Y(sky130_fd_sc_hd__xnor2_2_13_Y),
    .A(sky130_fd_sc_hd__xor2_2_17_B),
    .B(sky130_fd_sc_hd__a31o_2_15_X)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_15 (
    .X(sky130_fd_sc_hd__dfrtp_2_8_CLK),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__nor3b_2 Xsky130_fd_sc_hd__nor3b_2_2 (
    .C_N(sky130_fd_sc_hd__nor3_2_3_B),
    .Y(sky130_fd_sc_hd__nor3b_2_2_Y),
    .A(sky130_fd_sc_hd__nor3_2_3_A),
    .B(sky130_fd_sc_hd__nor3_2_3_C)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_1 (
    .X(sky130_fd_sc_hd__clkbuf_8_1_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_4 (
    .S(sky130_fd_sc_hd__mux2_1_4_S),
    .A1(sky130_fd_sc_hd__or2_2_4_A),
    .A0(sky130_fd_sc_hd__or3_2_4_B),
    .X(sky130_fd_sc_hd__mux2_1_4_X)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_8 (
    .X(sky130_fd_sc_hd__xor2_2_8_A),
    .B1(sky130_fd_sc_hd__nor2_2_19_Y),
    .A1(sky130_fd_sc_hd__xor2_2_2_A),
    .A2(sky130_fd_sc_hd__a21o_2_8_A2)
  );

  sky130_fd_sc_hd__a211oi_2 Xsky130_fd_sc_hd__a211oi_2_0 (
    .A2(sky130_fd_sc_hd__inv_2_9_A),
    .C1(sky130_fd_sc_hd__xor2_2_11_B),
    .B1(sky130_fd_sc_hd__a21oi_2_13_Y),
    .Y(sky130_fd_sc_hd__dfrtp_2_43_D),
    .A1(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nor4_2 Xsky130_fd_sc_hd__nor4_2_1 (
    .C(sky130_fd_sc_hd__or4_2_4_D),
    .D(sky130_fd_sc_hd__or4_2_4_C),
    .Y(sky130_fd_sc_hd__nor4_2_1_Y),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .B(sky130_fd_sc_hd__or4_2_4_A)
  );

  sky130_fd_sc_hd__a22oi_2 Xsky130_fd_sc_hd__a22oi_2_0 (
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .A2(sky130_fd_sc_hd__inv_2_13_Y),
    .B1(sky130_fd_sc_hd__or2_2_9_X),
    .B2(sky130_fd_sc_hd__nand2_2_29_Y),
    .Y(sky130_fd_sc_hd__a22oi_2_0_Y)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_9 (
    .B(sky130_fd_sc_hd__or2_2_9_B),
    .X(sky130_fd_sc_hd__or2_2_9_X),
    .A(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__o221a_2 Xsky130_fd_sc_hd__o221a_2_0 (
    .B2(sky130_fd_sc_hd__or4_2_0_A),
    .A2(sky130_fd_sc_hd__o21ai_2_2_Y),
    .X(sky130_fd_sc_hd__o221a_2_0_X),
    .B1(sky130_fd_sc_hd__o21a_2_1_X),
    .C1(sky130_fd_sc_hd__or4_2_0_B),
    .A1(sky130_fd_sc_hd__or3_2_2_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_4 (
    .X(sky130_fd_sc_hd__and4_2_1_D),
    .B(sky130_fd_sc_hd__o21a_2_8_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_2_C)
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_0 (
    .X(sky130_fd_sc_hd__and4_2_0_X),
    .C(sky130_fd_sc_hd__and4_2_0_C),
    .A(sky130_fd_sc_hd__and4_2_0_A),
    .B(sky130_fd_sc_hd__and4_2_0_B),
    .D(sky130_fd_sc_hd__and4_2_0_D)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_18 (
    .X(sky130_fd_sc_hd__a31o_2_18_X),
    .B1(sky130_fd_sc_hd__nand4_2_7_C),
    .A3(sky130_fd_sc_hd__nor4_2_1_Y),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_10 (
    .B(sky130_fd_sc_hd__and3_2_10_B),
    .X(sky130_fd_sc_hd__or4b_2_8_C),
    .A(sky130_fd_sc_hd__and3_2_10_A),
    .C(sky130_fd_sc_hd__and4_2_4_B)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_21 (
    .B(sky130_fd_sc_hd__o31a_2_5_X),
    .X(O[4]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_13 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__o21a_2_25_A2),
    .D(sky130_fd_sc_hd__nand4_2_13_D),
    .C(sky130_fd_sc_hd__nand4_2_13_C)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_25 (
    .Y(sky130_fd_sc_hd__nor2_2_46_B),
    .A(sky130_fd_sc_hd__a22o_2_4_B2),
    .B(sky130_fd_sc_hd__xor2_2_17_X)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_8 (
    .A_N(sky130_fd_sc_hd__or4b_2_3_B),
    .C(sky130_fd_sc_hd__or4b_2_2_C),
    .B_N(sky130_fd_sc_hd__or4b_2_3_C),
    .X(sky130_fd_sc_hd__nand4_2_6_D),
    .D(sky130_fd_sc_hd__or4b_2_3_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_14 (
    .Y(sky130_fd_sc_hd__xnor2_2_14_Y),
    .A(sky130_fd_sc_hd__xor2_2_16_A),
    .B(sky130_fd_sc_hd__xnor2_2_14_B)
  );

  sky130_fd_sc_hd__nor3b_2 Xsky130_fd_sc_hd__nor3b_2_3 (
    .C_N(sky130_fd_sc_hd__nor3_2_3_C),
    .Y(sky130_fd_sc_hd__nor3b_2_3_Y),
    .A(sky130_fd_sc_hd__nor3_2_3_A),
    .B(sky130_fd_sc_hd__nor3_2_3_B)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_2 (
    .X(sky130_fd_sc_hd__clkbuf_8_2_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_5 (
    .S(sky130_fd_sc_hd__xor2_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_5_A1),
    .A0(sky130_fd_sc_hd__and3_2_7_X),
    .X(sky130_fd_sc_hd__mux2_1_5_X)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_9 (
    .X(sky130_fd_sc_hd__a21o_2_9_X),
    .B1(sky130_fd_sc_hd__xor2_2_4_A),
    .A1(sky130_fd_sc_hd__xor2_2_9_A),
    .A2(sky130_fd_sc_hd__inv_2_5_A)
  );

  sky130_fd_sc_hd__a211oi_2 Xsky130_fd_sc_hd__a211oi_2_1 (
    .A2(sky130_fd_sc_hd__a32o_2_3_B1),
    .C1(sky130_fd_sc_hd__or4b_2_8_A),
    .B1(sky130_fd_sc_hd__or4b_2_8_C),
    .Y(sky130_fd_sc_hd__nor3_2_3_A),
    .A1(sky130_fd_sc_hd__inv_2_22_Y)
  );

  sky130_fd_sc_hd__o221a_2 Xsky130_fd_sc_hd__o221a_2_1 (
    .B2(sky130_fd_sc_hd__xnor2_2_21_Y),
    .A2(sky130_fd_sc_hd__or2_2_10_X),
    .X(sky130_fd_sc_hd__o221a_2_1_X),
    .B1(sky130_fd_sc_hd__nor2_2_46_A),
    .C1(sky130_fd_sc_hd__o21ai_2_3_Y),
    .A1(sky130_fd_sc_hd__xor2_2_16_A)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_5 (
    .X(sky130_fd_sc_hd__xor2_2_6_B),
    .B(sky130_fd_sc_hd__o22ai_2_0_Y),
    .A_N(sky130_fd_sc_hd__and4bb_2_0_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_0 (
    .B1(sky130_fd_sc_hd__or4_2_0_A),
    .A2(sky130_fd_sc_hd__nor2_2_3_B),
    .A1(sky130_fd_sc_hd__or3_2_3_B),
    .Y(sky130_fd_sc_hd__a32o_2_1_B2)
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_1 (
    .X(sky130_fd_sc_hd__and4_2_1_X),
    .C(sky130_fd_sc_hd__and4_2_1_C),
    .A(sky130_fd_sc_hd__and4_2_1_A),
    .B(sky130_fd_sc_hd__and4_2_1_B),
    .D(sky130_fd_sc_hd__and4_2_1_D)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_19 (
    .X(sky130_fd_sc_hd__a31o_2_19_X),
    .B1(sky130_fd_sc_hd__nand4_2_8_C),
    .A3(sky130_fd_sc_hd__nand4_2_8_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_0 (
    .C1(sky130_fd_sc_hd__xor2_2_4_A),
    .B1(sky130_fd_sc_hd__xor2_2_9_A),
    .A2(sky130_fd_sc_hd__xor2_2_0_B),
    .A1(sky130_fd_sc_hd__xor2_2_7_A),
    .X(sky130_fd_sc_hd__o211a_2_0_X)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_22 (
    .B(sky130_fd_sc_hd__o31a_2_8_X),
    .X(O[5]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_11 (
    .B(sky130_fd_sc_hd__and4_2_3_B),
    .X(sky130_fd_sc_hd__and3_2_11_X),
    .A(sky130_fd_sc_hd__and4_2_3_A),
    .C(sky130_fd_sc_hd__inv_2_10_A)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_14 (
    .B(sky130_fd_sc_hd__or2_2_9_B),
    .A(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__and3_2_25_C),
    .D(sky130_fd_sc_hd__or3b_2_0_A),
    .C(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_9 (
    .A_N(sky130_fd_sc_hd__or4_2_4_B),
    .C(sky130_fd_sc_hd__or4_2_4_C),
    .B_N(sky130_fd_sc_hd__or4_2_4_D),
    .X(sky130_fd_sc_hd__nand4_2_9_D),
    .D(sky130_fd_sc_hd__or4_2_4_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_15 (
    .Y(sky130_fd_sc_hd__a22o_2_9_A1),
    .A(sky130_fd_sc_hd__a22o_2_4_B2),
    .B(sky130_fd_sc_hd__a22o_2_22_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_26 (
    .Y(sky130_fd_sc_hd__nor2_2_40_A),
    .A(sky130_fd_sc_hd__xnor2_2_26_A),
    .B(sky130_fd_sc_hd__xnor2_2_26_B)
  );

  sky130_fd_sc_hd__nor3b_2 Xsky130_fd_sc_hd__nor3b_2_4 (
    .C_N(sky130_fd_sc_hd__nor3_2_3_A),
    .Y(sky130_fd_sc_hd__or3_2_17_B),
    .A(sky130_fd_sc_hd__nor3_2_3_B),
    .B(sky130_fd_sc_hd__nor3_2_3_C)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_3 (
    .X(sky130_fd_sc_hd__clkbuf_8_3_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_6 (
    .S(sky130_fd_sc_hd__inv_2_7_Y),
    .A1(sky130_fd_sc_hd__inv_2_8_Y),
    .A0(sky130_fd_sc_hd__inv_2_9_A),
    .X(sky130_fd_sc_hd__mux2_1_6_X)
  );

  sky130_fd_sc_hd__a211oi_2 Xsky130_fd_sc_hd__a211oi_2_2 (
    .A2(sky130_fd_sc_hd__or2_2_9_A),
    .C1(sky130_fd_sc_hd__or2_2_8_B),
    .B1(sky130_fd_sc_hd__or2_2_9_B),
    .Y(sky130_fd_sc_hd__or3_2_17_A),
    .A1(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__o221a_2 Xsky130_fd_sc_hd__o221a_2_2 (
    .B2(sky130_fd_sc_hd__o221a_2_2_B2),
    .A2(sky130_fd_sc_hd__nor2_2_32_B),
    .X(sky130_fd_sc_hd__o221a_2_2_X),
    .B1(sky130_fd_sc_hd__nor2_2_32_Y),
    .C1(sky130_fd_sc_hd__o221a_2_2_C1),
    .A1(sky130_fd_sc_hd__or2_2_8_X)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_0 (
    .C(sky130_fd_sc_hd__or4b_2_3_C),
    .A(sky130_fd_sc_hd__or4b_2_3_A),
    .X(sky130_fd_sc_hd__or4_2_1_C),
    .B(sky130_fd_sc_hd__or4b_2_2_C),
    .D_N(sky130_fd_sc_hd__or4b_2_3_B)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_6 (
    .X(sky130_fd_sc_hd__and2b_2_6_X),
    .B(sky130_fd_sc_hd__or3b_2_0_A),
    .A_N(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_1 (
    .B1(sky130_fd_sc_hd__or3_2_0_X),
    .A2(sky130_fd_sc_hd__and3_2_0_C),
    .A1(sky130_fd_sc_hd__or2_2_4_A),
    .Y(sky130_fd_sc_hd__o32a_2_0_A3)
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_2 (
    .X(sky130_fd_sc_hd__inv_2_5_A),
    .C(sky130_fd_sc_hd__xor2_2_0_B),
    .A(sky130_fd_sc_hd__inv_2_9_A),
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .D(sky130_fd_sc_hd__xor2_2_7_A)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_1 (
    .C1(sky130_fd_sc_hd__nor2_2_5_A),
    .B1(sky130_fd_sc_hd__or2_2_4_A),
    .A2(sky130_fd_sc_hd__or2_2_2_A),
    .A1(sky130_fd_sc_hd__or3_2_3_A),
    .X(sky130_fd_sc_hd__or3_2_4_C)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_23 (
    .B(sky130_fd_sc_hd__o31a_2_3_X),
    .X(O[7]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_12 (
    .B(sky130_fd_sc_hd__and3_2_12_B),
    .X(sky130_fd_sc_hd__and3_2_13_C),
    .A(sky130_fd_sc_hd__and3_2_12_A),
    .C(sky130_fd_sc_hd__and3_2_12_C)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_16 (
    .Y(sky130_fd_sc_hd__xnor2_2_26_B),
    .A(sky130_fd_sc_hd__xor2_2_20_A),
    .B(sky130_fd_sc_hd__xor2_2_17_B)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_27 (
    .Y(sky130_fd_sc_hd__o32a_2_2_A2),
    .A(sky130_fd_sc_hd__or2_2_8_B),
    .B(sky130_fd_sc_hd__and3_2_16_X)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_4 (
    .X(sky130_fd_sc_hd__clkbuf_8_4_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_80 (
    .Q(sky130_fd_sc_hd__nand4_2_9_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_21_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_9_X)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_7 (
    .S(sky130_fd_sc_hd__inv_2_8_A),
    .A1(sky130_fd_sc_hd__or2_2_7_X),
    .A0(sky130_fd_sc_hd__mux2_1_7_A0),
    .X(sky130_fd_sc_hd__mux2_1_7_X)
  );

  sky130_fd_sc_hd__o2bb2a_2 Xsky130_fd_sc_hd__o2bb2a_2_0 (
    .A1_N(sky130_fd_sc_hd__or4_2_4_C),
    .X(sky130_fd_sc_hd__xnor2_2_8_B),
    .A2_N(sky130_fd_sc_hd__xor2_2_1_B),
    .B2(sky130_fd_sc_hd__xor2_2_9_A),
    .B1(sky130_fd_sc_hd__nand2_2_2_Y)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_1 (
    .C(sky130_fd_sc_hd__or4b_2_3_C),
    .A(sky130_fd_sc_hd__or4b_2_3_B),
    .X(sky130_fd_sc_hd__or4_2_3_C),
    .B(sky130_fd_sc_hd__or4b_2_2_C),
    .D_N(sky130_fd_sc_hd__or4b_2_3_A)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_20 (
    .X(sky130_fd_sc_hd__xor2_2_20_X),
    .B(sky130_fd_sc_hd__xor2_2_20_B),
    .A(sky130_fd_sc_hd__xor2_2_20_A)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_7 (
    .X(sky130_fd_sc_hd__o31a_2_0_A1),
    .B(sky130_fd_sc_hd__or2_2_9_B),
    .A_N(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_2 (
    .B1(sky130_fd_sc_hd__or4_2_0_A),
    .A2(sky130_fd_sc_hd__o21ba_2_0_X),
    .A1(sky130_fd_sc_hd__or2_2_5_A),
    .Y(sky130_fd_sc_hd__a21oi_2_2_Y)
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_3 (
    .X(sky130_fd_sc_hd__and4_2_3_X),
    .C(sky130_fd_sc_hd__and4_2_3_C),
    .A(sky130_fd_sc_hd__and4_2_3_A),
    .B(sky130_fd_sc_hd__and4_2_3_B),
    .D(sky130_fd_sc_hd__nor3_2_2_Y)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_2 (
    .C1(sky130_fd_sc_hd__or3_2_7_X),
    .B1(sky130_fd_sc_hd__nor2_2_20_Y),
    .A2(sky130_fd_sc_hd__a31o_2_5_X),
    .A1(sky130_fd_sc_hd__o311a_2_0_X),
    .X(sky130_fd_sc_hd__or4b_2_3_B)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_24 (
    .B(sky130_fd_sc_hd__o31a_2_7_X),
    .X(O[2]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_13 (
    .B(sky130_fd_sc_hd__and4_2_6_X),
    .X(sky130_fd_sc_hd__and4b_2_3_D),
    .A(sky130_fd_sc_hd__and4_2_5_X),
    .C(sky130_fd_sc_hd__and3_2_13_C)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_10 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .X(sky130_fd_sc_hd__or2_2_10_X),
    .A(sky130_fd_sc_hd__or2_2_10_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_28 (
    .Y(sky130_fd_sc_hd__xnor2_2_28_Y),
    .A(sky130_fd_sc_hd__or2_2_9_A),
    .B(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_17 (
    .Y(sky130_fd_sc_hd__xnor2_2_26_A),
    .A(sky130_fd_sc_hd__xor2_2_14_B),
    .B(sky130_fd_sc_hd__xor2_2_19_A)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_5 (
    .X(sky130_fd_sc_hd__clkbuf_8_5_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_70 (
    .Q(sky130_fd_sc_hd__o21a_2_27_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_70_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_11_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_81 (
    .Q(success),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a32o_2_4_X),
    .CLK(sky130_fd_sc_hd__dfxtp_2_2_CLK)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_8 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_8_A1),
    .A0(sky130_fd_sc_hd__mux2_1_8_A0),
    .X(sky130_fd_sc_hd__mux2_1_8_X)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_2 (
    .C(sky130_fd_sc_hd__or4b_2_2_C),
    .A(sky130_fd_sc_hd__or4b_2_3_A),
    .X(sky130_fd_sc_hd__or4_2_2_C),
    .B(sky130_fd_sc_hd__or4b_2_3_B),
    .D_N(sky130_fd_sc_hd__or4b_2_3_C)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_10 (
    .X(sky130_fd_sc_hd__xor2_2_10_X),
    .B(sky130_fd_sc_hd__and4_2_4_X),
    .A(sky130_fd_sc_hd__or3_2_8_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_8 (
    .X(sky130_fd_sc_hd__and3_2_10_B),
    .B(sky130_fd_sc_hd__or3_2_8_A),
    .A_N(sky130_fd_sc_hd__and4_2_3_A)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_3 (
    .B1(sky130_fd_sc_hd__or4_2_0_B),
    .A2(sky130_fd_sc_hd__or3_2_4_X),
    .A1(sky130_fd_sc_hd__nand2_2_3_Y),
    .Y(sky130_fd_sc_hd__or3_2_7_C)
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_4 (
    .X(sky130_fd_sc_hd__and4_2_4_X),
    .C(sky130_fd_sc_hd__inv_2_10_A),
    .A(sky130_fd_sc_hd__nor3_2_2_B),
    .B(sky130_fd_sc_hd__and4_2_4_B),
    .D(sky130_fd_sc_hd__and4_2_4_D)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_0 (
    .B(sky130_fd_sc_hd__or2_2_4_B),
    .Y(sky130_fd_sc_hd__mux2_1_4_S),
    .A_N(sky130_fd_sc_hd__and3_2_0_C)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_3 (
    .C1(sky130_fd_sc_hd__nor2_2_20_Y),
    .B1(sky130_fd_sc_hd__o211ai_2_0_Y),
    .A2(sky130_fd_sc_hd__a21o_2_3_X),
    .A1(sky130_fd_sc_hd__xor2_2_5_X),
    .X(sky130_fd_sc_hd__or4b_2_3_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_25 (
    .B(sky130_fd_sc_hd__o31a_2_9_X),
    .X(O[0]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_14 (
    .B(sky130_fd_sc_hd__or4_2_4_A),
    .X(sky130_fd_sc_hd__xor2_2_11_B),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .C(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__o211ai_2 Xsky130_fd_sc_hd__o211ai_2_0 (
    .A1(sky130_fd_sc_hd__or2_2_5_A),
    .A2(sky130_fd_sc_hd__mux2_1_2_X),
    .B1(sky130_fd_sc_hd__a211o_2_1_X),
    .Y(sky130_fd_sc_hd__o211ai_2_0_Y),
    .C1(sky130_fd_sc_hd__xor2_2_5_X)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_11 (
    .B(sky130_fd_sc_hd__or2_2_11_B),
    .X(sky130_fd_sc_hd__or2_2_11_X),
    .A(sky130_fd_sc_hd__or2_2_11_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_18 (
    .Y(sky130_fd_sc_hd__xnor2_2_18_Y),
    .A(sky130_fd_sc_hd__or3_2_9_X),
    .B(sky130_fd_sc_hd__xor2_2_15_X)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_6 (
    .X(sky130_fd_sc_hd__clkbuf_8_6_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_60 (
    .Q(sky130_fd_sc_hd__nand4_2_7_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_19_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_8_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_82 (
    .Q(sky130_fd_sc_hd__a32o_2_3_B1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a32o_2_3_X),
    .CLK(sky130_fd_sc_hd__dfxtp_2_2_CLK)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_71 (
    .Q(sky130_fd_sc_hd__nand4_2_8_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_23_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_9_X)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_9 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_9_A1),
    .A0(sky130_fd_sc_hd__mux2_1_9_A0),
    .X(sky130_fd_sc_hd__mux2_1_9_X)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_0 (
    .C(sky130_fd_sc_hd__or4_2_0_C),
    .A(sky130_fd_sc_hd__or4_2_0_A),
    .X(sky130_fd_sc_hd__or4_2_0_X),
    .B(sky130_fd_sc_hd__or4_2_0_B),
    .D(sky130_fd_sc_hd__or4_2_0_D)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_3 (
    .C(sky130_fd_sc_hd__or4b_2_3_C),
    .A(sky130_fd_sc_hd__or4b_2_3_A),
    .X(sky130_fd_sc_hd__or4_2_5_C),
    .B(sky130_fd_sc_hd__or4b_2_3_B),
    .D_N(sky130_fd_sc_hd__or4b_2_2_C)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_11 (
    .X(sky130_fd_sc_hd__xor2_2_11_X),
    .B(sky130_fd_sc_hd__xor2_2_11_B),
    .A(sky130_fd_sc_hd__or4_2_4_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_9 (
    .X(sky130_fd_sc_hd__and2b_2_9_X),
    .B(sky130_fd_sc_hd__and2b_2_9_B),
    .A_N(sky130_fd_sc_hd__and4_2_4_X)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_0 (
    .X(sky130_fd_sc_hd__clkbuf_4_0_X),
    .A(sky130_fd_sc_hd__clkbuf_8_1_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_4 (
    .B1(sky130_fd_sc_hd__or3_2_5_X),
    .A2(sky130_fd_sc_hd__and3_2_4_B),
    .A1(sky130_fd_sc_hd__and3_2_4_A),
    .Y(sky130_fd_sc_hd__nor2_2_21_A)
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_5 (
    .X(sky130_fd_sc_hd__and4_2_5_X),
    .C(sky130_fd_sc_hd__and4_2_5_C),
    .A(sky130_fd_sc_hd__and4_2_5_A),
    .B(sky130_fd_sc_hd__and4_2_5_B),
    .D(sky130_fd_sc_hd__and4_2_5_D)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_1 (
    .B(sky130_fd_sc_hd__o21a_2_4_A2),
    .Y(sky130_fd_sc_hd__nand2b_2_1_Y),
    .A_N(sky130_fd_sc_hd__o21a_2_4_A1)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_4 (
    .C1(sky130_fd_sc_hd__nor2_2_20_Y),
    .B1(sky130_fd_sc_hd__a221o_2_0_X),
    .A2(sky130_fd_sc_hd__o21ai_2_1_Y),
    .A1(sky130_fd_sc_hd__xor2_2_5_X),
    .X(sky130_fd_sc_hd__or4b_2_3_C)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_15 (
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .X(sky130_fd_sc_hd__o31a_2_2_A1),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .C(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_12 (
    .B(sky130_fd_sc_hd__or2_2_12_B),
    .X(sky130_fd_sc_hd__or2_2_12_X),
    .A(sky130_fd_sc_hd__or2_2_12_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_19 (
    .Y(sky130_fd_sc_hd__xnor2_2_19_Y),
    .A(sky130_fd_sc_hd__xnor2_2_21_B),
    .B(sky130_fd_sc_hd__xor2_2_19_X)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_7 (
    .X(sky130_fd_sc_hd__clkbuf_8_7_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_61 (
    .Q(sky130_fd_sc_hd__or4_2_9_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_18_X),
    .CLK(sky130_fd_sc_hd__dfxtp_2_3_CLK)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_50 (
    .Q(sky130_fd_sc_hd__xor2_2_19_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o22a_2_3_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_7_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_83 (
    .Q(sky130_fd_sc_hd__or2_2_11_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__or2_2_11_X),
    .CLK(sky130_fd_sc_hd__dfxtp_2_2_CLK)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_72 (
    .Q(sky130_fd_sc_hd__inv_2_20_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_26_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_11_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_20 (
    .A(sky130_fd_sc_hd__inv_2_20_A),
    .Y(sky130_fd_sc_hd__or4_2_6_B)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_1 (
    .C(sky130_fd_sc_hd__or4_2_1_C),
    .A(sky130_fd_sc_hd__or4_2_1_A),
    .X(sky130_fd_sc_hd__or4_2_1_X),
    .B(sky130_fd_sc_hd__or4_2_1_B),
    .D(sky130_fd_sc_hd__or4_2_1_D)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_4 (
    .C(sky130_fd_sc_hd__or4_2_4_C),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .X(sky130_fd_sc_hd__or4_2_9_C),
    .B(sky130_fd_sc_hd__or4_2_4_D),
    .D_N(sky130_fd_sc_hd__or4_2_4_A)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_12 (
    .X(sky130_fd_sc_hd__xor2_2_12_X),
    .B(sky130_fd_sc_hd__o31a_2_1_X),
    .A(sky130_fd_sc_hd__xor2_2_14_B)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_1 (
    .X(sky130_fd_sc_hd__clkbuf_4_1_X),
    .A(sky130_fd_sc_hd__clkbuf_8_0_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_5 (
    .B1(sky130_fd_sc_hd__xor2_2_9_A),
    .A2(sky130_fd_sc_hd__xor2_2_4_A),
    .A1(sky130_fd_sc_hd__xor2_2_0_B),
    .Y(sky130_fd_sc_hd__a21oi_2_5_Y)
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_6 (
    .X(sky130_fd_sc_hd__and4_2_6_X),
    .C(sky130_fd_sc_hd__and4_2_6_C),
    .A(sky130_fd_sc_hd__and4_2_6_A),
    .B(sky130_fd_sc_hd__and4_2_6_B),
    .D(sky130_fd_sc_hd__and4_2_6_D)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_2 (
    .B(sky130_fd_sc_hd__nand4_2_1_Y),
    .Y(sky130_fd_sc_hd__nand2b_2_2_Y),
    .A_N(sky130_fd_sc_hd__and2b_2_3_B)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_5 (
    .C1(sky130_fd_sc_hd__nor2_2_20_Y),
    .B1(sky130_fd_sc_hd__a211o_2_0_X),
    .A2(sky130_fd_sc_hd__mux2_1_3_X),
    .A1(sky130_fd_sc_hd__xor2_2_5_X),
    .X(sky130_fd_sc_hd__or4b_2_2_C)
  );

  sky130_fd_sc_hd__a221oi_2 Xsky130_fd_sc_hd__a221oi_2_0 (
    .B2(sky130_fd_sc_hd__or4_2_4_D),
    .C1(sky130_fd_sc_hd__a41oi_2_0_Y),
    .A2(sky130_fd_sc_hd__inv_2_9_A),
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .B1(sky130_fd_sc_hd__and4_2_7_X),
    .Y(sky130_fd_sc_hd__dfrtp_2_45_D)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_16 (
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .X(sky130_fd_sc_hd__and3_2_16_X),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .C(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_8 (
    .X(sky130_fd_sc_hd__clkbuf_8_8_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_51 (
    .Q(sky130_fd_sc_hd__xor2_2_19_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a221o_2_2_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_7_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_40 (
    .Q(sky130_fd_sc_hd__mux2_1_9_A0),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_9_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_5_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_73 (
    .Q(sky130_fd_sc_hd__nand4_2_13_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_25_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_11_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_62 (
    .Q(sky130_fd_sc_hd__inv_2_18_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_20_X),
    .CLK(sky130_fd_sc_hd__dfxtp_2_3_CLK)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_21 (
    .A(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__inv_2_21_Y)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_10 (
    .A(sky130_fd_sc_hd__inv_2_10_A),
    .Y(sky130_fd_sc_hd__inv_2_10_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_0 (
    .Y(sky130_fd_sc_hd__and3_2_1_C),
    .A(sky130_fd_sc_hd__or2_2_1_X),
    .B(sky130_fd_sc_hd__or3_2_0_B)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_2 (
    .C(sky130_fd_sc_hd__or4_2_2_C),
    .A(sky130_fd_sc_hd__or4_2_2_A),
    .X(sky130_fd_sc_hd__or4_2_2_X),
    .B(sky130_fd_sc_hd__or4_2_2_B),
    .D(sky130_fd_sc_hd__or4_2_2_D)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_5 (
    .C(sky130_fd_sc_hd__or4_2_4_D),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .X(sky130_fd_sc_hd__or4_2_8_C),
    .B(sky130_fd_sc_hd__or4_2_4_A),
    .D_N(sky130_fd_sc_hd__or4_2_4_C)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_13 (
    .X(sky130_fd_sc_hd__xor2_2_13_X),
    .B(sky130_fd_sc_hd__xor2_2_19_B),
    .A(sky130_fd_sc_hd__or2_2_12_A)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_10 (
    .A_N(sky130_fd_sc_hd__or4_2_4_D),
    .C(sky130_fd_sc_hd__or4_2_4_A),
    .B_N(sky130_fd_sc_hd__or4_2_4_C),
    .X(sky130_fd_sc_hd__nand4_2_8_D),
    .D(sky130_fd_sc_hd__or4_2_4_B)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_2 (
    .X(sky130_fd_sc_hd__clkbuf_4_2_X),
    .A(sky130_fd_sc_hd__clkbuf_8_4_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_6 (
    .B1(sky130_fd_sc_hd__or3_2_5_B),
    .A2(sky130_fd_sc_hd__xnor2_2_4_A),
    .A1(sky130_fd_sc_hd__xor2_2_4_A),
    .Y(sky130_fd_sc_hd__a21oi_2_6_Y)
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_7 (
    .X(sky130_fd_sc_hd__and4_2_7_X),
    .C(sky130_fd_sc_hd__or4_2_4_C),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .B(sky130_fd_sc_hd__or4_2_4_A),
    .D(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_3 (
    .B(sky130_fd_sc_hd__o21a_2_8_A2),
    .Y(sky130_fd_sc_hd__nand2b_2_3_Y),
    .A_N(sky130_fd_sc_hd__o21a_2_8_A1)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_6 (
    .C1(sky130_fd_sc_hd__or3_2_1_X),
    .B1(sky130_fd_sc_hd__or4_2_0_B),
    .A2(sky130_fd_sc_hd__or3_2_4_B),
    .A1(sky130_fd_sc_hd__nand2_2_3_Y),
    .X(sky130_fd_sc_hd__or3_2_7_B)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_17 (
    .B(sky130_fd_sc_hd__inv_2_14_Y),
    .X(sky130_fd_sc_hd__and3_2_17_X),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .C(sky130_fd_sc_hd__and3_2_17_C)
  );

  sky130_fd_sc_hd__a21bo_2 Xsky130_fd_sc_hd__a21bo_2_0 (
    .B1_N(sky130_fd_sc_hd__a32o_2_1_B2),
    .A2(sky130_fd_sc_hd__or2_2_3_X),
    .X(sky130_fd_sc_hd__a31o_2_5_A2),
    .A1(sky130_fd_sc_hd__or3_2_0_B)
  );

  sky130_fd_sc_hd__a31oi_2 Xsky130_fd_sc_hd__a31oi_2_0 (
    .A3(sky130_fd_sc_hd__nand2b_2_8_Y),
    .B1(sky130_fd_sc_hd__and3b_2_0_C),
    .Y(sky130_fd_sc_hd__o31a_2_0_A2),
    .A1(sky130_fd_sc_hd__nor3_2_1_C),
    .A2(sky130_fd_sc_hd__o32ai_2_0_B1)
  );

  sky130_fd_sc_hd__o311a_2 Xsky130_fd_sc_hd__o311a_2_0 (
    .X(sky130_fd_sc_hd__o311a_2_0_X),
    .A2(sky130_fd_sc_hd__or4_2_0_A),
    .A3(sky130_fd_sc_hd__and3_2_0_X),
    .A1(sky130_fd_sc_hd__nor2_2_26_Y),
    .B1(sky130_fd_sc_hd__or4_2_0_B),
    .C1(sky130_fd_sc_hd__o311a_2_0_C1)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_10 (
    .B1(sky130_fd_sc_hd__nor2_2_6_Y),
    .A2(sky130_fd_sc_hd__xor2_2_7_X),
    .A1(sky130_fd_sc_hd__xor2_2_0_B),
    .Y(sky130_fd_sc_hd__xor2_2_1_B)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_9 (
    .X(sky130_fd_sc_hd__clkbuf_8_9_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_52 (
    .Q(sky130_fd_sc_hd__or4_2_5_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_13_X),
    .CLK(sky130_fd_sc_hd__clkbuf_4_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_30 (
    .Q(sky130_fd_sc_hd__mux2_1_8_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_14_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_2_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_41 (
    .Q(sky130_fd_sc_hd__a22o_2_2_A2),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_13_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_8_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_74 (
    .Q(sky130_fd_sc_hd__nand4_2_12_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_27_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_11_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_63 (
    .Q(sky130_fd_sc_hd__o21a_2_23_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_63_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_9_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_11 (
    .A(sky130_fd_sc_hd__inv_2_11_A),
    .Y(sky130_fd_sc_hd__inv_2_23_A)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_22 (
    .A(success),
    .Y(sky130_fd_sc_hd__inv_2_22_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_1 (
    .Y(sky130_fd_sc_hd__and2_2_2_A),
    .A(sky130_fd_sc_hd__xor2_2_3_A),
    .B(sky130_fd_sc_hd__or2_2_0_B)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_3 (
    .C(sky130_fd_sc_hd__or4_2_3_C),
    .A(sky130_fd_sc_hd__or4_2_3_A),
    .X(sky130_fd_sc_hd__or4_2_3_X),
    .B(sky130_fd_sc_hd__or4_2_3_B),
    .D(sky130_fd_sc_hd__or4_2_3_D)
  );

  sky130_fd_sc_hd__o32a_2 Xsky130_fd_sc_hd__o32a_2_0 (
    .B1(sky130_fd_sc_hd__o32a_2_1_B2),
    .B2(sky130_fd_sc_hd__nor2_2_3_Y),
    .A3(sky130_fd_sc_hd__o32a_2_0_A3),
    .A2(sky130_fd_sc_hd__and3_2_0_X),
    .A1(sky130_fd_sc_hd__or4_2_0_A),
    .X(sky130_fd_sc_hd__o32a_2_0_X)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_6 (
    .C(sky130_fd_sc_hd__or4_2_4_C),
    .A(sky130_fd_sc_hd__or4_2_4_A),
    .X(sky130_fd_sc_hd__or4_2_7_C),
    .B(sky130_fd_sc_hd__or4_2_4_D),
    .D_N(sky130_fd_sc_hd__or4_2_4_B)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_14 (
    .X(sky130_fd_sc_hd__xor2_2_14_X),
    .B(sky130_fd_sc_hd__xor2_2_14_B),
    .A(sky130_fd_sc_hd__xor2_2_16_A)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_11 (
    .A_N(sky130_fd_sc_hd__or4_2_4_B),
    .C(sky130_fd_sc_hd__or4_2_4_D),
    .B_N(sky130_fd_sc_hd__or4_2_4_C),
    .X(sky130_fd_sc_hd__nand4_2_12_D),
    .D(sky130_fd_sc_hd__or4_2_4_A)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_3 (
    .X(sky130_fd_sc_hd__clkbuf_4_3_X),
    .A(sky130_fd_sc_hd__clkbuf_8_3_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_7 (
    .B1(sky130_fd_sc_hd__and4bb_2_0_X),
    .A2(sky130_fd_sc_hd__o22ai_2_0_Y),
    .A1(sky130_fd_sc_hd__xor2_2_6_A),
    .Y(sky130_fd_sc_hd__xor2_2_5_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_4 (
    .B(sky130_fd_sc_hd__nand4_2_5_Y),
    .Y(sky130_fd_sc_hd__nand2b_2_4_Y),
    .A_N(sky130_fd_sc_hd__o21a_2_30_A1)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_7 (
    .C1(sky130_fd_sc_hd__inv_2_5_Y),
    .B1(sky130_fd_sc_hd__a31o_2_8_X),
    .A2(sky130_fd_sc_hd__mux2_1_5_A1),
    .A1(sky130_fd_sc_hd__and3_2_7_C),
    .X(sky130_fd_sc_hd__o211a_2_7_X)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_18 (
    .B(sky130_fd_sc_hd__o31a_2_6_X),
    .X(O[1]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__a21bo_2 Xsky130_fd_sc_hd__a21bo_2_1 (
    .B1_N(sky130_fd_sc_hd__a211o_2_2_X),
    .A2(sky130_fd_sc_hd__nor2_2_5_Y),
    .X(sky130_fd_sc_hd__a21o_2_3_A2),
    .A1(sky130_fd_sc_hd__or4_2_0_A)
  );

  sky130_fd_sc_hd__o311a_2 Xsky130_fd_sc_hd__o311a_2_1 (
    .X(sky130_fd_sc_hd__o311a_2_1_X),
    .A2(sky130_fd_sc_hd__and3_2_7_C),
    .A3(sky130_fd_sc_hd__mux2_1_5_A1),
    .A1(sky130_fd_sc_hd__xor2_2_7_A),
    .B1(sky130_fd_sc_hd__nand3_2_0_Y),
    .C1(sky130_fd_sc_hd__a21o_2_9_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_11 (
    .B1(sky130_fd_sc_hd__or3_2_8_A),
    .A2(sky130_fd_sc_hd__inv_2_7_A),
    .A1(I),
    .Y(sky130_fd_sc_hd__nor2_2_30_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_20 (
    .Q(sky130_fd_sc_hd__and4_2_3_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__xnor2_2_11_Y),
    .CLK(sky130_fd_sc_hd__clkbuf_8_3_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_42 (
    .Q(sky130_fd_sc_hd__mux2_1_15_A0),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_15_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_6_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_31 (
    .Q(sky130_fd_sc_hd__mux2_1_19_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_18_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_5_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_75 (
    .Q(sky130_fd_sc_hd__nand4_2_11_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_24_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_10_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_64 (
    .Q(sky130_fd_sc_hd__o21a_2_28_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_64_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_11_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_53 (
    .Q(sky130_fd_sc_hd__nand4_2_5_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_30_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_2_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_12 (
    .A(sky130_fd_sc_hd__inv_2_12_A),
    .Y(sky130_fd_sc_hd__inv_2_12_Y)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_23 (
    .A(sky130_fd_sc_hd__inv_2_23_A),
    .Y(sky130_fd_sc_hd__inv_2_23_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_2 (
    .Y(sky130_fd_sc_hd__nand2_2_2_Y),
    .A(sky130_fd_sc_hd__xor2_2_7_A),
    .B(sky130_fd_sc_hd__xor2_2_0_B)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_4 (
    .C(sky130_fd_sc_hd__or4_2_4_C),
    .A(sky130_fd_sc_hd__or4_2_4_A),
    .X(sky130_fd_sc_hd__or4_2_4_X),
    .B(sky130_fd_sc_hd__or4_2_4_B),
    .D(sky130_fd_sc_hd__or4_2_4_D)
  );

  sky130_fd_sc_hd__o32a_2 Xsky130_fd_sc_hd__o32a_2_1 (
    .B1(sky130_fd_sc_hd__o32a_2_1_B1),
    .B2(sky130_fd_sc_hd__o32a_2_1_B2),
    .A3(sky130_fd_sc_hd__o32a_2_1_A3),
    .A2(sky130_fd_sc_hd__and3_2_0_X),
    .A1(sky130_fd_sc_hd__or4_2_0_A),
    .X(sky130_fd_sc_hd__o32a_2_1_X)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_7 (
    .C(sky130_fd_sc_hd__or4_2_4_C),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .X(sky130_fd_sc_hd__or4_2_6_C),
    .B(sky130_fd_sc_hd__or4_2_4_A),
    .D_N(sky130_fd_sc_hd__or4_2_4_D)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_15 (
    .X(sky130_fd_sc_hd__xor2_2_15_X),
    .B(sky130_fd_sc_hd__or2_2_9_X),
    .A(sky130_fd_sc_hd__xor2_2_19_B)
  );

  sky130_fd_sc_hd__a21boi_2 Xsky130_fd_sc_hd__a21boi_2_0 (
    .B1_N(sky130_fd_sc_hd__inv_2_7_A),
    .A2(sky130_fd_sc_hd__nor2_2_40_A),
    .A1(I),
    .Y(sky130_fd_sc_hd__o21ai_2_3_B1)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_12 (
    .A_N(sky130_fd_sc_hd__or4_2_4_A),
    .C(sky130_fd_sc_hd__or4_2_4_D),
    .B_N(sky130_fd_sc_hd__or4_2_4_C),
    .X(sky130_fd_sc_hd__nand4_2_13_D),
    .D(sky130_fd_sc_hd__or4_2_4_B)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_4 (
    .X(sky130_fd_sc_hd__clkbuf_4_4_X),
    .A(sky130_fd_sc_hd__clkbuf_8_2_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_8 (
    .B1(sky130_fd_sc_hd__or2_2_8_B),
    .A2(sky130_fd_sc_hd__or2_2_9_A),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__and3b_2_0_C)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_5 (
    .B(sky130_fd_sc_hd__o21a_2_5_A2),
    .Y(sky130_fd_sc_hd__dfrtp_2_4_D),
    .A_N(sky130_fd_sc_hd__o21a_2_5_A1)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_8 (
    .C1(sky130_fd_sc_hd__inv_2_7_A),
    .B1(sky130_fd_sc_hd__or2_2_7_X),
    .A2(sky130_fd_sc_hd__mux2_1_7_A0),
    .A1(sky130_fd_sc_hd__inv_2_8_A),
    .X(sky130_fd_sc_hd__o211a_2_8_X)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_19 (
    .B(sky130_fd_sc_hd__o31a_2_4_X),
    .X(O[6]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__o22a_2 Xsky130_fd_sc_hd__o22a_2_0 (
    .A2(sky130_fd_sc_hd__mux2_1_4_S),
    .X(sky130_fd_sc_hd__o22a_2_0_X),
    .B1(sky130_fd_sc_hd__or2_2_4_X),
    .A1(sky130_fd_sc_hd__or3_2_3_B),
    .B2(sky130_fd_sc_hd__nor2_2_4_Y)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_20 (
    .X(sky130_fd_sc_hd__and4_2_1_C),
    .B(sky130_fd_sc_hd__o21a_2_30_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_5_C)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_12 (
    .B1(sky130_fd_sc_hd__mux2_1_6_X),
    .A2(sky130_fd_sc_hd__mux2_1_7_A0),
    .A1(sky130_fd_sc_hd__inv_2_8_Y),
    .Y(sky130_fd_sc_hd__dfrtp_2_29_D)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_10 (
    .Q(sky130_fd_sc_hd__o21a_2_30_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__nand2b_2_4_Y),
    .CLK(sky130_fd_sc_hd__clkbuf_8_2_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_21 (
    .Q(sky130_fd_sc_hd__nor3_2_2_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_12_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_3_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_43 (
    .Q(sky130_fd_sc_hd__or4_2_4_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_43_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_5_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_32 (
    .Q(sky130_fd_sc_hd__mux2_1_9_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_17_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_6_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_65 (
    .Q(sky130_fd_sc_hd__inv_2_19_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_22_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_9_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_76 (
    .Q(sky130_fd_sc_hd__inv_2_17_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_29_X),
    .CLK(sky130_fd_sc_hd__dfxtp_2_3_CLK)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_54 (
    .Q(sky130_fd_sc_hd__inv_2_16_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_17_X),
    .CLK(sky130_fd_sc_hd__clkbuf_4_9_A)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_24 (
    .A(sky130_fd_sc_hd__or4b_2_8_X),
    .Y(sky130_fd_sc_hd__nor3_2_3_C)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_13 (
    .A(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__inv_2_13_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_3 (
    .Y(sky130_fd_sc_hd__nand2_2_3_Y),
    .A(sky130_fd_sc_hd__or4_2_0_A),
    .B(sky130_fd_sc_hd__o21a_2_3_A2)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_5 (
    .C(sky130_fd_sc_hd__or4_2_5_C),
    .A(sky130_fd_sc_hd__or4_2_5_A),
    .X(sky130_fd_sc_hd__or4_2_5_X),
    .B(sky130_fd_sc_hd__or4_2_5_B),
    .D(sky130_fd_sc_hd__or4_2_5_D)
  );

  sky130_fd_sc_hd__and4b_2 Xsky130_fd_sc_hd__and4b_2_0 (
    .X(sky130_fd_sc_hd__or3_2_6_B),
    .A_N(sky130_fd_sc_hd__or2_2_8_B),
    .D(sky130_fd_sc_hd__or3b_2_0_A),
    .C(sky130_fd_sc_hd__or2_2_9_A),
    .B(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__nor3_2 Xsky130_fd_sc_hd__nor3_2_0 (
    .C(sky130_fd_sc_hd__or2_2_9_B),
    .Y(sky130_fd_sc_hd__nor3_2_0_Y),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .B(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__o32a_2 Xsky130_fd_sc_hd__o32a_2_2 (
    .B1(sky130_fd_sc_hd__o32a_2_2_B1),
    .B2(sky130_fd_sc_hd__o32a_2_2_B2),
    .A3(sky130_fd_sc_hd__o32a_2_2_A3),
    .A2(sky130_fd_sc_hd__o32a_2_2_A2),
    .A1(sky130_fd_sc_hd__inv_2_12_Y),
    .X(sky130_fd_sc_hd__o32a_2_2_X)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_8 (
    .C(sky130_fd_sc_hd__or4b_2_8_C),
    .A(sky130_fd_sc_hd__or4b_2_8_A),
    .X(sky130_fd_sc_hd__or4b_2_8_X),
    .B(success),
    .D_N(sky130_fd_sc_hd__a32o_2_3_B1)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_16 (
    .X(sky130_fd_sc_hd__xor2_2_16_X),
    .B(sky130_fd_sc_hd__or2_2_12_B),
    .A(sky130_fd_sc_hd__xor2_2_16_A)
  );

  sky130_fd_sc_hd__a21boi_2 Xsky130_fd_sc_hd__a21boi_2_1 (
    .B1_N(sky130_fd_sc_hd__or2_2_11_B),
    .A2(sky130_fd_sc_hd__xnor2_2_28_Y),
    .A1(sky130_fd_sc_hd__and3_2_25_C),
    .Y(sky130_fd_sc_hd__dfxtp_2_1_D)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_13 (
    .A_N(sky130_fd_sc_hd__or4_2_4_A),
    .C(sky130_fd_sc_hd__or4_2_4_C),
    .B_N(sky130_fd_sc_hd__or4_2_4_D),
    .X(sky130_fd_sc_hd__nand4_2_10_D),
    .D(sky130_fd_sc_hd__or4_2_4_B)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_5 (
    .X(sky130_fd_sc_hd__clkbuf_4_5_X),
    .A(sky130_fd_sc_hd__clkbuf_8_5_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_9 (
    .B1(sky130_fd_sc_hd__or2_2_8_B),
    .A2(sky130_fd_sc_hd__or2_2_9_A),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__or3_2_6_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_6 (
    .B(sky130_fd_sc_hd__xor2_2_4_X),
    .Y(sky130_fd_sc_hd__and3_2_4_A),
    .A_N(sky130_fd_sc_hd__xnor2_2_4_A)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_9 (
    .C1(sky130_fd_sc_hd__o21ai_2_5_Y),
    .B1(sky130_fd_sc_hd__o21a_2_15_A2),
    .A2(sky130_fd_sc_hd__or2_2_8_X),
    .A1(sky130_fd_sc_hd__or2_2_9_A),
    .X(sky130_fd_sc_hd__o211a_2_9_X)
  );

  sky130_fd_sc_hd__a221o_2 Xsky130_fd_sc_hd__a221o_2_0 (
    .X(sky130_fd_sc_hd__a221o_2_0_X),
    .B1(sky130_fd_sc_hd__or2_2_5_X),
    .A1(sky130_fd_sc_hd__or4_2_0_A),
    .B2(sky130_fd_sc_hd__a21oi_2_2_Y),
    .A2(sky130_fd_sc_hd__o22ai_2_1_Y),
    .C1(sky130_fd_sc_hd__or3_2_7_A)
  );

  sky130_fd_sc_hd__o22a_2 Xsky130_fd_sc_hd__o22a_2_1 (
    .A2(sky130_fd_sc_hd__or2_2_9_B),
    .X(sky130_fd_sc_hd__or3_2_16_A),
    .B1(sky130_fd_sc_hd__or3_2_6_A),
    .A1(sky130_fd_sc_hd__or2_2_9_A),
    .B2(sky130_fd_sc_hd__or3_2_6_B)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_30 (
    .A1(sky130_fd_sc_hd__o21a_2_30_A1),
    .B1(sky130_fd_sc_hd__a31o_2_25_X),
    .A2(sky130_fd_sc_hd__nand4_2_5_Y),
    .X(sky130_fd_sc_hd__o21a_2_30_X)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_10 (
    .X(sky130_fd_sc_hd__dfrtp_2_25_D),
    .B(sky130_fd_sc_hd__a21o_2_10_X),
    .A_N(sky130_fd_sc_hd__and3_2_11_X)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_21 (
    .X(sky130_fd_sc_hd__and3_2_5_C),
    .B(sky130_fd_sc_hd__o21a_2_18_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_6_C)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_13 (
    .B1(sky130_fd_sc_hd__or4_2_4_B),
    .A2(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__or4_2_4_A),
    .Y(sky130_fd_sc_hd__a21oi_2_13_Y)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_22 (
    .Q(sky130_fd_sc_hd__or3_2_8_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__xor2_2_10_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_8_CLK)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_11 (
    .Q(sky130_fd_sc_hd__and2b_2_3_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__nand2b_2_2_Y),
    .CLK(sky130_fd_sc_hd__clkbuf_8_1_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_33 (
    .Q(sky130_fd_sc_hd__mux2_1_12_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_10_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_2_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_66 (
    .Q(sky130_fd_sc_hd__o21a_2_21_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_66_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_10_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_77 (
    .Q(sky130_fd_sc_hd__or4_2_7_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_14_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_9_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_55 (
    .Q(sky130_fd_sc_hd__nand4_2_6_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_18_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_8_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_44 (
    .Q(sky130_fd_sc_hd__or4_2_4_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__nor2_2_31_Y),
    .CLK(sky130_fd_sc_hd__clkbuf_8_5_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_14 (
    .A(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__inv_2_14_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_4 (
    .Y(sky130_fd_sc_hd__nor2_2_0_B),
    .A(sky130_fd_sc_hd__or4_2_4_A),
    .B(sky130_fd_sc_hd__xor2_2_7_A)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_6 (
    .C(sky130_fd_sc_hd__or4_2_6_C),
    .A(sky130_fd_sc_hd__or4_2_6_A),
    .X(sky130_fd_sc_hd__or4_2_6_X),
    .B(sky130_fd_sc_hd__or4_2_6_B),
    .D(sky130_fd_sc_hd__or4_2_6_D)
  );

  sky130_fd_sc_hd__and4b_2 Xsky130_fd_sc_hd__and4b_2_1 (
    .X(sky130_fd_sc_hd__nand4_2_5_D),
    .A_N(sky130_fd_sc_hd__or4b_2_2_C),
    .D(sky130_fd_sc_hd__or4b_2_3_A),
    .C(sky130_fd_sc_hd__or4b_2_3_B),
    .B(sky130_fd_sc_hd__or4b_2_3_C)
  );

  sky130_fd_sc_hd__nor3_2 Xsky130_fd_sc_hd__nor3_2_1 (
    .C(sky130_fd_sc_hd__nor3_2_1_C),
    .Y(sky130_fd_sc_hd__nor3_2_1_Y),
    .A(sky130_fd_sc_hd__or2_2_9_B),
    .B(sky130_fd_sc_hd__nor3_2_1_B)
  );

  sky130_fd_sc_hd__o32a_2 Xsky130_fd_sc_hd__o32a_2_3 (
    .B1(sky130_fd_sc_hd__or2_2_10_X),
    .B2(sky130_fd_sc_hd__or2_2_12_A),
    .A3(sky130_fd_sc_hd__o32a_2_3_A3),
    .A2(sky130_fd_sc_hd__o32a_2_3_A2),
    .A1(sky130_fd_sc_hd__o32a_2_3_A1),
    .X(sky130_fd_sc_hd__o32a_2_3_X)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_17 (
    .X(sky130_fd_sc_hd__xor2_2_17_X),
    .B(sky130_fd_sc_hd__xor2_2_17_B),
    .A(sky130_fd_sc_hd__xor2_2_19_A)
  );

  sky130_fd_sc_hd__a21boi_2 Xsky130_fd_sc_hd__a21boi_2_2 (
    .B1_N(sky130_fd_sc_hd__or2_2_11_B),
    .A2(sky130_fd_sc_hd__nand3_2_1_Y),
    .A1(sky130_fd_sc_hd__inv_2_21_Y),
    .Y(sky130_fd_sc_hd__dfxtp_2_0_D)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_6 (
    .X(sky130_fd_sc_hd__clkbuf_4_6_X),
    .A(sky130_fd_sc_hd__clkbuf_8_6_X)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_0 (
    .B(sky130_fd_sc_hd__or3_2_0_B),
    .X(sky130_fd_sc_hd__and3_2_0_X),
    .A(sky130_fd_sc_hd__or2_2_4_A),
    .C(sky130_fd_sc_hd__and3_2_0_C)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_7 (
    .B(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__a21o_2_6_A2),
    .A_N(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__o22a_2 Xsky130_fd_sc_hd__o22a_2_2 (
    .A2(sky130_fd_sc_hd__and2_2_8_A),
    .X(sky130_fd_sc_hd__o22a_2_2_X),
    .B1(sky130_fd_sc_hd__and2_2_8_B),
    .A1(sky130_fd_sc_hd__or2_2_8_B),
    .B2(sky130_fd_sc_hd__nor3_2_1_B)
  );

  sky130_fd_sc_hd__a221o_2 Xsky130_fd_sc_hd__a221o_2_1 (
    .X(sky130_fd_sc_hd__a221o_2_1_X),
    .B1(sky130_fd_sc_hd__conb_1_2_HI),
    .A1(sky130_fd_sc_hd__or4bb_2_0_X),
    .B2(sky130_fd_sc_hd__mux2_1_12_A0),
    .A2(sky130_fd_sc_hd__mux2_1_12_A1),
    .C1(sky130_fd_sc_hd__a22o_2_2_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_20 (
    .A1(sky130_fd_sc_hd__inv_2_18_A),
    .B1(sky130_fd_sc_hd__or4_2_7_X),
    .A2(sky130_fd_sc_hd__nor2_2_43_Y),
    .X(sky130_fd_sc_hd__o21a_2_20_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_10 (
    .A(sky130_fd_sc_hd__or4_2_5_A),
    .X(sky130_fd_sc_hd__and3_2_5_B),
    .B(sky130_fd_sc_hd__or4_2_5_B)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_11 (
    .X(sky130_fd_sc_hd__inv_2_7_A),
    .B(enable),
    .A_N(sky130_fd_sc_hd__or2_2_11_A)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_22 (
    .X(sky130_fd_sc_hd__and3_2_5_A),
    .B(sky130_fd_sc_hd__o21a_2_16_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_4_C)
  );

  sky130_fd_sc_hd__a211o_2 Xsky130_fd_sc_hd__a211o_2_0 (
    .X(sky130_fd_sc_hd__a211o_2_0_X),
    .A2(sky130_fd_sc_hd__a32o_2_1_X),
    .A1(sky130_fd_sc_hd__or2_2_5_A),
    .B1(sky130_fd_sc_hd__o221a_2_0_X),
    .C1(sky130_fd_sc_hd__or3_2_7_A)
  );

  sky130_fd_sc_hd__dfxtp_2 Xsky130_fd_sc_hd__dfxtp_2_0 (
    .Q(sky130_fd_sc_hd__or2_2_8_B),
    .CLK(sky130_fd_sc_hd__dfxtp_2_3_CLK),
    .D(sky130_fd_sc_hd__dfxtp_2_0_D)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_14 (
    .B1(sky130_fd_sc_hd__or2_2_9_B),
    .A2(sky130_fd_sc_hd__or2_2_8_B),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__o221a_2_2_B2)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_23 (
    .Q(sky130_fd_sc_hd__or3_2_8_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__nor2_2_30_Y),
    .CLK(sky130_fd_sc_hd__dfrtp_2_8_CLK)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_12 (
    .Q(sky130_fd_sc_hd__o21a_2_8_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__nand2b_2_3_Y),
    .CLK(sky130_fd_sc_hd__clkbuf_8_1_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_34 (
    .Q(sky130_fd_sc_hd__mux2_1_8_A0),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_8_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_2_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_67 (
    .Q(sky130_fd_sc_hd__o21a_2_24_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_67_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_11_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_56 (
    .Q(sky130_fd_sc_hd__nand4_2_4_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_16_X),
    .CLK(sky130_fd_sc_hd__clkbuf_4_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_45 (
    .Q(sky130_fd_sc_hd__or4_2_4_D),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_45_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_5_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_78 (
    .Q(sky130_fd_sc_hd__nand4_2_10_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_28_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_10_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_15 (
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__inv_2_15_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_5 (
    .Y(sky130_fd_sc_hd__nand2_2_5_Y),
    .A(sky130_fd_sc_hd__or3_2_0_B),
    .B(sky130_fd_sc_hd__or3_2_2_B)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_7 (
    .C(sky130_fd_sc_hd__or4_2_7_C),
    .A(sky130_fd_sc_hd__or4_2_7_A),
    .X(sky130_fd_sc_hd__or4_2_7_X),
    .B(sky130_fd_sc_hd__or4_2_7_B),
    .D(sky130_fd_sc_hd__or4_2_7_D)
  );

  sky130_fd_sc_hd__and4b_2 Xsky130_fd_sc_hd__and4b_2_2 (
    .X(sky130_fd_sc_hd__and4b_2_2_X),
    .A_N(sky130_fd_sc_hd__or4_2_4_D),
    .D(sky130_fd_sc_hd__or4_2_4_B),
    .C(sky130_fd_sc_hd__or4_2_4_A),
    .B(sky130_fd_sc_hd__or4_2_4_C)
  );

  sky130_fd_sc_hd__buf_2 Xsky130_fd_sc_hd__buf_2_0 (
    .X(sky130_fd_sc_hd__buf_2_0_X),
    .A(sky130_fd_sc_hd__or4_2_4_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_0 (
    .A(sky130_fd_sc_hd__or3_2_3_C),
    .Y(sky130_fd_sc_hd__inv_2_0_Y)
  );

  sky130_fd_sc_hd__nor3_2 Xsky130_fd_sc_hd__nor3_2_2 (
    .C(sky130_fd_sc_hd__or3_2_8_X),
    .Y(sky130_fd_sc_hd__nor3_2_2_Y),
    .A(sky130_fd_sc_hd__nor3_2_2_A),
    .B(sky130_fd_sc_hd__nor3_2_2_B)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_18 (
    .X(sky130_fd_sc_hd__xor2_2_18_X),
    .B(sky130_fd_sc_hd__o32a_2_2_X),
    .A(sky130_fd_sc_hd__xor2_2_19_A)
  );

  sky130_fd_sc_hd__a21boi_2 Xsky130_fd_sc_hd__a21boi_2_3 (
    .B1_N(sky130_fd_sc_hd__or2_2_11_B),
    .A2(sky130_fd_sc_hd__and3_2_25_C),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__dfxtp_2_2_D)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_7 (
    .X(sky130_fd_sc_hd__clkbuf_4_7_X),
    .A(sky130_fd_sc_hd__clkbuf_8_7_X)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_1 (
    .B(sky130_fd_sc_hd__inv_2_4_Y),
    .X(sky130_fd_sc_hd__and3_2_1_X),
    .A(sky130_fd_sc_hd__or2_2_4_A),
    .C(sky130_fd_sc_hd__and3_2_1_C)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_8 (
    .B(sky130_fd_sc_hd__or2_2_9_B),
    .Y(sky130_fd_sc_hd__nand2b_2_8_Y),
    .A_N(sky130_fd_sc_hd__or2_2_8_B)
  );

  sky130_fd_sc_hd__o22a_2 Xsky130_fd_sc_hd__o22a_2_3 (
    .A2(sky130_fd_sc_hd__or2_2_10_X),
    .X(sky130_fd_sc_hd__o22a_2_3_X),
    .B1(sky130_fd_sc_hd__o22a_2_3_B1),
    .A1(sky130_fd_sc_hd__xor2_2_19_A),
    .B2(sky130_fd_sc_hd__o22a_2_3_B2)
  );

  sky130_fd_sc_hd__a221o_2 Xsky130_fd_sc_hd__a221o_2_2 (
    .X(sky130_fd_sc_hd__a221o_2_2_X),
    .B1(sky130_fd_sc_hd__xor2_2_19_B),
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .B2(sky130_fd_sc_hd__nor2_2_39_Y),
    .A2(sky130_fd_sc_hd__xor2_2_16_A),
    .C1(sky130_fd_sc_hd__nor2_2_46_Y)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_21 (
    .A1(sky130_fd_sc_hd__o21a_2_21_A1),
    .B1(sky130_fd_sc_hd__a31o_2_24_X),
    .A2(sky130_fd_sc_hd__nand4_2_9_Y),
    .X(sky130_fd_sc_hd__o21a_2_21_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_10 (
    .A1(sky130_fd_sc_hd__and2b_2_3_B),
    .B1(sky130_fd_sc_hd__a31o_2_3_X),
    .A2(sky130_fd_sc_hd__nand4_2_1_Y),
    .X(sky130_fd_sc_hd__o21a_2_10_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_11 (
    .A(sky130_fd_sc_hd__or4_2_9_A),
    .X(sky130_fd_sc_hd__and4_2_6_A),
    .B(sky130_fd_sc_hd__or4_2_9_B)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_23 (
    .X(sky130_fd_sc_hd__and4_2_6_B),
    .B(sky130_fd_sc_hd__o21a_2_19_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_7_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_12 (
    .X(sky130_fd_sc_hd__and3_2_17_C),
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .A_N(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__a211o_2 Xsky130_fd_sc_hd__a211o_2_1 (
    .X(sky130_fd_sc_hd__a211o_2_1_X),
    .A2(sky130_fd_sc_hd__or2_2_4_B),
    .A1(sky130_fd_sc_hd__or4_2_0_A),
    .B1(sky130_fd_sc_hd__mux2_1_4_X),
    .C1(sky130_fd_sc_hd__or4_2_0_B)
  );

  sky130_fd_sc_hd__dfxtp_2 Xsky130_fd_sc_hd__dfxtp_2_1 (
    .Q(sky130_fd_sc_hd__or2_2_9_A),
    .CLK(sky130_fd_sc_hd__dfxtp_2_2_CLK),
    .D(sky130_fd_sc_hd__dfxtp_2_1_D)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_15 (
    .B1(sky130_fd_sc_hd__mux2_1_20_X),
    .A2(sky130_fd_sc_hd__nor2_2_32_B),
    .A1(sky130_fd_sc_hd__or2_2_8_X),
    .Y(sky130_fd_sc_hd__a22o_2_21_B2)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_24 (
    .Q(sky130_fd_sc_hd__and4_2_3_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a32o_2_2_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_8_CLK)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_13 (
    .Q(sky130_fd_sc_hd__or4_2_2_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_1_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_0_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_68 (
    .Q(sky130_fd_sc_hd__o21a_2_25_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_68_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_10_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_57 (
    .Q(sky130_fd_sc_hd__o21a_2_19_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_57_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_8_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_35 (
    .Q(sky130_fd_sc_hd__mux2_1_16_A0),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_16_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_2_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_46 (
    .Q(sky130_fd_sc_hd__or4_2_4_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__xor2_2_11_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_5_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_79 (
    .Q(sky130_fd_sc_hd__or4_2_8_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_15_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_9_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_16 (
    .A(sky130_fd_sc_hd__inv_2_16_A),
    .Y(sky130_fd_sc_hd__or4_2_5_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_6 (
    .Y(sky130_fd_sc_hd__nor2_2_5_A),
    .A(sky130_fd_sc_hd__xor2_2_3_A),
    .B(sky130_fd_sc_hd__or3_2_3_A)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_8 (
    .C(sky130_fd_sc_hd__or4_2_8_C),
    .A(sky130_fd_sc_hd__or4_2_8_A),
    .X(sky130_fd_sc_hd__or4_2_8_X),
    .B(sky130_fd_sc_hd__or4_2_8_B),
    .D(sky130_fd_sc_hd__or4_2_8_D)
  );

  sky130_fd_sc_hd__and4b_2 Xsky130_fd_sc_hd__and4b_2_3 (
    .X(sky130_fd_sc_hd__and4b_2_3_X),
    .A_N(sky130_fd_sc_hd__or2_2_11_B),
    .D(sky130_fd_sc_hd__and4b_2_3_D),
    .C(sky130_fd_sc_hd__and3_2_6_X),
    .B(sky130_fd_sc_hd__or2_2_11_A)
  );

  sky130_fd_sc_hd__nor3_2 Xsky130_fd_sc_hd__nor3_2_3 (
    .C(sky130_fd_sc_hd__nor3_2_3_C),
    .Y(sky130_fd_sc_hd__nor3_2_3_Y),
    .A(sky130_fd_sc_hd__nor3_2_3_A),
    .B(sky130_fd_sc_hd__nor3_2_3_B)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_1 (
    .A(sky130_fd_sc_hd__inv_2_1_A),
    .Y(sky130_fd_sc_hd__or4_2_1_B)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_19 (
    .X(sky130_fd_sc_hd__xor2_2_19_X),
    .B(sky130_fd_sc_hd__xor2_2_19_B),
    .A(sky130_fd_sc_hd__xor2_2_19_A)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_8 (
    .X(sky130_fd_sc_hd__clkbuf_4_8_X),
    .A(sky130_fd_sc_hd__clkbuf_8_8_X)
  );

  sky130_fd_sc_hd__or3b_2 Xsky130_fd_sc_hd__or3b_2_0 (
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .B(sky130_fd_sc_hd__or2_2_9_B),
    .C_N(sky130_fd_sc_hd__or2_2_9_A),
    .X(sky130_fd_sc_hd__or3b_2_0_X)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_0 (
    .X(sky130_fd_sc_hd__xor2_2_0_X),
    .B(sky130_fd_sc_hd__xor2_2_0_B),
    .A(sky130_fd_sc_hd__xor2_2_7_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_2 (
    .B(sky130_fd_sc_hd__and3_2_2_B),
    .X(sky130_fd_sc_hd__or3_2_5_C),
    .A(sky130_fd_sc_hd__and3_2_2_A),
    .C(sky130_fd_sc_hd__and3_2_2_C)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_9 (
    .B(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__o32ai_2_0_B1),
    .A_N(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__a221o_2 Xsky130_fd_sc_hd__a221o_2_3 (
    .X(sky130_fd_sc_hd__o22a_2_3_B2),
    .B1(sky130_fd_sc_hd__nor2_2_34_Y),
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .B2(sky130_fd_sc_hd__nor3b_2_0_B),
    .A2(sky130_fd_sc_hd__or2_2_12_A),
    .C1(sky130_fd_sc_hd__nor2_2_39_Y)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_22 (
    .A1(sky130_fd_sc_hd__inv_2_19_A),
    .B1(sky130_fd_sc_hd__or4_2_8_X),
    .A2(sky130_fd_sc_hd__nor2_2_44_Y),
    .X(sky130_fd_sc_hd__o21a_2_22_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_11 (
    .A1(sky130_fd_sc_hd__or3_2_8_B),
    .B1(sky130_fd_sc_hd__xnor2_2_11_B),
    .A2(sky130_fd_sc_hd__and3_2_11_X),
    .X(sky130_fd_sc_hd__o21a_2_11_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_12 (
    .A(sky130_fd_sc_hd__or4_2_7_A),
    .X(sky130_fd_sc_hd__and4_2_6_D),
    .B(sky130_fd_sc_hd__or4_2_7_B)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_13 (
    .X(sky130_fd_sc_hd__nor2_2_32_B),
    .B(sky130_fd_sc_hd__or3b_2_0_A),
    .A_N(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_24 (
    .X(sky130_fd_sc_hd__and4_2_6_C),
    .B(sky130_fd_sc_hd__o21a_2_23_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_8_C)
  );

  sky130_fd_sc_hd__a211o_2 Xsky130_fd_sc_hd__a211o_2_2 (
    .X(sky130_fd_sc_hd__a211o_2_2_X),
    .A2(sky130_fd_sc_hd__nand2_2_9_Y),
    .A1(sky130_fd_sc_hd__or2_2_4_A),
    .B1(sky130_fd_sc_hd__or4_2_0_D),
    .C1(sky130_fd_sc_hd__or4_2_0_A)
  );

  sky130_fd_sc_hd__dfxtp_2 Xsky130_fd_sc_hd__dfxtp_2_2 (
    .Q(sky130_fd_sc_hd__or3b_2_0_A),
    .CLK(sky130_fd_sc_hd__dfxtp_2_2_CLK),
    .D(sky130_fd_sc_hd__dfxtp_2_2_D)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_16 (
    .B1(sky130_fd_sc_hd__or3_2_9_A),
    .A2(sky130_fd_sc_hd__o31a_2_1_B1),
    .A1(sky130_fd_sc_hd__inv_2_12_A),
    .Y(sky130_fd_sc_hd__xnor2_2_14_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_25 (
    .Q(sky130_fd_sc_hd__and4_2_3_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_25_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_3_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_14 (
    .Q(sky130_fd_sc_hd__o21a_2_4_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__nand2b_2_1_Y),
    .CLK(sky130_fd_sc_hd__clkbuf_8_0_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_47 (
    .Q(sky130_fd_sc_hd__or2_2_11_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a31o_2_13_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_8_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_58 (
    .Q(sky130_fd_sc_hd__o21a_2_18_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_58_D),
    .CLK(sky130_fd_sc_hd__clkbuf_4_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_36 (
    .Q(sky130_fd_sc_hd__mux2_1_12_A0),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_12_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_6_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_69 (
    .Q(sky130_fd_sc_hd__or4_2_6_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_16_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_10_X)
  );

  sky130_fd_sc_hd__o21bai_2 Xsky130_fd_sc_hd__o21bai_2_0 (
    .B1_N(sky130_fd_sc_hd__xnor2_2_6_A),
    .Y(sky130_fd_sc_hd__o21bai_2_0_Y),
    .A2(sky130_fd_sc_hd__o32ai_2_0_B1),
    .A1(sky130_fd_sc_hd__nor3_2_1_B)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_17 (
    .A(sky130_fd_sc_hd__inv_2_17_A),
    .Y(sky130_fd_sc_hd__or4_2_9_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_7 (
    .Y(sky130_fd_sc_hd__nor2_2_9_B),
    .A(sky130_fd_sc_hd__nor2_2_8_A),
    .B(sky130_fd_sc_hd__nor2_2_0_B)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_9 (
    .C(sky130_fd_sc_hd__or4_2_9_C),
    .A(sky130_fd_sc_hd__or4_2_9_A),
    .X(sky130_fd_sc_hd__or4_2_9_X),
    .B(sky130_fd_sc_hd__or4_2_9_B),
    .D(sky130_fd_sc_hd__or4_2_9_D)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_2 (
    .A(sky130_fd_sc_hd__inv_2_2_A),
    .Y(sky130_fd_sc_hd__or4_2_2_B)
  );

  sky130_fd_sc_hd__a41oi_2 Xsky130_fd_sc_hd__a41oi_2_0 (
    .A4(sky130_fd_sc_hd__inv_2_7_A),
    .A3(sky130_fd_sc_hd__or4_2_4_C),
    .A2(sky130_fd_sc_hd__or4_2_4_A),
    .B1(sky130_fd_sc_hd__or4_2_4_D),
    .A1(sky130_fd_sc_hd__or4_2_4_B),
    .Y(sky130_fd_sc_hd__a41oi_2_0_Y)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_9 (
    .X(sky130_fd_sc_hd__clkbuf_4_9_X),
    .A(sky130_fd_sc_hd__clkbuf_4_9_A)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_1 (
    .X(sky130_fd_sc_hd__xor2_2_1_X),
    .B(sky130_fd_sc_hd__xor2_2_1_B),
    .A(sky130_fd_sc_hd__or4_2_4_C)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_3 (
    .B(sky130_fd_sc_hd__and3_2_3_B),
    .X(sky130_fd_sc_hd__and3_2_3_X),
    .A(sky130_fd_sc_hd__or4_2_0_B),
    .C(sky130_fd_sc_hd__and3_2_3_C)
  );

  sky130_fd_sc_hd__a221o_2 Xsky130_fd_sc_hd__a221o_2_4 (
    .X(sky130_fd_sc_hd__a221o_2_4_X),
    .B1(sky130_fd_sc_hd__nor2_2_39_Y),
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .B2(sky130_fd_sc_hd__xor2_2_14_B),
    .A2(sky130_fd_sc_hd__xor2_2_19_A),
    .C1(sky130_fd_sc_hd__o21a_2_14_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_23 (
    .A1(sky130_fd_sc_hd__o21a_2_23_A1),
    .B1(sky130_fd_sc_hd__a31o_2_19_X),
    .A2(sky130_fd_sc_hd__nand4_2_8_Y),
    .X(sky130_fd_sc_hd__o21a_2_23_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_12 (
    .A1(sky130_fd_sc_hd__o21a_2_12_A1),
    .B1(sky130_fd_sc_hd__a31o_2_9_X),
    .A2(sky130_fd_sc_hd__xnor2_2_11_B),
    .X(sky130_fd_sc_hd__o21a_2_12_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_13 (
    .A(sky130_fd_sc_hd__or4_2_8_A),
    .X(sky130_fd_sc_hd__and4_2_5_B),
    .B(sky130_fd_sc_hd__or4_2_8_B)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_14 (
    .X(sky130_fd_sc_hd__o31a_2_2_A2),
    .B(sky130_fd_sc_hd__or3b_2_0_A),
    .A_N(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_25 (
    .X(sky130_fd_sc_hd__and4_2_5_A),
    .B(sky130_fd_sc_hd__o21a_2_21_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_9_C)
  );

  sky130_fd_sc_hd__a211o_2 Xsky130_fd_sc_hd__a211o_2_3 (
    .X(sky130_fd_sc_hd__a211o_2_3_X),
    .A2(sky130_fd_sc_hd__or2_2_9_B),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .B1(sky130_fd_sc_hd__inv_2_13_Y),
    .C1(sky130_fd_sc_hd__o31a_2_1_A3)
  );

  sky130_fd_sc_hd__dfxtp_2 Xsky130_fd_sc_hd__dfxtp_2_3 (
    .Q(sky130_fd_sc_hd__or2_2_9_B),
    .CLK(sky130_fd_sc_hd__dfxtp_2_3_CLK),
    .D(sky130_fd_sc_hd__dfxtp_2_3_D)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_17 (
    .B1(sky130_fd_sc_hd__or2_2_8_B),
    .A2(sky130_fd_sc_hd__and3_2_17_C),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__a22o_2_7_A1)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_15 (
    .Q(sky130_fd_sc_hd__xor2_2_0_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o211a_2_7_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_4_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_48 (
    .Q(sky130_fd_sc_hd__xor2_2_14_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a221o_2_4_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_7_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_26 (
    .Q(sky130_fd_sc_hd__or3_2_8_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_11_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_3_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_59 (
    .Q(sky130_fd_sc_hd__o21a_2_16_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_59_D),
    .CLK(sky130_fd_sc_hd__clkbuf_4_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_37 (
    .Q(sky130_fd_sc_hd__inv_2_11_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a31o_2_12_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_6_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_18 (
    .A(sky130_fd_sc_hd__inv_2_18_A),
    .Y(sky130_fd_sc_hd__or4_2_7_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_8 (
    .Y(sky130_fd_sc_hd__xnor2_2_0_A),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .B(sky130_fd_sc_hd__xor2_2_0_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_3 (
    .A(sky130_fd_sc_hd__inv_2_3_A),
    .Y(sky130_fd_sc_hd__or4_2_3_B)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_20 (
    .S(sky130_fd_sc_hd__or2_2_9_B),
    .A1(sky130_fd_sc_hd__or2_2_8_B),
    .A0(sky130_fd_sc_hd__or2_2_9_A),
    .X(sky130_fd_sc_hd__mux2_1_20_X)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_2 (
    .X(sky130_fd_sc_hd__or3_2_3_B),
    .B(sky130_fd_sc_hd__xor2_2_2_B),
    .A(sky130_fd_sc_hd__xor2_2_2_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_4 (
    .B(sky130_fd_sc_hd__and3_2_4_B),
    .X(sky130_fd_sc_hd__and3_2_4_X),
    .A(sky130_fd_sc_hd__and3_2_4_A),
    .C(sky130_fd_sc_hd__or3_2_5_X)
  );

  sky130_fd_sc_hd__a221o_2 Xsky130_fd_sc_hd__a221o_2_5 (
    .X(sky130_fd_sc_hd__dfstp_2_0_D),
    .B1(sky130_fd_sc_hd__xor2_2_17_B),
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .B2(sky130_fd_sc_hd__nor2_2_39_Y),
    .A2(sky130_fd_sc_hd__a22o_2_4_B2),
    .C1(sky130_fd_sc_hd__nor2_2_40_Y)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_24 (
    .A1(sky130_fd_sc_hd__o21a_2_24_A1),
    .B1(sky130_fd_sc_hd__a31o_2_20_X),
    .A2(sky130_fd_sc_hd__o21a_2_24_A2),
    .X(sky130_fd_sc_hd__o21a_2_24_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_13 (
    .A1(sky130_fd_sc_hd__inv_2_15_Y),
    .B1(sky130_fd_sc_hd__inv_2_14_Y),
    .A2(sky130_fd_sc_hd__o31a_2_2_A1),
    .X(sky130_fd_sc_hd__o21a_2_13_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_14 (
    .A(sky130_fd_sc_hd__or4_2_6_A),
    .X(sky130_fd_sc_hd__and3_2_12_B),
    .B(sky130_fd_sc_hd__or4_2_6_B)
  );

  sky130_fd_sc_hd__a32o_2 Xsky130_fd_sc_hd__a32o_2_0 (
    .B2(sky130_fd_sc_hd__xor2_2_3_B),
    .X(sky130_fd_sc_hd__xor2_2_2_A),
    .A2(sky130_fd_sc_hd__xor2_2_0_X),
    .A3(sky130_fd_sc_hd__xor2_2_1_X),
    .A1(sky130_fd_sc_hd__or4_2_4_B),
    .B1(sky130_fd_sc_hd__xor2_2_3_A)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_26 (
    .X(sky130_fd_sc_hd__and4_2_5_D),
    .B(sky130_fd_sc_hd__o21a_2_28_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_10_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_15 (
    .X(sky130_fd_sc_hd__o32a_2_2_B1),
    .B(sky130_fd_sc_hd__nand2_2_29_Y),
    .A_N(sky130_fd_sc_hd__or3_2_9_B)
  );

  sky130_fd_sc_hd__a211o_2 Xsky130_fd_sc_hd__a211o_2_4 (
    .X(sky130_fd_sc_hd__or3_2_15_A),
    .A2(sky130_fd_sc_hd__or3_2_17_A),
    .A1(sky130_fd_sc_hd__or2_2_9_A),
    .B1(sky130_fd_sc_hd__or3_2_6_C),
    .C1(sky130_fd_sc_hd__or3_2_6_B)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_18 (
    .B1(sky130_fd_sc_hd__nor3_2_3_A),
    .A2(sky130_fd_sc_hd__nor3_2_3_C),
    .A1(sky130_fd_sc_hd__nor3_2_3_B),
    .Y(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_16 (
    .Q(sky130_fd_sc_hd__xor2_2_7_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_5_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_3_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_49 (
    .Q(sky130_fd_sc_hd__a22o_2_4_B2),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a31o_2_14_X),
    .CLK(sky130_fd_sc_hd__clkbuf_4_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_27 (
    .Q(sky130_fd_sc_hd__or2_2_7_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a22o_2_1_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_4_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_38 (
    .Q(sky130_fd_sc_hd__a22o_2_2_B2),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_11_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_6_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_19 (
    .A(sky130_fd_sc_hd__inv_2_19_A),
    .Y(sky130_fd_sc_hd__or4_2_8_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_9 (
    .Y(sky130_fd_sc_hd__nand2_2_9_Y),
    .A(sky130_fd_sc_hd__xor2_2_3_A),
    .B(sky130_fd_sc_hd__inv_2_4_A)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_0 (
    .A(sky130_fd_sc_hd__or3_2_3_A),
    .B(sky130_fd_sc_hd__or3_2_0_B),
    .X(sky130_fd_sc_hd__or3_2_0_X),
    .C(sky130_fd_sc_hd__or3_2_2_B)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_4 (
    .A(sky130_fd_sc_hd__inv_2_4_A),
    .Y(sky130_fd_sc_hd__inv_2_4_Y)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_10 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_8_A0),
    .A0(sky130_fd_sc_hd__mux2_1_12_A1),
    .X(sky130_fd_sc_hd__mux2_1_10_X)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_3 (
    .X(sky130_fd_sc_hd__or2_2_2_A),
    .B(sky130_fd_sc_hd__xor2_2_3_B),
    .A(sky130_fd_sc_hd__xor2_2_3_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_5 (
    .B(sky130_fd_sc_hd__and3_2_5_B),
    .X(sky130_fd_sc_hd__and3_2_6_C),
    .A(sky130_fd_sc_hd__and3_2_5_A),
    .C(sky130_fd_sc_hd__and3_2_5_C)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_25 (
    .A1(sky130_fd_sc_hd__o21a_2_25_A1),
    .B1(sky130_fd_sc_hd__a31o_2_21_X),
    .A2(sky130_fd_sc_hd__o21a_2_25_A2),
    .X(sky130_fd_sc_hd__o21a_2_25_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_14 (
    .A1(sky130_fd_sc_hd__xor2_2_13_X),
    .B1(sky130_fd_sc_hd__o21a_2_14_B1),
    .A2(sky130_fd_sc_hd__xor2_2_14_X),
    .X(sky130_fd_sc_hd__o21a_2_14_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_15 (
    .A(sky130_fd_sc_hd__inv_2_6_Y),
    .X(sky130_fd_sc_hd__and2_2_15_X),
    .B(sky130_fd_sc_hd__and4_2_3_X)
  );

  sky130_fd_sc_hd__a32o_2 Xsky130_fd_sc_hd__a32o_2_1 (
    .B2(sky130_fd_sc_hd__a32o_2_1_B2),
    .X(sky130_fd_sc_hd__a32o_2_1_X),
    .A2(sky130_fd_sc_hd__o21a_2_3_A2),
    .A3(sky130_fd_sc_hd__or2_2_4_X),
    .A1(sky130_fd_sc_hd__or4_2_0_A),
    .B1(sky130_fd_sc_hd__o22a_2_0_X)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_27 (
    .X(sky130_fd_sc_hd__and3_2_12_C),
    .B(sky130_fd_sc_hd__o21a_2_25_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_13_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_16 (
    .X(sky130_fd_sc_hd__and2b_2_16_X),
    .B(sky130_fd_sc_hd__or2_2_10_A),
    .A_N(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_19 (
    .B1(sky130_fd_sc_hd__nor2_2_46_A),
    .A2(sky130_fd_sc_hd__xor2_2_14_X),
    .A1(sky130_fd_sc_hd__xor2_2_13_X),
    .Y(sky130_fd_sc_hd__o21a_2_14_B1)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_0 (
    .A1(sky130_fd_sc_hd__nand2_2_5_Y),
    .A2(sky130_fd_sc_hd__or3_2_4_B),
    .X(sky130_fd_sc_hd__a22o_2_0_X),
    .B2(sky130_fd_sc_hd__or2_2_4_A),
    .B1(sky130_fd_sc_hd__or3_2_3_C)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_28 (
    .Q(sky130_fd_sc_hd__inv_2_6_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a31o_2_11_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_4_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_17 (
    .Q(sky130_fd_sc_hd__xor2_2_9_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__xor2_2_9_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_4_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_39 (
    .Q(sky130_fd_sc_hd__mux2_1_19_A0),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_19_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_8_X)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_1 (
    .A(sky130_fd_sc_hd__or4_2_0_A),
    .B(sky130_fd_sc_hd__or3_2_1_B),
    .X(sky130_fd_sc_hd__or3_2_1_X),
    .C(sky130_fd_sc_hd__or3_2_1_C)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_5 (
    .A(sky130_fd_sc_hd__inv_2_5_A),
    .Y(sky130_fd_sc_hd__inv_2_5_Y)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_11 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_12_A0),
    .A0(sky130_fd_sc_hd__a22o_2_2_B2),
    .X(sky130_fd_sc_hd__mux2_1_11_X)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_4 (
    .X(sky130_fd_sc_hd__xor2_2_4_X),
    .B(sky130_fd_sc_hd__xor2_2_7_X),
    .A(sky130_fd_sc_hd__xor2_2_4_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_6 (
    .B(sky130_fd_sc_hd__and4_2_0_X),
    .X(sky130_fd_sc_hd__and3_2_6_X),
    .A(sky130_fd_sc_hd__and4_2_1_X),
    .C(sky130_fd_sc_hd__and3_2_6_C)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_15 (
    .A1(sky130_fd_sc_hd__or2_2_9_A),
    .B1(sky130_fd_sc_hd__o21ai_2_5_Y),
    .A2(sky130_fd_sc_hd__o21a_2_15_A2),
    .X(sky130_fd_sc_hd__o21a_2_15_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_26 (
    .A1(sky130_fd_sc_hd__inv_2_20_A),
    .B1(sky130_fd_sc_hd__or4_2_6_X),
    .A2(sky130_fd_sc_hd__nor2_2_45_Y),
    .X(sky130_fd_sc_hd__o21a_2_26_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_16 (
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .X(sky130_fd_sc_hd__or2_2_10_A),
    .B(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__a32o_2 Xsky130_fd_sc_hd__a32o_2_2 (
    .B2(sky130_fd_sc_hd__and4_2_3_A),
    .X(sky130_fd_sc_hd__a32o_2_2_X),
    .A2(sky130_fd_sc_hd__inv_2_7_A),
    .A3(sky130_fd_sc_hd__and3_2_10_B),
    .A1(I),
    .B1(sky130_fd_sc_hd__inv_2_10_Y)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_28 (
    .X(sky130_fd_sc_hd__and4_2_5_C),
    .B(sky130_fd_sc_hd__o21a_2_24_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_11_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_17 (
    .X(sky130_fd_sc_hd__o31a_2_1_A3),
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .A_N(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_30 (
    .Y(sky130_fd_sc_hd__o31a_2_1_B1),
    .A(sky130_fd_sc_hd__or2_2_9_A),
    .B(sky130_fd_sc_hd__or2_2_8_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_18 (
    .Q(sky130_fd_sc_hd__xor2_2_4_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o311a_2_1_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_4_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_29 (
    .Q(sky130_fd_sc_hd__inv_2_8_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_29_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_4_X)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_1 (
    .A1(sky130_fd_sc_hd__inv_2_7_Y),
    .A2(sky130_fd_sc_hd__or2_2_7_A),
    .X(sky130_fd_sc_hd__a22o_2_1_X),
    .B2(sky130_fd_sc_hd__inv_2_9_Y),
    .B1(sky130_fd_sc_hd__o211a_2_8_X)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_10 (
    .X(sky130_fd_sc_hd__clkbuf_4_10_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_X)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_2 (
    .A(sky130_fd_sc_hd__or3_2_3_A),
    .B(sky130_fd_sc_hd__or3_2_2_B),
    .X(sky130_fd_sc_hd__or4_2_0_C),
    .C(sky130_fd_sc_hd__or3_2_2_C)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_6 (
    .A(sky130_fd_sc_hd__inv_2_6_A),
    .Y(sky130_fd_sc_hd__inv_2_6_Y)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_12 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_12_A1),
    .A0(sky130_fd_sc_hd__mux2_1_12_A0),
    .X(sky130_fd_sc_hd__mux2_1_12_X)
  );

  sky130_fd_sc_hd__a311o_2 Xsky130_fd_sc_hd__a311o_2_0 (
    .X(sky130_fd_sc_hd__and3_2_3_B),
    .C1(sky130_fd_sc_hd__and3_2_1_X),
    .B1(sky130_fd_sc_hd__or3_2_4_B),
    .A1(sky130_fd_sc_hd__xor2_2_3_A),
    .A2(sky130_fd_sc_hd__or4_2_0_A),
    .A3(sky130_fd_sc_hd__or2_2_0_B)
  );

  sky130_fd_sc_hd__dfstp_2 Xsky130_fd_sc_hd__dfstp_2_0 (
    .Q(sky130_fd_sc_hd__xor2_2_17_B),
    .D(sky130_fd_sc_hd__dfstp_2_0_D),
    .SET_B(rst_n),
    .CLK(sky130_fd_sc_hd__clkbuf_8_7_X)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_5 (
    .X(sky130_fd_sc_hd__xor2_2_5_X),
    .B(sky130_fd_sc_hd__xor2_2_5_B),
    .A(sky130_fd_sc_hd__xor2_2_5_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_7 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .X(sky130_fd_sc_hd__and3_2_7_X),
    .A(sky130_fd_sc_hd__inv_2_9_A),
    .C(sky130_fd_sc_hd__and3_2_7_C)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_16 (
    .A1(sky130_fd_sc_hd__o21a_2_16_A1),
    .B1(sky130_fd_sc_hd__a31o_2_17_X),
    .A2(sky130_fd_sc_hd__nand4_2_4_Y),
    .X(sky130_fd_sc_hd__o21a_2_16_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_27 (
    .A1(sky130_fd_sc_hd__o21a_2_27_A1),
    .B1(sky130_fd_sc_hd__a31o_2_22_X),
    .A2(sky130_fd_sc_hd__o21a_2_27_A2),
    .X(sky130_fd_sc_hd__o21a_2_27_X)
  );

  sky130_fd_sc_hd__a32o_2 Xsky130_fd_sc_hd__a32o_2_3 (
    .B2(sky130_fd_sc_hd__a32o_2_4_B2),
    .X(sky130_fd_sc_hd__a32o_2_3_X),
    .A2(sky130_fd_sc_hd__and2_2_15_X),
    .A3(sky130_fd_sc_hd__and4b_2_3_X),
    .A1(sky130_fd_sc_hd__inv_2_23_Y),
    .B1(sky130_fd_sc_hd__a32o_2_3_B1)
  );

  sky130_fd_sc_hd__clkbuf_16 Xsky130_fd_sc_hd__clkbuf_16_0 (
    .X(sky130_fd_sc_hd__clkbuf_8_9_A),
    .A(clk)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_29 (
    .X(sky130_fd_sc_hd__and3_2_12_A),
    .B(sky130_fd_sc_hd__o21a_2_27_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_12_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_18 (
    .X(sky130_fd_sc_hd__o32a_2_3_A1),
    .B(sky130_fd_sc_hd__nor2_2_34_Y),
    .A_N(sky130_fd_sc_hd__xor2_2_16_X)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_20 (
    .Y(sky130_fd_sc_hd__and2_2_8_B),
    .A(sky130_fd_sc_hd__or2_2_9_B),
    .B(sky130_fd_sc_hd__or2_2_8_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_31 (
    .Y(sky130_fd_sc_hd__xor2_2_20_B),
    .A(sky130_fd_sc_hd__nand2_2_31_A),
    .B(sky130_fd_sc_hd__a22o_2_3_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_19 (
    .Q(sky130_fd_sc_hd__nor3_2_2_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__and2b_2_9_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_3_X)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_2 (
    .A1(sky130_fd_sc_hd__or4_2_4_X),
    .A2(sky130_fd_sc_hd__a22o_2_2_A2),
    .X(sky130_fd_sc_hd__a22o_2_2_X),
    .B2(sky130_fd_sc_hd__a22o_2_2_B2),
    .B1(sky130_fd_sc_hd__buf_2_0_X)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_11 (
    .X(sky130_fd_sc_hd__clkbuf_4_11_X),
    .A(sky130_fd_sc_hd__clkbuf_8_11_X)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_10 (
    .X(sky130_fd_sc_hd__o31a_2_10_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__a22o_2_13_X),
    .B1(sky130_fd_sc_hd__or3_2_15_X),
    .A3(sky130_fd_sc_hd__a22o_2_17_X)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_3 (
    .A(sky130_fd_sc_hd__or3_2_3_A),
    .B(sky130_fd_sc_hd__or3_2_3_B),
    .X(sky130_fd_sc_hd__or3_2_3_X),
    .C(sky130_fd_sc_hd__or3_2_3_C)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_7 (
    .A(sky130_fd_sc_hd__inv_2_7_A),
    .Y(sky130_fd_sc_hd__inv_2_7_Y)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_13 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(I),
    .A0(sky130_fd_sc_hd__a22o_2_2_A2),
    .X(sky130_fd_sc_hd__mux2_1_13_X)
  );

  sky130_fd_sc_hd__a311o_2 Xsky130_fd_sc_hd__a311o_2_1 (
    .X(sky130_fd_sc_hd__o31a_2_0_B1),
    .C1(sky130_fd_sc_hd__and3b_2_0_C),
    .B1(sky130_fd_sc_hd__and2b_2_6_X),
    .A1(sky130_fd_sc_hd__nor3_2_1_C),
    .A2(sky130_fd_sc_hd__o32ai_2_0_B1),
    .A3(sky130_fd_sc_hd__nand2b_2_8_Y)
  );

  sky130_fd_sc_hd__dfstp_2 Xsky130_fd_sc_hd__dfstp_2_1 (
    .Q(sky130_fd_sc_hd__xor2_2_16_A),
    .D(sky130_fd_sc_hd__o221a_2_1_X),
    .SET_B(rst_n),
    .CLK(sky130_fd_sc_hd__dfxtp_2_3_CLK)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_0 (
    .X(sky130_fd_sc_hd__o31a_2_0_X),
    .A1(sky130_fd_sc_hd__o31a_2_0_A1),
    .A2(sky130_fd_sc_hd__o31a_2_0_A2),
    .B1(sky130_fd_sc_hd__o31a_2_0_B1),
    .A3(sky130_fd_sc_hd__nor3_2_1_Y)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_6 (
    .X(sky130_fd_sc_hd__or2_2_5_A),
    .B(sky130_fd_sc_hd__xor2_2_6_B),
    .A(sky130_fd_sc_hd__xor2_2_6_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_8 (
    .B(sky130_fd_sc_hd__and4_2_3_B),
    .X(sky130_fd_sc_hd__and4_2_4_D),
    .A(sky130_fd_sc_hd__and4_2_3_A),
    .C(sky130_fd_sc_hd__or3_2_8_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_0 (
    .Q(sky130_fd_sc_hd__nand4_2_0_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_4_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_0_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_28 (
    .A1(sky130_fd_sc_hd__o21a_2_28_A1),
    .B1(sky130_fd_sc_hd__a31o_2_23_X),
    .A2(sky130_fd_sc_hd__o21a_2_28_A2),
    .X(sky130_fd_sc_hd__o21a_2_28_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_17 (
    .A1(sky130_fd_sc_hd__inv_2_16_A),
    .B1(sky130_fd_sc_hd__or4_2_5_X),
    .A2(sky130_fd_sc_hd__nor2_2_42_Y),
    .X(sky130_fd_sc_hd__o21a_2_17_X)
  );

  sky130_fd_sc_hd__a32o_2 Xsky130_fd_sc_hd__a32o_2_4 (
    .B2(sky130_fd_sc_hd__a32o_2_4_B2),
    .X(sky130_fd_sc_hd__a32o_2_4_X),
    .A2(sky130_fd_sc_hd__and2_2_15_X),
    .A3(sky130_fd_sc_hd__and4b_2_3_X),
    .A1(sky130_fd_sc_hd__inv_2_23_A),
    .B1(success)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_19 (
    .X(sky130_fd_sc_hd__and2b_2_19_X),
    .B(sky130_fd_sc_hd__o221a_2_2_C1),
    .A_N(sky130_fd_sc_hd__or2_2_8_X)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_20 (
    .A1(sky130_fd_sc_hd__xnor2_2_13_Y),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__o31a_2_3_A3),
    .B2(sky130_fd_sc_hd__conb_1_0_LO),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_10 (
    .Y(sky130_fd_sc_hd__a31o_2_5_A3),
    .A(sky130_fd_sc_hd__or4_2_0_A),
    .B(sky130_fd_sc_hd__o31ai_2_1_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_21 (
    .Y(sky130_fd_sc_hd__and3_2_2_A),
    .A(sky130_fd_sc_hd__xor2_2_7_A),
    .B(sky130_fd_sc_hd__xor2_2_9_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_32 (
    .Y(sky130_fd_sc_hd__inv_2_12_A),
    .A(sky130_fd_sc_hd__or2_2_9_B),
    .B(sky130_fd_sc_hd__o31a_2_1_A3)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_3 (
    .A1(sky130_fd_sc_hd__or3_2_9_A),
    .A2(sky130_fd_sc_hd__or2_2_9_X),
    .X(sky130_fd_sc_hd__a22o_2_3_X),
    .B2(sky130_fd_sc_hd__or3b_2_0_X),
    .B1(sky130_fd_sc_hd__o32a_2_2_A2)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_12 (
    .X(sky130_fd_sc_hd__clkbuf_4_12_X),
    .A(sky130_fd_sc_hd__clkbuf_8_10_X)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_4 (
    .A(sky130_fd_sc_hd__or4_2_0_A),
    .B(sky130_fd_sc_hd__or3_2_4_B),
    .X(sky130_fd_sc_hd__or3_2_4_X),
    .C(sky130_fd_sc_hd__or3_2_4_C)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_8 (
    .A(sky130_fd_sc_hd__inv_2_8_A),
    .Y(sky130_fd_sc_hd__inv_2_8_Y)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_14 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_15_A0),
    .A0(sky130_fd_sc_hd__mux2_1_8_A1),
    .X(sky130_fd_sc_hd__mux2_1_14_X)
  );

  sky130_fd_sc_hd__dfstp_2 Xsky130_fd_sc_hd__dfstp_2_2 (
    .Q(sky130_fd_sc_hd__xor2_2_20_A),
    .D(sky130_fd_sc_hd__dfstp_2_2_D),
    .SET_B(rst_n),
    .CLK(sky130_fd_sc_hd__clkbuf_8_7_X)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_1 (
    .X(sky130_fd_sc_hd__o31a_2_1_X),
    .A1(sky130_fd_sc_hd__or2_2_9_B),
    .A2(sky130_fd_sc_hd__or3_2_9_A),
    .B1(sky130_fd_sc_hd__o31a_2_1_B1),
    .A3(sky130_fd_sc_hd__o31a_2_1_A3)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_7 (
    .X(sky130_fd_sc_hd__xor2_2_7_X),
    .B(sky130_fd_sc_hd__xor2_2_9_A),
    .A(sky130_fd_sc_hd__xor2_2_7_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_9 (
    .B(I),
    .X(sky130_fd_sc_hd__inv_2_10_A),
    .A(sky130_fd_sc_hd__or3_2_8_A),
    .C(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_1 (
    .Q(sky130_fd_sc_hd__inv_2_1_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_7_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_0_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_29 (
    .A1(sky130_fd_sc_hd__inv_2_17_A),
    .B1(sky130_fd_sc_hd__or4_2_9_X),
    .A2(sky130_fd_sc_hd__nor2_2_41_Y),
    .X(sky130_fd_sc_hd__o21a_2_29_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_18 (
    .A1(sky130_fd_sc_hd__o21a_2_18_A1),
    .B1(sky130_fd_sc_hd__a31o_2_16_X),
    .A2(sky130_fd_sc_hd__nand4_2_6_Y),
    .X(sky130_fd_sc_hd__o21a_2_18_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_0 (
    .A1(sky130_fd_sc_hd__or3_2_3_A),
    .B1(sky130_fd_sc_hd__or3_2_3_B),
    .A2(sky130_fd_sc_hd__or3_2_3_C),
    .X(sky130_fd_sc_hd__or4_2_0_D)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_21 (
    .A1(sky130_fd_sc_hd__o31a_2_2_X),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__o31a_2_9_A2),
    .B2(sky130_fd_sc_hd__a22o_2_21_B2),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_10 (
    .A1(sky130_fd_sc_hd__xnor2_2_14_Y),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__o31a_2_9_A3),
    .B2(sky130_fd_sc_hd__o21bai_2_0_Y),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_11 (
    .Y(sky130_fd_sc_hd__o21a_2_3_A2),
    .A(sky130_fd_sc_hd__or2_2_4_A),
    .B(sky130_fd_sc_hd__nand2_2_5_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_33 (
    .Y(sky130_fd_sc_hd__or4_2_9_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_22 (
    .Y(sky130_fd_sc_hd__and3_2_2_B),
    .A(sky130_fd_sc_hd__xor2_2_4_A),
    .B(sky130_fd_sc_hd__xor2_2_7_X)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_4 (
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .A2(sky130_fd_sc_hd__xor2_2_20_A),
    .X(sky130_fd_sc_hd__a22o_2_4_X),
    .B2(sky130_fd_sc_hd__a22o_2_4_B2),
    .B1(sky130_fd_sc_hd__nor2_2_39_Y)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_0 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__o21a_2_4_A2),
    .D(sky130_fd_sc_hd__nor4_2_0_Y),
    .C(sky130_fd_sc_hd__nand4_2_0_C)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_13 (
    .X(sky130_fd_sc_hd__clkbuf_4_13_X),
    .A(sky130_fd_sc_hd__dfxtp_2_2_CLK)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_5 (
    .A(sky130_fd_sc_hd__or3_2_5_A),
    .B(sky130_fd_sc_hd__or3_2_5_B),
    .X(sky130_fd_sc_hd__or3_2_5_X),
    .C(sky130_fd_sc_hd__or3_2_5_C)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_9 (
    .A(sky130_fd_sc_hd__inv_2_9_A),
    .Y(sky130_fd_sc_hd__inv_2_9_Y)
  );

  sky130_fd_sc_hd__and3b_2 Xsky130_fd_sc_hd__and3b_2_0 (
    .B(sky130_fd_sc_hd__and2_2_7_B),
    .X(sky130_fd_sc_hd__xnor2_2_6_A),
    .A_N(sky130_fd_sc_hd__nor3_2_1_B),
    .C(sky130_fd_sc_hd__and3b_2_0_C)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_0 (
    .B(sky130_fd_sc_hd__nor2_2_0_B),
    .Y(sky130_fd_sc_hd__xor2_2_3_B),
    .A(sky130_fd_sc_hd__nor2_2_8_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_15 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_16_A0),
    .A0(sky130_fd_sc_hd__mux2_1_15_A0),
    .X(sky130_fd_sc_hd__mux2_1_15_X)
  );

  sky130_fd_sc_hd__dfstp_2 Xsky130_fd_sc_hd__dfstp_2_3 (
    .Q(sky130_fd_sc_hd__or2_2_12_A),
    .D(sky130_fd_sc_hd__o32a_2_3_X),
    .SET_B(rst_n),
    .CLK(sky130_fd_sc_hd__clkbuf_8_7_X)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_2 (
    .X(sky130_fd_sc_hd__o31a_2_2_X),
    .A1(sky130_fd_sc_hd__o31a_2_2_A1),
    .A2(sky130_fd_sc_hd__o31a_2_2_A2),
    .B1(sky130_fd_sc_hd__inv_2_14_Y),
    .A3(sky130_fd_sc_hd__o31a_2_2_A3)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_40 (
    .B(sky130_fd_sc_hd__nor2_2_46_A),
    .Y(sky130_fd_sc_hd__nor2_2_40_Y),
    .A(sky130_fd_sc_hd__nor2_2_40_A)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_8 (
    .X(sky130_fd_sc_hd__or4_2_0_A),
    .B(sky130_fd_sc_hd__xor2_2_8_B),
    .A(sky130_fd_sc_hd__xor2_2_8_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_2 (
    .Q(sky130_fd_sc_hd__or4_2_1_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_0_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_8_CLK)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_19 (
    .A1(sky130_fd_sc_hd__o21a_2_19_A1),
    .B1(sky130_fd_sc_hd__a31o_2_18_X),
    .A2(sky130_fd_sc_hd__nand4_2_7_Y),
    .X(sky130_fd_sc_hd__o21a_2_19_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_1 (
    .A1(sky130_fd_sc_hd__or3_2_3_B),
    .B1(sky130_fd_sc_hd__or2_2_4_X),
    .A2(sky130_fd_sc_hd__and2_2_2_X),
    .X(sky130_fd_sc_hd__o21a_2_1_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_0 (
    .Y(sky130_fd_sc_hd__xor2_2_3_A),
    .A(sky130_fd_sc_hd__xnor2_2_0_A),
    .B(sky130_fd_sc_hd__xor2_2_1_X)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_11 (
    .A1(sky130_fd_sc_hd__xnor2_2_18_Y),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__o31a_2_6_A3),
    .B2(sky130_fd_sc_hd__o31a_2_0_X),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_22 (
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .A2(sky130_fd_sc_hd__or3_2_9_C),
    .X(sky130_fd_sc_hd__a22o_2_22_X),
    .B2(sky130_fd_sc_hd__or2_2_9_B),
    .B1(sky130_fd_sc_hd__nand2_2_31_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_12 (
    .Y(sky130_fd_sc_hd__o311a_2_0_C1),
    .A(sky130_fd_sc_hd__or4_2_0_A),
    .B(sky130_fd_sc_hd__mux2_1_1_X)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_23 (
    .Y(sky130_fd_sc_hd__mux2_1_5_A1),
    .A(sky130_fd_sc_hd__inv_2_9_A),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_34 (
    .Y(sky130_fd_sc_hd__or4_2_5_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_5 (
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .A2(sky130_fd_sc_hd__xor2_2_14_B),
    .X(sky130_fd_sc_hd__a22o_2_5_X),
    .B2(sky130_fd_sc_hd__nor2_2_39_Y),
    .B1(sky130_fd_sc_hd__xor2_2_20_A)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_1 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__nand4_2_1_Y),
    .D(sky130_fd_sc_hd__nand4_2_1_D),
    .C(sky130_fd_sc_hd__nand4_2_1_C)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_14 (
    .X(sky130_fd_sc_hd__clkbuf_4_14_X),
    .A(sky130_fd_sc_hd__dfrtp_2_8_CLK)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_10 (
    .X(sky130_fd_sc_hd__a21o_2_10_X),
    .B1(sky130_fd_sc_hd__and4_2_3_B),
    .A1(sky130_fd_sc_hd__and4_2_3_A),
    .A2(sky130_fd_sc_hd__inv_2_10_A)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_6 (
    .A(sky130_fd_sc_hd__or3_2_6_A),
    .B(sky130_fd_sc_hd__or3_2_6_B),
    .X(sky130_fd_sc_hd__or3_2_6_X),
    .C(sky130_fd_sc_hd__or3_2_6_C)
  );

  sky130_fd_sc_hd__and3b_2 Xsky130_fd_sc_hd__and3b_2_1 (
    .B(sky130_fd_sc_hd__or2_2_9_B),
    .X(sky130_fd_sc_hd__and3b_2_1_X),
    .A_N(sky130_fd_sc_hd__or2_2_8_B),
    .C(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_1 (
    .B(sky130_fd_sc_hd__or2_2_0_B),
    .Y(sky130_fd_sc_hd__or3_2_2_B),
    .A(sky130_fd_sc_hd__nor2_2_4_Y)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_16 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_9_A0),
    .A0(sky130_fd_sc_hd__mux2_1_16_A0),
    .X(sky130_fd_sc_hd__mux2_1_16_X)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_20 (
    .B(sky130_fd_sc_hd__o21a_2_27_A2),
    .Y(sky130_fd_sc_hd__dfrtp_2_70_D),
    .A_N(sky130_fd_sc_hd__o21a_2_27_A1)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_3 (
    .X(sky130_fd_sc_hd__o31a_2_3_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__a22o_2_6_X),
    .B1(sky130_fd_sc_hd__or3_2_13_X),
    .A3(sky130_fd_sc_hd__o31a_2_3_A3)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_41 (
    .B(sky130_fd_sc_hd__or4_2_9_D),
    .Y(sky130_fd_sc_hd__nor2_2_41_Y),
    .A(sky130_fd_sc_hd__or4_2_9_C)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_30 (
    .B(sky130_fd_sc_hd__nor2_2_30_B),
    .Y(sky130_fd_sc_hd__nor2_2_30_Y),
    .A(sky130_fd_sc_hd__inv_2_10_A)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_9 (
    .X(sky130_fd_sc_hd__xor2_2_9_X),
    .B(sky130_fd_sc_hd__inv_2_5_A),
    .A(sky130_fd_sc_hd__xor2_2_9_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_0 (
    .A(sky130_fd_sc_hd__or2_2_1_X),
    .X(sky130_fd_sc_hd__and3_2_0_C),
    .B(sky130_fd_sc_hd__or2_2_0_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_3 (
    .Q(sky130_fd_sc_hd__or4_2_3_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_2_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_0_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_2 (
    .A1(sky130_fd_sc_hd__or3_2_3_B),
    .B1(sky130_fd_sc_hd__or2_2_4_B),
    .A2(sky130_fd_sc_hd__inv_2_4_A),
    .X(sky130_fd_sc_hd__or2_2_6_B)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_1 (
    .Y(sky130_fd_sc_hd__nor2_2_8_A),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .B(sky130_fd_sc_hd__xor2_2_0_X)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_12 (
    .A1(sky130_fd_sc_hd__conb_1_4_LO),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__o31a_2_5_A2),
    .B2(sky130_fd_sc_hd__o211a_2_9_X),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_35 (
    .Y(sky130_fd_sc_hd__or4_2_6_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_24 (
    .Y(sky130_fd_sc_hd__xnor2_2_11_B),
    .A(sky130_fd_sc_hd__inv_2_10_A),
    .B(sky130_fd_sc_hd__and4_2_4_D)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_13 (
    .Y(sky130_fd_sc_hd__or4_2_3_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nor4b_2 Xsky130_fd_sc_hd__nor4b_2_0 (
    .D_N(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__or3_2_6_C),
    .C(sky130_fd_sc_hd__or2_2_9_B),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .B(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_6 (
    .A1(sky130_fd_sc_hd__conb_1_5_LO),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__a22o_2_6_X),
    .B2(sky130_fd_sc_hd__conb_1_3_LO),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_2 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__o21a_2_8_A2),
    .D(sky130_fd_sc_hd__nand4_2_2_D),
    .C(sky130_fd_sc_hd__nand4_2_2_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_11 (
    .X(sky130_fd_sc_hd__dfstp_2_2_D),
    .B1(sky130_fd_sc_hd__a22o_2_5_X),
    .A1(sky130_fd_sc_hd__and2b_2_16_X),
    .A2(sky130_fd_sc_hd__xnor2_2_19_Y)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_7 (
    .A(sky130_fd_sc_hd__or3_2_7_A),
    .B(sky130_fd_sc_hd__or3_2_7_B),
    .X(sky130_fd_sc_hd__or3_2_7_X),
    .C(sky130_fd_sc_hd__or3_2_7_C)
  );

  sky130_fd_sc_hd__and3b_2 Xsky130_fd_sc_hd__and3b_2_2 (
    .B(sky130_fd_sc_hd__nor2_2_32_B),
    .X(sky130_fd_sc_hd__and3b_2_2_X),
    .A_N(sky130_fd_sc_hd__or2_2_8_B),
    .C(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_2 (
    .B(sky130_fd_sc_hd__inv_2_4_A),
    .Y(sky130_fd_sc_hd__or3_2_2_C),
    .A(sky130_fd_sc_hd__or3_2_0_B)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_17 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_19_A0),
    .A0(sky130_fd_sc_hd__mux2_1_9_A1),
    .X(sky130_fd_sc_hd__mux2_1_17_X)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_21 (
    .B(sky130_fd_sc_hd__o21a_2_28_A2),
    .Y(sky130_fd_sc_hd__dfrtp_2_64_D),
    .A_N(sky130_fd_sc_hd__o21a_2_28_A1)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_10 (
    .B(sky130_fd_sc_hd__or2_2_9_B),
    .Y(sky130_fd_sc_hd__and2_2_7_B),
    .A_N(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_4 (
    .X(sky130_fd_sc_hd__o31a_2_4_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__a22o_2_7_X),
    .B1(sky130_fd_sc_hd__or3_2_12_X),
    .A3(sky130_fd_sc_hd__a22o_2_9_X)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_20 (
    .B(sky130_fd_sc_hd__o211a_2_0_X),
    .Y(sky130_fd_sc_hd__nor2_2_20_Y),
    .A(sky130_fd_sc_hd__nor2_2_20_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_31 (
    .B(sky130_fd_sc_hd__nor2_2_31_B),
    .Y(sky130_fd_sc_hd__nor2_2_31_Y),
    .A(sky130_fd_sc_hd__inv_2_9_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_42 (
    .B(sky130_fd_sc_hd__or4_2_5_D),
    .Y(sky130_fd_sc_hd__nor2_2_42_Y),
    .A(sky130_fd_sc_hd__or4_2_5_C)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_1 (
    .A(sky130_fd_sc_hd__or4_2_4_A),
    .X(sky130_fd_sc_hd__or2_2_1_A),
    .B(sky130_fd_sc_hd__xor2_2_7_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_4 (
    .Q(sky130_fd_sc_hd__o21a_2_5_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_4_D),
    .CLK(sky130_fd_sc_hd__dfrtp_2_8_CLK)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_3 (
    .A1(sky130_fd_sc_hd__or3_2_3_A),
    .B1(sky130_fd_sc_hd__or2_2_3_X),
    .A2(sky130_fd_sc_hd__o21a_2_3_A2),
    .X(sky130_fd_sc_hd__o21a_2_3_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_2 (
    .Y(sky130_fd_sc_hd__or3_2_0_B),
    .A(sky130_fd_sc_hd__xor2_2_3_A),
    .B(sky130_fd_sc_hd__xor2_2_3_B)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_13 (
    .A1(sky130_fd_sc_hd__a22o_2_13_A1),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__a22o_2_13_X),
    .B2(sky130_fd_sc_hd__o221a_2_2_X),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_36 (
    .Y(sky130_fd_sc_hd__or4_2_7_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nor4b_2 Xsky130_fd_sc_hd__nor4b_2_1 (
    .D_N(sky130_fd_sc_hd__nor3_2_2_Y),
    .Y(sky130_fd_sc_hd__or4b_2_8_A),
    .C(sky130_fd_sc_hd__and4_2_3_C),
    .A(sky130_fd_sc_hd__and4_2_3_A),
    .B(sky130_fd_sc_hd__and4_2_3_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_14 (
    .Y(sky130_fd_sc_hd__or4_2_1_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_25 (
    .Y(sky130_fd_sc_hd__mux2_1_7_A0),
    .A(sky130_fd_sc_hd__or2_2_7_A),
    .B(I)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_7 (
    .A1(sky130_fd_sc_hd__a22o_2_7_A1),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__a22o_2_7_X),
    .B2(sky130_fd_sc_hd__o21a_2_15_X),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_3 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__o21a_2_5_A2),
    .D(sky130_fd_sc_hd__nand4_2_3_D),
    .C(sky130_fd_sc_hd__nand4_2_3_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_12 (
    .X(sky130_fd_sc_hd__o32a_2_3_A3),
    .B1(sky130_fd_sc_hd__nor2_2_39_Y),
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .A2(sky130_fd_sc_hd__xor2_2_19_B)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_8 (
    .A(sky130_fd_sc_hd__or3_2_8_A),
    .B(sky130_fd_sc_hd__or3_2_8_B),
    .X(sky130_fd_sc_hd__or3_2_8_X),
    .C(sky130_fd_sc_hd__or3_2_8_C)
  );

  sky130_fd_sc_hd__and3b_2 Xsky130_fd_sc_hd__and3b_2_3 (
    .B(sky130_fd_sc_hd__nor2_2_40_A),
    .X(sky130_fd_sc_hd__o32a_2_3_A2),
    .A_N(sky130_fd_sc_hd__inv_2_7_A),
    .C(sky130_fd_sc_hd__xor2_2_16_X)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_3 (
    .B(sky130_fd_sc_hd__nor2_2_3_B),
    .Y(sky130_fd_sc_hd__nor2_2_3_Y),
    .A(sky130_fd_sc_hd__or3_2_3_B)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_18 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__a22o_2_2_A2),
    .A0(sky130_fd_sc_hd__mux2_1_19_A1),
    .X(sky130_fd_sc_hd__mux2_1_18_X)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_22 (
    .B(sky130_fd_sc_hd__or2_2_10_A),
    .Y(sky130_fd_sc_hd__nor2_2_46_A),
    .A_N(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_11 (
    .B(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__nand2_2_31_A),
    .A_N(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_5 (
    .X(sky130_fd_sc_hd__o31a_2_5_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__o31a_2_5_A2),
    .B1(sky130_fd_sc_hd__or3_2_17_X),
    .A3(sky130_fd_sc_hd__a22o_2_8_X)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_10 (
    .B(sky130_fd_sc_hd__or3_2_2_B),
    .Y(sky130_fd_sc_hd__nor2_2_3_B),
    .A(sky130_fd_sc_hd__or3_2_0_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_21 (
    .B(sky130_fd_sc_hd__and3_2_4_X),
    .Y(sky130_fd_sc_hd__xor2_2_8_B),
    .A(sky130_fd_sc_hd__nor2_2_21_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_32 (
    .B(sky130_fd_sc_hd__nor2_2_32_B),
    .Y(sky130_fd_sc_hd__nor2_2_32_Y),
    .A(sky130_fd_sc_hd__or2_2_8_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_43 (
    .B(sky130_fd_sc_hd__or4_2_7_D),
    .Y(sky130_fd_sc_hd__nor2_2_43_Y),
    .A(sky130_fd_sc_hd__or4_2_7_C)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_2 (
    .A(sky130_fd_sc_hd__and2_2_2_A),
    .X(sky130_fd_sc_hd__and2_2_2_X),
    .B(sky130_fd_sc_hd__and3_2_1_C)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_5 (
    .Q(sky130_fd_sc_hd__nand4_2_2_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_8_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_1_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_4 (
    .A1(sky130_fd_sc_hd__o21a_2_4_A1),
    .B1(sky130_fd_sc_hd__a31o_2_1_X),
    .A2(sky130_fd_sc_hd__o21a_2_4_A2),
    .X(sky130_fd_sc_hd__o21a_2_4_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_3 (
    .Y(sky130_fd_sc_hd__and3_2_2_C),
    .A(sky130_fd_sc_hd__xor2_2_0_B),
    .B(sky130_fd_sc_hd__xor2_2_4_A)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_14 (
    .A1(sky130_fd_sc_hd__and3_2_17_X),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__o31a_2_8_A2),
    .B2(sky130_fd_sc_hd__and3b_2_2_X),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_26 (
    .Y(sky130_fd_sc_hd__o21a_2_12_A1),
    .A(sky130_fd_sc_hd__and4_2_3_C),
    .B(sky130_fd_sc_hd__nor3_2_2_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_15 (
    .Y(sky130_fd_sc_hd__or4_2_2_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_37 (
    .Y(sky130_fd_sc_hd__or4_2_8_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_8 (
    .A1(sky130_fd_sc_hd__xor2_2_12_X),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__a22o_2_8_X),
    .B2(sky130_fd_sc_hd__o32ai_2_0_Y),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_4 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__nand4_2_4_Y),
    .D(sky130_fd_sc_hd__nand4_2_4_D),
    .C(sky130_fd_sc_hd__nand4_2_4_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_13 (
    .X(sky130_fd_sc_hd__a21o_2_13_X),
    .B1(sky130_fd_sc_hd__or4_2_5_A),
    .A1(sky130_fd_sc_hd__inv_2_16_A),
    .A2(sky130_fd_sc_hd__nor2_2_42_Y)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_9 (
    .A(sky130_fd_sc_hd__or3_2_9_A),
    .B(sky130_fd_sc_hd__or3_2_9_B),
    .X(sky130_fd_sc_hd__or3_2_9_X),
    .C(sky130_fd_sc_hd__or3_2_9_C)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_4 (
    .B(sky130_fd_sc_hd__or2_2_1_B),
    .Y(sky130_fd_sc_hd__nor2_2_4_Y),
    .A(sky130_fd_sc_hd__or2_2_1_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_19 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_19_A1),
    .A0(sky130_fd_sc_hd__mux2_1_19_A0),
    .X(sky130_fd_sc_hd__mux2_1_19_X)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_23 (
    .B(sky130_fd_sc_hd__or2_2_11_A),
    .Y(sky130_fd_sc_hd__a32o_2_4_B2),
    .A_N(sky130_fd_sc_hd__or2_2_11_B)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_12 (
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .Y(sky130_fd_sc_hd__o221a_2_2_C1),
    .A_N(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_6 (
    .X(sky130_fd_sc_hd__o31a_2_6_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__o31a_2_6_A2),
    .B1(sky130_fd_sc_hd__or3_2_10_X),
    .A3(sky130_fd_sc_hd__o31a_2_6_A3)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_11 (
    .B(sky130_fd_sc_hd__or2_2_4_B),
    .Y(sky130_fd_sc_hd__or3_2_1_C),
    .A(sky130_fd_sc_hd__or3_2_3_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_22 (
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .Y(sky130_fd_sc_hd__nor3_2_1_B),
    .A(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_44 (
    .B(sky130_fd_sc_hd__or4_2_8_D),
    .Y(sky130_fd_sc_hd__nor2_2_44_Y),
    .A(sky130_fd_sc_hd__or4_2_8_C)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_33 (
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .Y(sky130_fd_sc_hd__nor2_2_33_Y),
    .A(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_10 (
    .C1(sky130_fd_sc_hd__or2_2_9_A),
    .B1(sky130_fd_sc_hd__inv_2_14_Y),
    .A2(sky130_fd_sc_hd__or2_2_9_B),
    .A1(sky130_fd_sc_hd__inv_2_15_Y),
    .X(sky130_fd_sc_hd__o211a_2_10_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_3 (
    .A(sky130_fd_sc_hd__or4_2_1_A),
    .X(sky130_fd_sc_hd__and4_2_0_A),
    .B(sky130_fd_sc_hd__or4_2_1_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_6 (
    .Q(sky130_fd_sc_hd__nand4_2_1_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_10_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_1_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_5 (
    .A1(sky130_fd_sc_hd__o21a_2_5_A1),
    .B1(sky130_fd_sc_hd__a31o_2_4_X),
    .A2(sky130_fd_sc_hd__o21a_2_5_A2),
    .X(sky130_fd_sc_hd__o21a_2_5_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_4 (
    .Y(sky130_fd_sc_hd__xnor2_2_5_B),
    .A(sky130_fd_sc_hd__xnor2_2_4_A),
    .B(sky130_fd_sc_hd__xor2_2_4_X)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_15 (
    .A1(sky130_fd_sc_hd__o21a_2_13_X),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__o31a_2_6_A2),
    .B2(sky130_fd_sc_hd__and3b_2_1_X),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_16 (
    .Y(sky130_fd_sc_hd__and3_2_4_B),
    .A(sky130_fd_sc_hd__or4_2_4_D),
    .B(sky130_fd_sc_hd__xnor2_2_5_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_27 (
    .Y(sky130_fd_sc_hd__o21a_2_15_A2),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .B(sky130_fd_sc_hd__or2_2_8_X)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_38 (
    .Y(sky130_fd_sc_hd__nand2_2_38_Y),
    .A(sky130_fd_sc_hd__or2_2_12_A),
    .B(sky130_fd_sc_hd__or2_2_12_B)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_9 (
    .A1(sky130_fd_sc_hd__a22o_2_9_A1),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__a22o_2_9_X),
    .B2(sky130_fd_sc_hd__o22a_2_2_X),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_5 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__nand4_2_5_Y),
    .D(sky130_fd_sc_hd__nand4_2_5_D),
    .C(sky130_fd_sc_hd__nand4_2_5_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_14 (
    .X(sky130_fd_sc_hd__a21o_2_14_X),
    .B1(sky130_fd_sc_hd__or4_2_7_A),
    .A1(sky130_fd_sc_hd__inv_2_18_A),
    .A2(sky130_fd_sc_hd__nor2_2_43_Y)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_5 (
    .B(sky130_fd_sc_hd__or3_2_3_B),
    .Y(sky130_fd_sc_hd__nor2_2_5_Y),
    .A(sky130_fd_sc_hd__nor2_2_5_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_13 (
    .B(sky130_fd_sc_hd__nand4_2_6_Y),
    .Y(sky130_fd_sc_hd__dfrtp_2_58_D),
    .A_N(sky130_fd_sc_hd__o21a_2_18_A1)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_7 (
    .X(sky130_fd_sc_hd__o31a_2_7_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__o31a_2_7_A2),
    .B1(sky130_fd_sc_hd__or3_2_11_X),
    .A3(sky130_fd_sc_hd__o31a_2_7_A3)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_12 (
    .B(sky130_fd_sc_hd__nor2_2_3_B),
    .Y(sky130_fd_sc_hd__or3_2_4_B),
    .A(sky130_fd_sc_hd__or2_2_4_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_23 (
    .B(sky130_fd_sc_hd__and2_2_8_A),
    .Y(sky130_fd_sc_hd__nor2_2_23_Y),
    .A(sky130_fd_sc_hd__or2_2_8_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_45 (
    .B(sky130_fd_sc_hd__or4_2_6_D),
    .Y(sky130_fd_sc_hd__nor2_2_45_Y),
    .A(sky130_fd_sc_hd__or4_2_6_C)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_34 (
    .B(sky130_fd_sc_hd__nor2_2_40_A),
    .Y(sky130_fd_sc_hd__nor2_2_34_Y),
    .A(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_11 (
    .C1(sky130_fd_sc_hd__or2_2_11_B),
    .B1(sky130_fd_sc_hd__a21o_2_17_X),
    .A2(sky130_fd_sc_hd__nand3_2_1_Y),
    .A1(sky130_fd_sc_hd__or2_2_8_B),
    .X(sky130_fd_sc_hd__dfxtp_2_3_D)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_4 (
    .A(sky130_fd_sc_hd__or4_2_2_A),
    .X(sky130_fd_sc_hd__and4_2_1_B),
    .B(sky130_fd_sc_hd__or4_2_2_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_7 (
    .Q(sky130_fd_sc_hd__inv_2_2_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_9_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_1_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_6 (
    .A1(sky130_fd_sc_hd__inv_2_3_A),
    .B1(sky130_fd_sc_hd__or4_2_3_X),
    .A2(sky130_fd_sc_hd__o21a_2_6_A2),
    .X(sky130_fd_sc_hd__o21a_2_6_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_5 (
    .Y(sky130_fd_sc_hd__xnor2_2_8_A),
    .A(sky130_fd_sc_hd__or4_2_4_D),
    .B(sky130_fd_sc_hd__xnor2_2_5_B)
  );

  sky130_fd_sc_hd__o22ai_2 Xsky130_fd_sc_hd__o22ai_2_0 (
    .B2(sky130_fd_sc_hd__a31o_2_7_X),
    .B1(sky130_fd_sc_hd__a21oi_2_5_Y),
    .Y(sky130_fd_sc_hd__o22ai_2_0_Y),
    .A1(sky130_fd_sc_hd__xor2_2_0_B),
    .A2(sky130_fd_sc_hd__and3_2_2_B)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_16 (
    .A1(sky130_fd_sc_hd__o211a_2_10_X),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__o31a_2_7_A2),
    .B2(sky130_fd_sc_hd__and2b_2_19_X),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_0 (
    .X(sky130_fd_sc_hd__a31o_2_0_X),
    .B1(sky130_fd_sc_hd__and3_2_0_C),
    .A3(sky130_fd_sc_hd__and3_2_1_C),
    .A1(sky130_fd_sc_hd__or3_2_3_B),
    .A2(sky130_fd_sc_hd__and2_2_2_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_17 (
    .Y(sky130_fd_sc_hd__xnor2_2_4_A),
    .A(sky130_fd_sc_hd__xor2_2_0_B),
    .B(sky130_fd_sc_hd__xor2_2_9_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_28 (
    .Y(sky130_fd_sc_hd__o32a_2_2_B2),
    .A(sky130_fd_sc_hd__or2_2_9_X),
    .B(sky130_fd_sc_hd__o32a_2_2_A2)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_6 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__nand4_2_6_Y),
    .D(sky130_fd_sc_hd__nand4_2_6_D),
    .C(sky130_fd_sc_hd__nand4_2_6_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_15 (
    .X(sky130_fd_sc_hd__a21o_2_15_X),
    .B1(sky130_fd_sc_hd__or4_2_8_A),
    .A1(sky130_fd_sc_hd__inv_2_19_A),
    .A2(sky130_fd_sc_hd__nor2_2_44_Y)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_0 (
    .B(sky130_fd_sc_hd__or2_2_0_B),
    .X(sky130_fd_sc_hd__or2_2_4_B),
    .A(sky130_fd_sc_hd__or2_2_2_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_6 (
    .B(sky130_fd_sc_hd__xor2_2_9_A),
    .Y(sky130_fd_sc_hd__nor2_2_6_Y),
    .A(sky130_fd_sc_hd__xor2_2_0_B)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_14 (
    .B(sky130_fd_sc_hd__nand4_2_7_Y),
    .Y(sky130_fd_sc_hd__dfrtp_2_57_D),
    .A_N(sky130_fd_sc_hd__o21a_2_19_A1)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_8 (
    .X(sky130_fd_sc_hd__o31a_2_8_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__o31a_2_8_A2),
    .B1(sky130_fd_sc_hd__or3_2_14_X),
    .A3(sky130_fd_sc_hd__o31a_2_8_A3)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_13 (
    .B(sky130_fd_sc_hd__or3_2_0_X),
    .Y(sky130_fd_sc_hd__o32a_2_1_A3),
    .A(sky130_fd_sc_hd__or2_2_4_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_46 (
    .B(sky130_fd_sc_hd__nor2_2_46_B),
    .Y(sky130_fd_sc_hd__nor2_2_46_Y),
    .A(sky130_fd_sc_hd__nor2_2_46_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_24 (
    .B(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__nor2_2_24_Y),
    .A(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_35 (
    .B(sky130_fd_sc_hd__o32a_2_2_B1),
    .Y(sky130_fd_sc_hd__o32a_2_2_A3),
    .A(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_20 (
    .X(sky130_fd_sc_hd__a31o_2_20_X),
    .B1(sky130_fd_sc_hd__nand4_2_11_C),
    .A3(sky130_fd_sc_hd__and4b_2_2_X),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_5 (
    .A(sky130_fd_sc_hd__or4_2_3_A),
    .X(sky130_fd_sc_hd__and4_2_0_D),
    .B(sky130_fd_sc_hd__or4_2_3_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_8 (
    .Q(sky130_fd_sc_hd__nand4_2_3_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_5_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_8_CLK)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_7 (
    .A1(sky130_fd_sc_hd__inv_2_1_A),
    .B1(sky130_fd_sc_hd__or4_2_1_X),
    .A2(sky130_fd_sc_hd__o21a_2_7_A2),
    .X(sky130_fd_sc_hd__o21a_2_7_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_6 (
    .Y(sky130_fd_sc_hd__xnor2_2_6_Y),
    .A(sky130_fd_sc_hd__xnor2_2_6_A),
    .B(sky130_fd_sc_hd__a21o_2_6_X)
  );

  sky130_fd_sc_hd__o22ai_2 Xsky130_fd_sc_hd__o22ai_2_1 (
    .B2(sky130_fd_sc_hd__or2_2_5_A),
    .B1(sky130_fd_sc_hd__or3_2_3_X),
    .Y(sky130_fd_sc_hd__o22ai_2_1_Y),
    .A1(sky130_fd_sc_hd__or2_2_4_A),
    .A2(sky130_fd_sc_hd__nand2_2_5_Y)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_17 (
    .A1(sky130_fd_sc_hd__xor2_2_18_X),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__a22o_2_17_X),
    .B2(sky130_fd_sc_hd__xnor2_2_6_Y),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_1 (
    .X(sky130_fd_sc_hd__a31o_2_1_X),
    .B1(sky130_fd_sc_hd__nand4_2_0_C),
    .A3(sky130_fd_sc_hd__nor4_2_0_Y),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_18 (
    .Y(sky130_fd_sc_hd__a21o_2_8_A2),
    .A(sky130_fd_sc_hd__xnor2_2_8_A),
    .B(sky130_fd_sc_hd__xnor2_2_8_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_29 (
    .Y(sky130_fd_sc_hd__nand2_2_29_Y),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .B(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__o21ai_2 Xsky130_fd_sc_hd__o21ai_2_0 (
    .B1(sky130_fd_sc_hd__or4_2_0_A),
    .Y(sky130_fd_sc_hd__and3_2_3_C),
    .A2(sky130_fd_sc_hd__and3_2_1_X),
    .A1(sky130_fd_sc_hd__or3_2_4_B)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_7 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__nand4_2_7_Y),
    .D(sky130_fd_sc_hd__nor4_2_1_Y),
    .C(sky130_fd_sc_hd__nand4_2_7_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_16 (
    .X(sky130_fd_sc_hd__a21o_2_16_X),
    .B1(sky130_fd_sc_hd__or4_2_6_A),
    .A1(sky130_fd_sc_hd__inv_2_20_A),
    .A2(sky130_fd_sc_hd__nor2_2_45_Y)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_0 (
    .X(sky130_fd_sc_hd__a21o_2_0_X),
    .B1(sky130_fd_sc_hd__or4_2_1_A),
    .A1(sky130_fd_sc_hd__inv_2_1_A),
    .A2(sky130_fd_sc_hd__o21a_2_7_A2)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_1 (
    .B(sky130_fd_sc_hd__or2_2_1_B),
    .X(sky130_fd_sc_hd__or2_2_1_X),
    .A(sky130_fd_sc_hd__or2_2_1_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_7 (
    .B(sky130_fd_sc_hd__xor2_2_7_A),
    .Y(sky130_fd_sc_hd__or2_2_1_B),
    .A(sky130_fd_sc_hd__or4_2_4_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_15 (
    .B(sky130_fd_sc_hd__nand4_2_4_Y),
    .Y(sky130_fd_sc_hd__dfrtp_2_59_D),
    .A_N(sky130_fd_sc_hd__o21a_2_16_A1)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_9 (
    .X(sky130_fd_sc_hd__o31a_2_9_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__o31a_2_9_A2),
    .B1(sky130_fd_sc_hd__or3_2_16_X),
    .A3(sky130_fd_sc_hd__o31a_2_9_A3)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_14 (
    .B(sky130_fd_sc_hd__or4_2_3_D),
    .Y(sky130_fd_sc_hd__o21a_2_6_A2),
    .A(sky130_fd_sc_hd__or4_2_3_C)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_47 (
    .B(sky130_fd_sc_hd__or3_2_17_C),
    .Y(sky130_fd_sc_hd__o31a_2_9_A1),
    .A(sky130_fd_sc_hd__or3_2_17_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_25 (
    .B(sky130_fd_sc_hd__and3_2_2_B),
    .Y(sky130_fd_sc_hd__or3_2_5_A),
    .A(sky130_fd_sc_hd__xor2_2_0_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_36 (
    .B(sky130_fd_sc_hd__inv_2_13_Y),
    .Y(sky130_fd_sc_hd__or3_2_9_A),
    .A(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_21 (
    .X(sky130_fd_sc_hd__a31o_2_21_X),
    .B1(sky130_fd_sc_hd__nand4_2_13_C),
    .A3(sky130_fd_sc_hd__nand4_2_13_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_10 (
    .X(sky130_fd_sc_hd__and2b_2_9_B),
    .B1(sky130_fd_sc_hd__nor3_2_2_B),
    .A3(sky130_fd_sc_hd__and4_2_4_D),
    .A1(sky130_fd_sc_hd__and4_2_4_B),
    .A2(sky130_fd_sc_hd__inv_2_10_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_6 (
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .X(sky130_fd_sc_hd__nor3_2_1_C),
    .B(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_9 (
    .Q(sky130_fd_sc_hd__inv_2_3_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_6_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_0_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_8 (
    .A1(sky130_fd_sc_hd__o21a_2_8_A1),
    .B1(sky130_fd_sc_hd__a31o_2_2_X),
    .A2(sky130_fd_sc_hd__o21a_2_8_A2),
    .X(sky130_fd_sc_hd__o21a_2_8_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_7 (
    .Y(sky130_fd_sc_hd__or3_2_7_A),
    .A(sky130_fd_sc_hd__xor2_2_5_A),
    .B(sky130_fd_sc_hd__xor2_2_5_B)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_10 (
    .A(sky130_fd_sc_hd__or3_2_10_A),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_10_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_18 (
    .A1(sky130_fd_sc_hd__xnor2_2_22_Y),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__o31a_2_7_A3),
    .B2(sky130_fd_sc_hd__and2_2_8_X),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_2 (
    .X(sky130_fd_sc_hd__a31o_2_2_X),
    .B1(sky130_fd_sc_hd__nand4_2_2_C),
    .A3(sky130_fd_sc_hd__nand4_2_2_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_19 (
    .Y(sky130_fd_sc_hd__and2_2_8_A),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .B(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_0 (
    .A_N(sky130_fd_sc_hd__xor2_2_7_A),
    .C(sky130_fd_sc_hd__xor2_2_9_A),
    .B_N(sky130_fd_sc_hd__xor2_2_0_B),
    .X(sky130_fd_sc_hd__and4bb_2_0_X),
    .D(sky130_fd_sc_hd__xor2_2_4_A)
  );

  sky130_fd_sc_hd__o21ai_2 Xsky130_fd_sc_hd__o21ai_2_1 (
    .B1(sky130_fd_sc_hd__or4_2_0_X),
    .Y(sky130_fd_sc_hd__o21ai_2_1_Y),
    .A2(sky130_fd_sc_hd__o32a_2_0_X),
    .A1(sky130_fd_sc_hd__or2_2_5_A)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_8 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__nand4_2_8_Y),
    .D(sky130_fd_sc_hd__nand4_2_8_D),
    .C(sky130_fd_sc_hd__nand4_2_8_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_17 (
    .X(sky130_fd_sc_hd__a21o_2_17_X),
    .B1(sky130_fd_sc_hd__or2_2_9_B),
    .A1(sky130_fd_sc_hd__or2_2_9_A),
    .A2(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_1 (
    .X(sky130_fd_sc_hd__a21o_2_1_X),
    .B1(sky130_fd_sc_hd__or4_2_2_A),
    .A1(sky130_fd_sc_hd__inv_2_2_A),
    .A2(sky130_fd_sc_hd__o21a_2_9_A2)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_2 (
    .B(sky130_fd_sc_hd__or3_2_2_B),
    .X(sky130_fd_sc_hd__or3_2_3_C),
    .A(sky130_fd_sc_hd__or2_2_2_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_8 (
    .B(sky130_fd_sc_hd__or2_2_1_X),
    .Y(sky130_fd_sc_hd__or3_2_3_A),
    .A(sky130_fd_sc_hd__nor2_2_8_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_16 (
    .B(sky130_fd_sc_hd__nand4_2_9_Y),
    .Y(sky130_fd_sc_hd__dfrtp_2_66_D),
    .A_N(sky130_fd_sc_hd__o21a_2_21_A1)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_37 (
    .B(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__or3_2_9_C),
    .A(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_26 (
    .B(sky130_fd_sc_hd__or2_2_4_A),
    .Y(sky130_fd_sc_hd__nor2_2_26_Y),
    .A(sky130_fd_sc_hd__nor2_2_5_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_15 (
    .B(sky130_fd_sc_hd__or4_2_1_D),
    .Y(sky130_fd_sc_hd__o21a_2_7_A2),
    .A(sky130_fd_sc_hd__or4_2_1_C)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_48 (
    .B(sky130_fd_sc_hd__o21ba_2_1_X),
    .Y(sky130_fd_sc_hd__nor3_2_3_B),
    .A(sky130_fd_sc_hd__or4b_2_8_A)
  );

  sky130_fd_sc_hd__nand3b_2 Xsky130_fd_sc_hd__nand3b_2_0 (
    .Y(sky130_fd_sc_hd__and3_2_7_C),
    .C(sky130_fd_sc_hd__xor2_2_0_B),
    .A_N(sky130_fd_sc_hd__xor2_2_9_A),
    .B(sky130_fd_sc_hd__xor2_2_4_A)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_22 (
    .X(sky130_fd_sc_hd__a31o_2_22_X),
    .B1(sky130_fd_sc_hd__nand4_2_12_C),
    .A3(sky130_fd_sc_hd__nand4_2_12_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_11 (
    .X(sky130_fd_sc_hd__a31o_2_11_X),
    .B1(sky130_fd_sc_hd__inv_2_6_A),
    .A3(sky130_fd_sc_hd__mux2_1_7_X),
    .A1(sky130_fd_sc_hd__inv_2_9_A),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_7 (
    .A(sky130_fd_sc_hd__or2_2_9_A),
    .X(sky130_fd_sc_hd__and2_2_7_X),
    .B(sky130_fd_sc_hd__and2_2_7_B)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_9 (
    .A1(sky130_fd_sc_hd__inv_2_2_A),
    .B1(sky130_fd_sc_hd__or4_2_2_X),
    .A2(sky130_fd_sc_hd__o21a_2_9_A2),
    .X(sky130_fd_sc_hd__o21a_2_9_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_8 (
    .Y(sky130_fd_sc_hd__xor2_2_2_B),
    .A(sky130_fd_sc_hd__xnor2_2_8_A),
    .B(sky130_fd_sc_hd__xnor2_2_8_B)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_11 (
    .A(sky130_fd_sc_hd__or3_2_11_A),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_11_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_19 (
    .A1(sky130_fd_sc_hd__xor2_2_20_X),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__o31a_2_8_A3),
    .B2(sky130_fd_sc_hd__nor2_2_23_Y),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__a2111oi_2 Xsky130_fd_sc_hd__a2111oi_2_0 (
    .D1(sky130_fd_sc_hd__nor2_2_33_Y),
    .C1(sky130_fd_sc_hd__and3_2_17_C),
    .A2(sky130_fd_sc_hd__or2_2_9_B),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__a22o_2_13_A1),
    .B1(sky130_fd_sc_hd__or2_2_8_B)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_3 (
    .X(sky130_fd_sc_hd__a31o_2_3_X),
    .B1(sky130_fd_sc_hd__nand4_2_1_C),
    .A3(sky130_fd_sc_hd__nand4_2_1_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_1 (
    .A_N(sky130_fd_sc_hd__or4b_2_2_C),
    .C(sky130_fd_sc_hd__or4b_2_3_B),
    .B_N(sky130_fd_sc_hd__or4b_2_3_C),
    .X(sky130_fd_sc_hd__nand4_2_3_D),
    .D(sky130_fd_sc_hd__or4b_2_3_A)
  );

  sky130_fd_sc_hd__o21ai_2 Xsky130_fd_sc_hd__o21ai_2_2 (
    .B1(sky130_fd_sc_hd__or4_2_0_A),
    .Y(sky130_fd_sc_hd__o21ai_2_2_Y),
    .A2(sky130_fd_sc_hd__inv_2_0_Y),
    .A1(sky130_fd_sc_hd__or3_2_3_B)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_9 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__nand4_2_9_Y),
    .D(sky130_fd_sc_hd__nand4_2_9_D),
    .C(sky130_fd_sc_hd__nand4_2_9_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_18 (
    .X(sky130_fd_sc_hd__a21o_2_18_X),
    .B1(sky130_fd_sc_hd__or4_2_9_A),
    .A1(sky130_fd_sc_hd__inv_2_17_A),
    .A2(sky130_fd_sc_hd__nor2_2_41_Y)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_2 (
    .X(sky130_fd_sc_hd__a21o_2_2_X),
    .B1(sky130_fd_sc_hd__or4_2_3_A),
    .A1(sky130_fd_sc_hd__inv_2_3_A),
    .A2(sky130_fd_sc_hd__o21a_2_6_A2)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_3 (
    .B(sky130_fd_sc_hd__or3_2_2_B),
    .X(sky130_fd_sc_hd__or2_2_3_X),
    .A(sky130_fd_sc_hd__or2_2_4_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_9 (
    .B(sky130_fd_sc_hd__nor2_2_9_B),
    .Y(sky130_fd_sc_hd__inv_2_4_A),
    .A(sky130_fd_sc_hd__or2_2_1_B)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_17 (
    .B(sky130_fd_sc_hd__nand4_2_8_Y),
    .Y(sky130_fd_sc_hd__dfrtp_2_63_D),
    .A_N(sky130_fd_sc_hd__o21a_2_23_A1)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_38 (
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .Y(sky130_fd_sc_hd__or3_2_9_B),
    .A(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_27 (
    .B(sky130_fd_sc_hd__o21a_2_3_A2),
    .Y(sky130_fd_sc_hd__o32a_2_1_B1),
    .A(sky130_fd_sc_hd__nor2_2_3_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_16 (
    .B(sky130_fd_sc_hd__or4_2_2_D),
    .Y(sky130_fd_sc_hd__o21a_2_9_A2),
    .A(sky130_fd_sc_hd__or4_2_2_C)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_23 (
    .X(sky130_fd_sc_hd__a31o_2_23_X),
    .B1(sky130_fd_sc_hd__nand4_2_10_C),
    .A3(sky130_fd_sc_hd__nand4_2_10_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_12 (
    .X(sky130_fd_sc_hd__a31o_2_12_X),
    .B1(sky130_fd_sc_hd__inv_2_11_A),
    .A3(sky130_fd_sc_hd__a221o_2_1_X),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_8 (
    .A(sky130_fd_sc_hd__and2_2_8_A),
    .X(sky130_fd_sc_hd__and2_2_8_X),
    .B(sky130_fd_sc_hd__and2_2_8_B)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_9 (
    .Y(sky130_fd_sc_hd__or2_2_4_A),
    .A(sky130_fd_sc_hd__xor2_2_2_A),
    .B(sky130_fd_sc_hd__xor2_2_2_B)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_12 (
    .A(sky130_fd_sc_hd__or3_2_6_X),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_12_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_4 (
    .X(sky130_fd_sc_hd__a31o_2_4_X),
    .B1(sky130_fd_sc_hd__nand4_2_3_C),
    .A3(sky130_fd_sc_hd__nand4_2_3_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_2 (
    .A_N(sky130_fd_sc_hd__or4b_2_3_A),
    .C(sky130_fd_sc_hd__or4b_2_3_C),
    .B_N(sky130_fd_sc_hd__or4b_2_2_C),
    .X(sky130_fd_sc_hd__nand4_2_1_D),
    .D(sky130_fd_sc_hd__or4b_2_3_B)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_10 (
    .X(sky130_fd_sc_hd__clkbuf_8_10_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__o21ai_2 Xsky130_fd_sc_hd__o21ai_2_3 (
    .B1(sky130_fd_sc_hd__o21ai_2_3_B1),
    .Y(sky130_fd_sc_hd__o21ai_2_3_Y),
    .A2(sky130_fd_sc_hd__nor2_2_40_A),
    .A1(I)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_3 (
    .X(sky130_fd_sc_hd__a21o_2_3_X),
    .B1(sky130_fd_sc_hd__and3_2_3_X),
    .A1(sky130_fd_sc_hd__or2_2_5_A),
    .A2(sky130_fd_sc_hd__a21o_2_3_A2)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_4 (
    .B(sky130_fd_sc_hd__or2_2_4_B),
    .X(sky130_fd_sc_hd__or2_2_4_X),
    .A(sky130_fd_sc_hd__or2_2_4_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_18 (
    .B(sky130_fd_sc_hd__o21a_2_24_A2),
    .Y(sky130_fd_sc_hd__dfrtp_2_67_D),
    .A_N(sky130_fd_sc_hd__o21a_2_24_A1)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_17 (
    .B(sky130_fd_sc_hd__and3_2_2_C),
    .Y(sky130_fd_sc_hd__or3_2_5_B),
    .A(sky130_fd_sc_hd__and3_2_2_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_28 (
    .B(sky130_fd_sc_hd__and2_2_2_A),
    .Y(sky130_fd_sc_hd__or3_2_1_B),
    .A(sky130_fd_sc_hd__or3_2_3_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_39 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .Y(sky130_fd_sc_hd__nor2_2_39_Y),
    .A(sky130_fd_sc_hd__or2_2_10_A)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_13 (
    .X(sky130_fd_sc_hd__a31o_2_13_X),
    .B1(sky130_fd_sc_hd__or2_2_11_A),
    .A3(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__inv_2_9_A),
    .A2(sky130_fd_sc_hd__nor2_2_29_Y)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_24 (
    .X(sky130_fd_sc_hd__a31o_2_24_X),
    .B1(sky130_fd_sc_hd__nand4_2_9_C),
    .A3(sky130_fd_sc_hd__nand4_2_9_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_9 (
    .A(sky130_fd_sc_hd__and4_2_3_C),
    .X(sky130_fd_sc_hd__and4_2_4_B),
    .B(sky130_fd_sc_hd__nor3_2_2_A)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_13 (
    .A(sky130_fd_sc_hd__or3_2_13_A),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_13_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_5 (
    .X(sky130_fd_sc_hd__a31o_2_5_X),
    .B1(sky130_fd_sc_hd__xor2_2_5_X),
    .A3(sky130_fd_sc_hd__a31o_2_5_A3),
    .A1(sky130_fd_sc_hd__or2_2_5_A),
    .A2(sky130_fd_sc_hd__a31o_2_5_A2)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_20 (
    .Y(sky130_fd_sc_hd__xnor2_2_21_B),
    .A(sky130_fd_sc_hd__or2_2_12_A),
    .B(sky130_fd_sc_hd__xor2_2_20_A)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_3 (
    .A_N(sky130_fd_sc_hd__or4b_2_3_B),
    .C(sky130_fd_sc_hd__or4b_2_3_C),
    .B_N(sky130_fd_sc_hd__or4b_2_2_C),
    .X(sky130_fd_sc_hd__nand4_2_2_D),
    .D(sky130_fd_sc_hd__or4b_2_3_A)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_11 (
    .X(sky130_fd_sc_hd__clkbuf_8_11_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__o21ai_2 Xsky130_fd_sc_hd__o21ai_2_4 (
    .B1(sky130_fd_sc_hd__a211o_2_3_X),
    .Y(sky130_fd_sc_hd__o21ai_2_4_Y),
    .A2(sky130_fd_sc_hd__o32a_2_2_B2),
    .A1(sky130_fd_sc_hd__inv_2_12_Y)
  );

  sky130_fd_sc_hd__nand3_2 Xsky130_fd_sc_hd__nand3_2_0 (
    .A(sky130_fd_sc_hd__xor2_2_9_A),
    .Y(sky130_fd_sc_hd__nand3_2_0_Y),
    .B(sky130_fd_sc_hd__xor2_2_4_A),
    .C(sky130_fd_sc_hd__inv_2_5_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_0 (
    .S(sky130_fd_sc_hd__or4_2_0_A),
    .A1(sky130_fd_sc_hd__a31o_2_0_X),
    .A0(sky130_fd_sc_hd__o21a_2_3_X),
    .X(sky130_fd_sc_hd__mux2_1_0_X)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_4 (
    .X(sky130_fd_sc_hd__xor2_2_5_B),
    .B1(sky130_fd_sc_hd__a21oi_2_6_Y),
    .A1(sky130_fd_sc_hd__xnor2_2_4_A),
    .A2(sky130_fd_sc_hd__or3_2_5_B)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_5 (
    .B(sky130_fd_sc_hd__or3_2_1_B),
    .X(sky130_fd_sc_hd__or2_2_5_X),
    .A(sky130_fd_sc_hd__or2_2_5_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_19 (
    .B(sky130_fd_sc_hd__o21a_2_25_A2),
    .Y(sky130_fd_sc_hd__dfrtp_2_68_D),
    .A_N(sky130_fd_sc_hd__o21a_2_25_A1)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_0 (
    .X(sky130_fd_sc_hd__or2_2_0_B),
    .B(sky130_fd_sc_hd__nor2_2_9_B),
    .A_N(sky130_fd_sc_hd__xor2_2_3_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_18 (
    .B(sky130_fd_sc_hd__xor2_2_5_B),
    .Y(sky130_fd_sc_hd__nor2_2_20_A),
    .A(sky130_fd_sc_hd__xor2_2_5_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_29 (
    .B(sky130_fd_sc_hd__and3_2_7_C),
    .Y(sky130_fd_sc_hd__nor2_2_29_Y),
    .A(sky130_fd_sc_hd__xor2_2_7_A)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_14 (
    .X(sky130_fd_sc_hd__a31o_2_14_X),
    .B1(sky130_fd_sc_hd__a22o_2_4_X),
    .A3(sky130_fd_sc_hd__or2_2_12_X),
    .A1(sky130_fd_sc_hd__and2b_2_16_X),
    .A2(sky130_fd_sc_hd__nand2_2_38_Y)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_25 (
    .X(sky130_fd_sc_hd__a31o_2_25_X),
    .B1(sky130_fd_sc_hd__nand4_2_5_C),
    .A3(sky130_fd_sc_hd__nand4_2_5_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_14 (
    .A(sky130_fd_sc_hd__or3_2_14_A),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_14_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_6 (
    .X(sky130_fd_sc_hd__or3_2_11_A),
    .B1(sky130_fd_sc_hd__nor3_2_0_Y),
    .A3(sky130_fd_sc_hd__nor2_2_24_Y),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .A2(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_10 (
    .Y(sky130_fd_sc_hd__or4_2_0_B),
    .A(sky130_fd_sc_hd__xor2_2_6_A),
    .B(sky130_fd_sc_hd__xor2_2_6_B)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_21 (
    .Y(sky130_fd_sc_hd__xnor2_2_21_Y),
    .A(sky130_fd_sc_hd__a22o_2_4_B2),
    .B(sky130_fd_sc_hd__xnor2_2_21_B)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_4 (
    .A_N(sky130_fd_sc_hd__or2_2_9_B),
    .C(sky130_fd_sc_hd__or3b_2_0_A),
    .B_N(sky130_fd_sc_hd__or2_2_8_B),
    .X(sky130_fd_sc_hd__or3_2_14_A),
    .D(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_12 (
    .X(sky130_fd_sc_hd__dfxtp_2_2_CLK),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__o21ai_2 Xsky130_fd_sc_hd__o21ai_2_5 (
    .B1(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__o21ai_2_5_Y),
    .A2(sky130_fd_sc_hd__or2_2_9_B),
    .A1(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__nand3_2 Xsky130_fd_sc_hd__nand3_2_1 (
    .A(sky130_fd_sc_hd__or2_2_9_B),
    .Y(sky130_fd_sc_hd__nand3_2_1_Y),
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .C(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_1 (
    .S(sky130_fd_sc_hd__or3_2_3_B),
    .A1(sky130_fd_sc_hd__or4_2_0_C),
    .A0(sky130_fd_sc_hd__or3_2_0_X),
    .X(sky130_fd_sc_hd__mux2_1_1_X)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_5 (
    .X(sky130_fd_sc_hd__xor2_2_6_A),
    .B1(sky130_fd_sc_hd__nor2_2_21_A),
    .A1(sky130_fd_sc_hd__xor2_2_8_A),
    .A2(sky130_fd_sc_hd__xor2_2_8_B)
  );

  sky130_fd_sc_hd__o32ai_2 Xsky130_fd_sc_hd__o32ai_2_0 (
    .A1(sky130_fd_sc_hd__o31a_2_0_A1),
    .B1(sky130_fd_sc_hd__o32ai_2_0_B1),
    .A2(sky130_fd_sc_hd__o31a_2_0_A2),
    .A3(sky130_fd_sc_hd__and2_2_7_X),
    .Y(sky130_fd_sc_hd__o32ai_2_0_Y),
    .B2(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_6 (
    .B(sky130_fd_sc_hd__or2_2_6_B),
    .X(sky130_fd_sc_hd__or2_2_6_X),
    .A(sky130_fd_sc_hd__or3_2_1_C)
  );

  sky130_fd_sc_hd__o21ba_2 Xsky130_fd_sc_hd__o21ba_2_0 (
    .B1_N(sky130_fd_sc_hd__nor2_2_5_Y),
    .A1(sky130_fd_sc_hd__or2_2_4_A),
    .X(sky130_fd_sc_hd__o21ba_2_0_X),
    .A2(sky130_fd_sc_hd__nand2_2_9_Y)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_1 (
    .X(sky130_fd_sc_hd__and4_2_0_B),
    .B(sky130_fd_sc_hd__o21a_2_4_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_0_C)
  );

  sky130_fd_sc_hd__or4bb_2 Xsky130_fd_sc_hd__or4bb_2_0 (
    .A(sky130_fd_sc_hd__or4_2_4_A),
    .X(sky130_fd_sc_hd__or4bb_2_0_X),
    .B(sky130_fd_sc_hd__or4_2_4_C),
    .D_N(sky130_fd_sc_hd__or4_2_4_B),
    .C_N(sky130_fd_sc_hd__or4_2_4_D)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_19 (
    .B(sky130_fd_sc_hd__xnor2_2_8_B),
    .Y(sky130_fd_sc_hd__nor2_2_19_Y),
    .A(sky130_fd_sc_hd__xnor2_2_8_A)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_15 (
    .X(sky130_fd_sc_hd__a31o_2_15_X),
    .B1(sky130_fd_sc_hd__a22oi_2_0_Y),
    .A3(sky130_fd_sc_hd__nand2_2_29_Y),
    .A1(sky130_fd_sc_hd__or2_2_9_B),
    .A2(sky130_fd_sc_hd__inv_2_13_Y)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_10 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__o21a_2_28_A2),
    .D(sky130_fd_sc_hd__nand4_2_10_D),
    .C(sky130_fd_sc_hd__nand4_2_10_C)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_15 (
    .A(sky130_fd_sc_hd__or3_2_15_A),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_15_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_7 (
    .X(sky130_fd_sc_hd__a31o_2_7_X),
    .B1(sky130_fd_sc_hd__or3_2_5_B),
    .A3(sky130_fd_sc_hd__xor2_2_4_A),
    .A1(sky130_fd_sc_hd__xor2_2_0_B),
    .A2(sky130_fd_sc_hd__xor2_2_9_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_22 (
    .Y(sky130_fd_sc_hd__xnor2_2_22_Y),
    .A(sky130_fd_sc_hd__or2_2_12_A),
    .B(sky130_fd_sc_hd__o21ai_2_4_Y)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_11 (
    .Y(sky130_fd_sc_hd__xnor2_2_11_Y),
    .A(sky130_fd_sc_hd__and4_2_3_C),
    .B(sky130_fd_sc_hd__xnor2_2_11_B)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_5 (
    .A_N(sky130_fd_sc_hd__and4_2_3_B),
    .C(sky130_fd_sc_hd__nor3_2_2_B),
    .B_N(sky130_fd_sc_hd__or3_2_8_C),
    .X(sky130_fd_sc_hd__and3_2_10_A),
    .D(sky130_fd_sc_hd__or3_2_8_B)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_13 (
    .X(sky130_fd_sc_hd__clkbuf_4_9_A),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__nor3b_2 Xsky130_fd_sc_hd__nor3b_2_0 (
    .C_N(sky130_fd_sc_hd__nor2_2_40_A),
    .Y(sky130_fd_sc_hd__o22a_2_3_B1),
    .A(sky130_fd_sc_hd__inv_2_7_A),
    .B(sky130_fd_sc_hd__nor3b_2_0_B)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_2 (
    .S(sky130_fd_sc_hd__or4_2_0_A),
    .A1(sky130_fd_sc_hd__a22o_2_0_X),
    .A0(sky130_fd_sc_hd__or2_2_6_X),
    .X(sky130_fd_sc_hd__mux2_1_2_X)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_6 (
    .X(sky130_fd_sc_hd__a21o_2_6_X),
    .B1(sky130_fd_sc_hd__or2_2_9_A),
    .A1(sky130_fd_sc_hd__and2_2_7_B),
    .A2(sky130_fd_sc_hd__a21o_2_6_A2)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_7 (
    .B(I),
    .X(sky130_fd_sc_hd__or2_2_7_X),
    .A(sky130_fd_sc_hd__or2_2_7_A)
  );

  sky130_fd_sc_hd__o21ba_2 Xsky130_fd_sc_hd__o21ba_2_1 (
    .B1_N(sky130_fd_sc_hd__or4b_2_8_C),
    .A1(success),
    .X(sky130_fd_sc_hd__o21ba_2_1_X),
    .A2(sky130_fd_sc_hd__a32o_2_3_B1)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_2 (
    .X(sky130_fd_sc_hd__and4_2_0_C),
    .B(sky130_fd_sc_hd__o21a_2_5_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_3_C)
  );

  sky130_fd_sc_hd__o31ai_2 Xsky130_fd_sc_hd__o31ai_2_0 (
    .A1(sky130_fd_sc_hd__or2_2_4_A),
    .Y(sky130_fd_sc_hd__o32a_2_1_B2),
    .B1(sky130_fd_sc_hd__or4_2_0_A),
    .A3(sky130_fd_sc_hd__inv_2_0_Y),
    .A2(sky130_fd_sc_hd__or3_2_2_C)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_16 (
    .X(sky130_fd_sc_hd__a31o_2_16_X),
    .B1(sky130_fd_sc_hd__nand4_2_6_C),
    .A3(sky130_fd_sc_hd__nand4_2_6_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_11 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__o21a_2_24_A2),
    .D(sky130_fd_sc_hd__and4b_2_2_X),
    .C(sky130_fd_sc_hd__nand4_2_11_C)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_16 (
    .A(sky130_fd_sc_hd__or3_2_16_A),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_16_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_8 (
    .X(sky130_fd_sc_hd__a31o_2_8_X),
    .B1(sky130_fd_sc_hd__xor2_2_0_B),
    .A3(sky130_fd_sc_hd__xor2_2_7_A),
    .A1(sky130_fd_sc_hd__inv_2_9_A),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_23 (
    .Y(sky130_fd_sc_hd__or2_2_12_B),
    .A(sky130_fd_sc_hd__a22o_2_4_B2),
    .B(sky130_fd_sc_hd__xnor2_2_26_A)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_6 (
    .A_N(sky130_fd_sc_hd__or4_2_4_A),
    .C(sky130_fd_sc_hd__or4_2_4_D),
    .B_N(sky130_fd_sc_hd__or4_2_4_C),
    .X(sky130_fd_sc_hd__inv_2_9_A),
    .D(sky130_fd_sc_hd__or4_2_4_B)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_12 (
    .Y(sky130_fd_sc_hd__nor2_2_31_B),
    .A(sky130_fd_sc_hd__or4_2_4_A),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_14 (
    .X(sky130_fd_sc_hd__dfxtp_2_3_CLK),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__nor3b_2 Xsky130_fd_sc_hd__nor3b_2_1 (
    .C_N(sky130_fd_sc_hd__or2_2_9_A),
    .Y(sky130_fd_sc_hd__o31a_2_2_A3),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .B(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_0 (
    .X(sky130_fd_sc_hd__clkbuf_8_0_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_3 (
    .S(sky130_fd_sc_hd__or2_2_5_A),
    .A1(sky130_fd_sc_hd__mux2_1_0_X),
    .A0(sky130_fd_sc_hd__o32a_2_1_X),
    .X(sky130_fd_sc_hd__mux2_1_3_X)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_7 (
    .X(sky130_fd_sc_hd__or3_2_10_A),
    .B1(sky130_fd_sc_hd__or3_2_6_C),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .A2(sky130_fd_sc_hd__nor2_2_24_Y)
  );

endmodule
