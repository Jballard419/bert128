// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed May 23 17:57:07 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_CDR_state_machine_0_0/design_1_CDR_state_machine_0_0_sim_netlist.v
// Design      : design_1_CDR_state_machine_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_CDR_state_machine_0_0,CDR_state_machine,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "CDR_state_machine,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_CDR_state_machine_0_0
   (d_in,
    clk,
    rst,
    dv,
    d_out,
    d_write);
  input [1:0]d_in;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_second_clk" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  input [1:0]dv;
  output [1:0]d_out;
  output d_write;

  wire clk;
  wire [1:0]d_in;
  wire [1:0]d_out;
  wire d_write;
  wire [1:0]dv;
  wire rst;

  design_1_CDR_state_machine_0_0_CDR_state_machine U0
       (.clk(clk),
        .d_in(d_in),
        .d_out(d_out),
        .d_write(d_write),
        .dv(dv),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "CDR_state_machine" *) 
module design_1_CDR_state_machine_0_0_CDR_state_machine
   (d_out,
    d_write,
    clk,
    rst,
    d_in,
    dv);
  output [1:0]d_out;
  output d_write;
  input clk;
  input rst;
  input [1:0]d_in;
  input [1:0]dv;

  wire clk;
  wire [1:0]d_in;
  wire [1:0]d_out;
  wire d_write;
  wire [1:0]dv;
  wire en_i_1_n_0;
  wire held;
  wire held_i_1_n_0;
  wire \output[0]_i_1_n_0 ;
  wire \output[1]_i_1_n_0 ;
  wire rst;
  wire s;
  wire s_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    en_i_1
       (.I0(s),
        .I1(dv[0]),
        .I2(dv[1]),
        .O(en_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    en_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(en_i_1_n_0),
        .Q(d_write));
  LUT6 #(
    .INIT(64'hAFFF0C00A0000C00)) 
    held_i_1
       (.I0(d_in[1]),
        .I1(d_in[0]),
        .I2(dv[1]),
        .I3(dv[0]),
        .I4(s),
        .I5(held),
        .O(held_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    held_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(held_i_1_n_0),
        .Q(held));
  LUT6 #(
    .INIT(64'hAAFFC000AA00C000)) 
    \output[0]_i_1 
       (.I0(d_in[0]),
        .I1(dv[1]),
        .I2(d_in[1]),
        .I3(dv[0]),
        .I4(s),
        .I5(d_out[0]),
        .O(\output[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFC0FFAA00C0FF)) 
    \output[1]_i_1 
       (.I0(held),
        .I1(d_in[0]),
        .I2(dv[1]),
        .I3(dv[0]),
        .I4(s),
        .I5(d_out[1]),
        .O(\output[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \output_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\output[0]_i_1_n_0 ),
        .Q(d_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\output[1]_i_1_n_0 ),
        .Q(d_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    s_i_1
       (.I0(dv[1]),
        .I1(dv[0]),
        .I2(s),
        .O(s_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    s_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(s_i_1_n_0),
        .Q(s));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
