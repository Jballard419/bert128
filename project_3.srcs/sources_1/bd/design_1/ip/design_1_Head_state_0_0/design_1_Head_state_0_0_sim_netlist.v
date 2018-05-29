// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed May 23 17:59:14 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_Head_state_0_0/design_1_Head_state_0_0_sim_netlist.v
// Design      : design_1_Head_state_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Head_state_0_0,Head_state,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Head_state,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_Head_state_0_0
   (d_in,
    clk,
    rst,
    en,
    d_out,
    go,
    Failed);
  input [1:0]d_in;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_second_clk" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  input en;
  output [1:0]d_out;
  output go;
  output Failed;

  wire Failed;
  wire clk;
  wire [1:0]d_in;
  wire [1:0]d_out;
  wire en;
  wire go;
  wire rst;

  design_1_Head_state_0_0_Head_state U0
       (.Failed(Failed),
        .clk(clk),
        .d_in(d_in),
        .d_out(d_out),
        .en(en),
        .go(go),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "Head_state" *) 
module design_1_Head_state_0_0_Head_state
   (d_out,
    go,
    Failed,
    en,
    d_in,
    clk,
    rst);
  output [1:0]d_out;
  output go;
  output Failed;
  input en;
  input [1:0]d_in;
  input clk;
  input rst;

  wire \FSM_sequential_STATE[0]_i_1_n_0 ;
  wire \FSM_sequential_STATE[1]_i_1_n_0 ;
  wire \FSM_sequential_STATE[2]_i_1_n_0 ;
  wire \FSM_sequential_STATE[3]_i_1_n_0 ;
  wire \FSM_sequential_STATE[3]_i_2_n_0 ;
  wire Failed;
  wire Failed_i_1_n_0;
  (* RTL_KEEP = "yes" *) wire [3:0]STATE__0;
  wire clk;
  wire [1:0]d_in;
  wire [1:0]d_out;
  wire en;
  wire go;
  wire held_i_1_n_0;
  wire held_i_2_n_0;
  wire held_reg_n_0;
  wire rst;
  wire \temp_array[0][1]_i_1_n_0 ;
  wire [1:0]\temp_array[0]_0 ;
  wire [1:0]\temp_array_reg[0] ;
  wire [1:0]\temp_array_reg[1] ;
  wire [1:0]\temp_array_reg[2] ;
  wire \temp_array_reg_n_0_[3][0] ;
  wire \temp_array_reg_n_0_[3][1] ;
  wire \temp_d_out[0]_i_1_n_0 ;
  wire \temp_d_out[1]_i_1_n_0 ;
  wire \temp_d_out[1]_i_2_n_0 ;
  wire temp_go_i_1_n_0;

  LUT6 #(
    .INIT(64'hAA00AA00AF41AA00)) 
    \FSM_sequential_STATE[0]_i_1 
       (.I0(STATE__0[3]),
        .I1(STATE__0[1]),
        .I2(STATE__0[2]),
        .I3(d_in[1]),
        .I4(d_in[0]),
        .I5(STATE__0[0]),
        .O(\FSM_sequential_STATE[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44441554EAEEEFEE)) 
    \FSM_sequential_STATE[1]_i_1 
       (.I0(STATE__0[3]),
        .I1(STATE__0[1]),
        .I2(STATE__0[2]),
        .I3(STATE__0[0]),
        .I4(d_in[0]),
        .I5(d_in[1]),
        .O(\FSM_sequential_STATE[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004083024)) 
    \FSM_sequential_STATE[2]_i_1 
       (.I0(STATE__0[0]),
        .I1(d_in[0]),
        .I2(d_in[1]),
        .I3(STATE__0[2]),
        .I4(STATE__0[1]),
        .I5(STATE__0[3]),
        .O(\FSM_sequential_STATE[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2220222A)) 
    \FSM_sequential_STATE[3]_i_1 
       (.I0(en),
        .I1(STATE__0[3]),
        .I2(STATE__0[0]),
        .I3(STATE__0[1]),
        .I4(STATE__0[2]),
        .O(\FSM_sequential_STATE[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFEFBFAAAAAAAA)) 
    \FSM_sequential_STATE[3]_i_2 
       (.I0(STATE__0[3]),
        .I1(d_in[1]),
        .I2(d_in[0]),
        .I3(STATE__0[0]),
        .I4(STATE__0[2]),
        .I5(STATE__0[1]),
        .O(\FSM_sequential_STATE[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:1001,iSTATE0:0111,iSTATE1:0110,iSTATE2:1000,iSTATE3:0101,iSTATE4:0011,iSTATE5:0100,iSTATE6:0010,iSTATE7:1010,iSTATE8:0001,iSTATE9:0000" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_STATE_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_STATE[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_sequential_STATE[0]_i_1_n_0 ),
        .Q(STATE__0[0]));
  (* FSM_ENCODED_STATES = "iSTATE:1001,iSTATE0:0111,iSTATE1:0110,iSTATE2:1000,iSTATE3:0101,iSTATE4:0011,iSTATE5:0100,iSTATE6:0010,iSTATE7:1010,iSTATE8:0001,iSTATE9:0000" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_STATE_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_STATE[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_sequential_STATE[1]_i_1_n_0 ),
        .Q(STATE__0[1]));
  (* FSM_ENCODED_STATES = "iSTATE:1001,iSTATE0:0111,iSTATE1:0110,iSTATE2:1000,iSTATE3:0101,iSTATE4:0011,iSTATE5:0100,iSTATE6:0010,iSTATE7:1010,iSTATE8:0001,iSTATE9:0000" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_STATE_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_STATE[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_sequential_STATE[2]_i_1_n_0 ),
        .Q(STATE__0[2]));
  (* FSM_ENCODED_STATES = "iSTATE:1001,iSTATE0:0111,iSTATE1:0110,iSTATE2:1000,iSTATE3:0101,iSTATE4:0011,iSTATE5:0100,iSTATE6:0010,iSTATE7:1010,iSTATE8:0001,iSTATE9:0000" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_STATE_reg[3] 
       (.C(clk),
        .CE(\FSM_sequential_STATE[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_sequential_STATE[3]_i_2_n_0 ),
        .Q(STATE__0[3]));
  LUT5 #(
    .INIT(32'hFFFFA800)) 
    Failed_i_1
       (.I0(STATE__0[3]),
        .I1(STATE__0[2]),
        .I2(STATE__0[1]),
        .I3(en),
        .I4(Failed),
        .O(Failed_i_1_n_0));
  FDCE Failed_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(Failed_i_1_n_0),
        .Q(Failed));
  LUT4 #(
    .INIT(16'hFB08)) 
    held_i_1
       (.I0(d_in[0]),
        .I1(held_i_2_n_0),
        .I2(rst),
        .I3(held_reg_n_0),
        .O(held_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000A800)) 
    held_i_2
       (.I0(en),
        .I1(d_in[1]),
        .I2(STATE__0[0]),
        .I3(STATE__0[3]),
        .I4(STATE__0[2]),
        .I5(STATE__0[1]),
        .O(held_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    held_reg
       (.C(clk),
        .CE(1'b1),
        .D(held_i_1_n_0),
        .Q(held_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_array[0][0]_i_1 
       (.I0(d_in[1]),
        .I1(STATE__0[0]),
        .I2(d_in[0]),
        .O(\temp_array[0]_0 [0]));
  LUT5 #(
    .INIT(32'h00000280)) 
    \temp_array[0][1]_i_1 
       (.I0(en),
        .I1(STATE__0[0]),
        .I2(STATE__0[3]),
        .I3(STATE__0[2]),
        .I4(STATE__0[1]),
        .O(\temp_array[0][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_array[0][1]_i_2 
       (.I0(held_reg_n_0),
        .I1(STATE__0[0]),
        .I2(d_in[1]),
        .O(\temp_array[0]_0 [1]));
  FDPE \temp_array_reg[0][0] 
       (.C(clk),
        .CE(\temp_array[0][1]_i_1_n_0 ),
        .D(\temp_array[0]_0 [0]),
        .PRE(rst),
        .Q(\temp_array_reg[0] [0]));
  FDCE \temp_array_reg[0][1] 
       (.C(clk),
        .CE(\temp_array[0][1]_i_1_n_0 ),
        .CLR(rst),
        .D(\temp_array[0]_0 [1]),
        .Q(\temp_array_reg[0] [1]));
  FDPE \temp_array_reg[1][0] 
       (.C(clk),
        .CE(\temp_array[0][1]_i_1_n_0 ),
        .D(\temp_array_reg[0] [0]),
        .PRE(rst),
        .Q(\temp_array_reg[1] [0]));
  FDPE \temp_array_reg[1][1] 
       (.C(clk),
        .CE(\temp_array[0][1]_i_1_n_0 ),
        .D(\temp_array_reg[0] [1]),
        .PRE(rst),
        .Q(\temp_array_reg[1] [1]));
  FDCE \temp_array_reg[2][0] 
       (.C(clk),
        .CE(\temp_array[0][1]_i_1_n_0 ),
        .CLR(rst),
        .D(\temp_array_reg[1] [0]),
        .Q(\temp_array_reg[2] [0]));
  FDCE \temp_array_reg[2][1] 
       (.C(clk),
        .CE(\temp_array[0][1]_i_1_n_0 ),
        .CLR(rst),
        .D(\temp_array_reg[1] [1]),
        .Q(\temp_array_reg[2] [1]));
  FDPE \temp_array_reg[3][0] 
       (.C(clk),
        .CE(\temp_array[0][1]_i_1_n_0 ),
        .D(\temp_array_reg[2] [0]),
        .PRE(rst),
        .Q(\temp_array_reg_n_0_[3][0] ));
  FDPE \temp_array_reg[3][1] 
       (.C(clk),
        .CE(\temp_array[0][1]_i_1_n_0 ),
        .D(\temp_array_reg[2] [1]),
        .PRE(rst),
        .Q(\temp_array_reg_n_0_[3][1] ));
  LUT6 #(
    .INIT(64'h1500FFFF15000000)) 
    \temp_d_out[0]_i_1 
       (.I0(STATE__0[1]),
        .I1(STATE__0[2]),
        .I2(STATE__0[3]),
        .I3(\temp_array_reg_n_0_[3][0] ),
        .I4(\temp_d_out[1]_i_2_n_0 ),
        .I5(d_out[0]),
        .O(\temp_d_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1500FFFF15000000)) 
    \temp_d_out[1]_i_1 
       (.I0(STATE__0[1]),
        .I1(STATE__0[2]),
        .I2(STATE__0[3]),
        .I3(\temp_array_reg_n_0_[3][1] ),
        .I4(\temp_d_out[1]_i_2_n_0 ),
        .I5(d_out[1]),
        .O(\temp_d_out[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \temp_d_out[1]_i_2 
       (.I0(en),
        .I1(STATE__0[2]),
        .I2(STATE__0[1]),
        .I3(STATE__0[0]),
        .I4(STATE__0[3]),
        .O(\temp_d_out[1]_i_2_n_0 ));
  FDCE \temp_d_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\temp_d_out[0]_i_1_n_0 ),
        .Q(d_out[0]));
  FDCE \temp_d_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\temp_d_out[1]_i_1_n_0 ),
        .Q(d_out[1]));
  LUT6 #(
    .INIT(64'h11FF000010020000)) 
    temp_go_i_1
       (.I0(STATE__0[2]),
        .I1(STATE__0[1]),
        .I2(STATE__0[0]),
        .I3(STATE__0[3]),
        .I4(en),
        .I5(go),
        .O(temp_go_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    temp_go_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(temp_go_i_1_n_0),
        .Q(go));
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
