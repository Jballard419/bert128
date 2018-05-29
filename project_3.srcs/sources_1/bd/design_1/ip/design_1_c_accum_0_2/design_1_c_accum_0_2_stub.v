// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Apr 27 13:21:42 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_c_accum_0_2 -prefix
//               design_1_c_accum_0_2_ design_1_c_accum_0_0_stub.v
// Design      : design_1_c_accum_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_accum_v12_0_12,Vivado 2018.1" *)
module design_1_c_accum_0_2(B, CLK, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="B[0:0],CLK,SCLR,Q[31:0]" */;
  input [0:0]B;
  input CLK;
  input SCLR;
  output [31:0]Q;
endmodule
