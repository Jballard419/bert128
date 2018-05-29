// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Apr 27 13:30:43 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_fifo_generator_0_1 -prefix
//               design_1_fifo_generator_0_1_ design_1_fifo_generator_0_0_stub.v
// Design      : design_1_fifo_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_2,Vivado 2018.1" *)
module design_1_fifo_generator_0_1(clk, srst, din, wr_en, rd_en, dout, full, empty, 
  wr_data_count)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[1:0],wr_en,rd_en,dout[0:0],full,empty,wr_data_count[15:0]" */;
  input clk;
  input srst;
  input [1:0]din;
  input wr_en;
  input rd_en;
  output [0:0]dout;
  output full;
  output empty;
  output [15:0]wr_data_count;
endmodule
