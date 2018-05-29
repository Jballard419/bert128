// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Apr 27 13:21:42 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_accum_0_2 -prefix
//               design_1_c_accum_0_2_ design_1_c_accum_0_0_sim_netlist.v
// Design      : design_1_c_accum_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_accum_0_0,c_accum_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_c_accum_0_2
   (B,
    CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [0:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_ublaze_clk" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire [0:0]B;
  wire CLK;
  wire [31:0]Q;
  wire SCLR;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCALE = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_accum_0_2_c_accum_v12_0_12 U0
       (.ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_TYPE = "1" *) (* C_B_WIDTH = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) (* C_OUT_WIDTH = "32" *) 
(* C_SCALE = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_accum_0_2_c_accum_v12_0_12
   (B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [0:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output [31:0]Q;

  wire [0:0]B;
  wire CLK;
  wire [31:0]Q;
  wire SCLR;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCALE = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_accum_0_2_c_accum_v12_0_12_viv i_synth
       (.ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
grS9EZV4yNbYQZncfSqmUI4dYRRVTcVRELAX4nPjii7lwN5d5ZUjhPs7a5IYigS/ky1DzWE1fWy7
AjIqW930kw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ou5XIbgAGlh6oPVWPBlGY2Z/SzvqKNguigprpy6KSdo/hskR9rNYfPdraYifhDGLKx6hfVxG0XdS
0wMf+8xRxS0xJyLm8eW4Yq4l+ipme1pLPBHW+VmJaEwI7jlaFgQDzvIll493kGtMGDSbrYvk5AIp
3qdYKSjDgLll7MVYoHQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XHy2BllO9y4HAMwLIC+bKAiW+Vlu8l0PFqKXcG8Lz9QqpZ3KQ96DFc1y3X8PnHig6yY28ybQsTNg
VBxdOMKwYIi41VFx9ic7lubvV/yB/x4sevutPIw3vYO+k3qPW2J7aTF4Ju75JeA2Dyqq4uekjyuf
t/5lVAiNwMIQXMiFx37LEkKVK4cVRATL5dskKYBl5K/ap10m7jJ4R4hYMdQCAfrnVjruNtDJvpZ8
VjfgkeHdPk/SMh6eUTw4CtkHPw/YytKI8pst9Xp45WxG/rgAP1HDKJtVPuget3qarLhx/PD6HnuD
IHDT0DI+TQDswAx29pTiwazZjucHu62jIYEmCQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
c0GUM1RmWUPQj6S4TiLULkTDzgEV4SOgGSznNOgmvAVNc/zUF6oNIBTx2jD1eEqbDSn7XRGP4N6O
SeBChnI67Y8BC7xfDjTBLlRjlF4/PJJe00l19V9QAi6HikAlUAojZ2Hr9vxtvjNK4xN+lAbas2Uc
afMlP6O7frrOapgce1Kw4alDhDioYnN5Htakvums735szHgyHYiw4fXM4Ec7G4gYMAiaH3Xjb/R6
Gqtg8hzpMNpGmM0PQoTjn9MwVfbeG+9ErLREHfYW8+gB1bidbEoJofpxPlYep0fC9od4J+wwk119
AfRfYD5WQlJFWEg/b5GPE9zcwwUN7esd3Sw5MA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OIUSCJ/7wFoDfhCtdlhzH4WnBhpy4qIrwv92ifMJo+vPJ32a9jTuPaHZB4p/klqI2rUZTCMlhkKE
vzPFwugpDSAeUYNmIJcSVBvjPrgnU5efjbu01Ic+aszn+/MBHZ65EsPrWSuucQ5ih34r4bUcL79n
+6dy3kWK4EDD1oKUkKiypnY2v/o6cJ1uWLnGHiRsyllK2T2O/1oMCCJOKWkKaAVkZeXDyqVWdnQb
GKGz6TCPlBmu33fs34mUIFAaCA/eLDl9f3wiWCRml+a7LdnQjXV5vkzAPai/ruL4I5LyNvQNRUsL
90Z0HlR95+TISTwBtx1fbn6nToHsdWg6gt4WUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
llARSE2M36OSbx/+q+a6/Czv2Lo0rKypUCn+ihIF5fRahidNC1kZpSqvWs3+yc3LCftcQwht3/RL
7cqDprjgnWv9JzG22Re6JuF9JSIcuIRXjRCNiSAfEfXL2xMl76vrQC71vfjMS3hd34HaUa4HvX92
jxXADM6m7REToOtDOrk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
goIYRekshtuNHRnAprPDX1zBacBVvpgtJHG+y/7kmHWlIHneOiFhrl28fdD/3jOH2OQGWspqbWN3
iAkbHOZqRR4YVoNui2BYSkD1gtHgrcn2nu+8IM/9X2ZzTBk6u61prj08pr+zth2D8mbhXhW7ifzE
gFseH/sGQPb5TCyO1SbR1klRVvBFZQAVCcF5iNzisEWn1XCyt36S6nNNLVECuUKUMx+gDjKg/8Er
P4ZN7B6OPna0s3wQVIHbUbPFpNBMHtSmnO2abiG32KlYF/E2GK6pKabp0TyJkpdQJtYvjUglPKLp
lludLrOZrtOuqE3i1xvHDO2W5J7dbj8P0Ys3cA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
piNjWGl0ejei/SPQhVpbRa1W48Qqweh5j4cebjmME8Zs1IvAjTWNbXZWWDFbDMg8KqOYRiFA9W4s
4PoCiCjj40i2HAuskdu1aJMtaZpjFh/3aK6L77KttKvLAyEdEX62QGfFk7v3CSpuJ4xu5quGDc4q
HADe/b3cxRCy9fdeemlsLx21ZGxg4t9Q69HaxUagCcrjkVna/23S1DjabbnCqju9FWyiZK0eSeZV
YwJmLB7YxDH39U8pcPb4/CKczaqQfDQq/xDL8l8Ze0C65oO7q8vlTsu+JJL4QbtuWGifAvJHPlnf
lLN3GY1eT7Dp6GH49/Ms+OxBA/ZSoeujqVEPQQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mOmXeOdhryNh13BAGUw6fqH6/JIOoMgrWlDilcPiZdab3UgpJqTDEIqO2p3OMWp+khPaX42Iu5BA
Og+eLNe9885Q7kMMQNKgBcgyEoImIrmdFffGSjXND24M0MG1T9YQvasw7uyPda1m5quycQRd600L
MBBP9nPfraDLebG9l+PGiBuC6ARlxkCUkHRS1aK+DcxviTYyeoHITqMVpbRHJ3JIFIOOGSRftRyV
mfhDMAgpgtt8GW32LfuChgU2TH2GtOkZL4vWLhwPANhMfG/zjNK3Xf3XYTPxBZDnANGHA/6q8gnn
VTf4TkOe4K7Foz0JMReVihxVFXnTjgQZ0BjKpg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10896)
`pragma protect data_block
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
`pragma protect end_protected
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
