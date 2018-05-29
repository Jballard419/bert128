// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu May 17 14:02:37 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_Buffer_help_0_0/design_1_Buffer_help_0_0_stub.v
// Design      : design_1_Buffer_help_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Buffer_help,Vivado 2018.1" *)
module design_1_Buffer_help_0_0(PAD_din_p, PAD_din_n, clk0, ref_clk, rdy, 
  sdat_0_dly, sdatb_45_dly)
/* synthesis syn_black_box black_box_pad_pin="PAD_din_p,PAD_din_n,clk0,ref_clk,rdy,sdat_0_dly,sdatb_45_dly" */;
  input PAD_din_p;
  input PAD_din_n;
  input clk0;
  input ref_clk;
  output rdy;
  output sdat_0_dly;
  output sdatb_45_dly;
endmodule
