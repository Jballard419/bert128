// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed May 23 17:59:08 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fifo_filled_lock_0_0_sim_netlist.v
// Design      : design_1_fifo_filled_lock_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fifo_filled_lock_0_0,fifo_filled_lock,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_filled_lock,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    data_in,
    test);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_second_clk" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  input [15:0]data_in;
  output test;

  wire clk;
  wire [15:0]data_in;
  wire rst;
  wire test;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_filled_lock U0
       (.clk(clk),
        .data_in(data_in),
        .rst(rst),
        .test(test));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_filled_lock
   (test,
    data_in,
    rst,
    clk);
  output test;
  input [15:0]data_in;
  input rst;
  input clk;

  wire clk;
  wire [15:0]data_in;
  wire rst;
  wire temp_i_1_n_0;
  wire temp_i_2_n_0;
  wire temp_i_3_n_0;
  wire temp_i_4_n_0;
  wire test;

  LUT5 #(
    .INIT(32'h0000EAAA)) 
    temp_i_1
       (.I0(test),
        .I1(temp_i_2_n_0),
        .I2(temp_i_3_n_0),
        .I3(temp_i_4_n_0),
        .I4(rst),
        .O(temp_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    temp_i_2
       (.I0(data_in[12]),
        .I1(data_in[13]),
        .I2(data_in[11]),
        .I3(data_in[10]),
        .I4(data_in[15]),
        .I5(data_in[14]),
        .O(temp_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    temp_i_3
       (.I0(data_in[1]),
        .I1(data_in[0]),
        .I2(data_in[3]),
        .I3(data_in[2]),
        .O(temp_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    temp_i_4
       (.I0(data_in[6]),
        .I1(data_in[7]),
        .I2(data_in[4]),
        .I3(data_in[5]),
        .I4(data_in[9]),
        .I5(data_in[8]),
        .O(temp_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    temp_reg
       (.C(clk),
        .CE(1'b1),
        .D(temp_i_1_n_0),
        .Q(test),
        .R(1'b0));
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
