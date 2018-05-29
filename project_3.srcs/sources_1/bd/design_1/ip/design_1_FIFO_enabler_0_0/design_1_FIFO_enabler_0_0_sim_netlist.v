// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Apr 27 13:17:00 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_FIFO_enabler_0_0/design_1_FIFO_enabler_0_0_sim_netlist.v
// Design      : design_1_FIFO_enabler_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_FIFO_enabler_0_0,FIFO_enabler,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "FIFO_enabler,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_FIFO_enabler_0_0
   (d_write,
    tc,
    gpio,
    isreading,
    wr_en);
  input d_write;
  input tc;
  input gpio;
  input isreading;
  output wr_en;

  wire d_write;
  wire gpio;
  wire isreading;
  wire tc;
  wire wr_en;

  design_1_FIFO_enabler_0_0_FIFO_enabler U0
       (.d_write(d_write),
        .gpio(gpio),
        .isreading(isreading),
        .tc(tc),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "FIFO_enabler" *) 
module design_1_FIFO_enabler_0_0_FIFO_enabler
   (wr_en,
    d_write,
    isreading,
    tc,
    gpio);
  output wr_en;
  input d_write;
  input isreading;
  input tc;
  input gpio;

  wire d_write;
  wire gpio;
  wire isreading;
  wire tc;
  wire wr_en;

  LUT4 #(
    .INIT(16'h0002)) 
    wr_en__0
       (.I0(d_write),
        .I1(isreading),
        .I2(tc),
        .I3(gpio),
        .O(wr_en));
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
