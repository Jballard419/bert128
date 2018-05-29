// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon May 14 15:14:01 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_os48_1011x20bTo10b_top2_0_0/design_1_os48_1011x20bTo10b_top2_0_0_stub.v
// Design      : design_1_os48_1011x20bTo10b_top2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "os48_1011x20bTo10b_top2,Vivado 2018.1" *)
module design_1_os48_1011x20bTo10b_top2_0_0(rst, bitOrderDinLSB, bitOrderDoutLSB, A_recclk, 
  A_en, A_din20b, A_dout10bEn, A_dout10b, A_dout20bEn, A_dout20b, B_recclk, B_en, B_mode, B_din20b, 
  B_dout10bEn, B_dout10b, B_dout20bEn, B_dout20b)
/* synthesis syn_black_box black_box_pad_pin="rst,bitOrderDinLSB,bitOrderDoutLSB,A_recclk,A_en,A_din20b[19:0],A_dout10bEn,A_dout10b[9:0],A_dout20bEn,A_dout20b[19:0],B_recclk,B_en,B_mode[1:0],B_din20b[19:0],B_dout10bEn,B_dout10b[9:0],B_dout20bEn,B_dout20b[19:0]" */;
  input rst;
  input bitOrderDinLSB;
  input bitOrderDoutLSB;
  input A_recclk;
  input A_en;
  input [19:0]A_din20b;
  output A_dout10bEn;
  output [9:0]A_dout10b;
  output A_dout20bEn;
  output [19:0]A_dout20b;
  input B_recclk;
  input B_en;
  input [1:0]B_mode;
  input [19:0]B_din20b;
  output B_dout10bEn;
  output [9:0]B_dout10b;
  output B_dout20bEn;
  output [19:0]B_dout20b;
endmodule
