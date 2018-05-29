// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu May 17 14:02:53 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_accum_0_2_sim_netlist.v
// Design      : design_1_c_accum_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_accum_0_2,c_accum_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (B,
    CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [0:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 640000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_second_clk" *) input CLK;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_12 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_12
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_12_viv i_synth
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
GatWink8UtGRW1xDfJganjwaPJ5irBDUxARtEZwnmINddJH/O21LFJJS3WXJrd2ybY7dLqzTNXc7
cX8ELwnZGeGPAN5GBq6DrARPYUT9JWF9semEm+AXcF+AiH7b6Qwkd83mM1n6lW3qzlqx0ukpPCuO
ekaHddBhTPmOHdDsYmvZiyL9RPtKmJ9/2FA+Ug6pp4kTehor8r3WziPEu6fEek9yUFtuYiWJErhZ
tFQco1+I2xgXdYQJMbXMHpHrt4efLXat1DRCmxD4gIFj7BfzkNl5NbFlJV7LNkSSJnLntz7VX17e
SrwvWL8LahBbXabOAoCEWY9jGMmK4aW3ocaD2g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yn7HKDNVBqeOLSW3kf/AVxhdD5qz+khqYziiyNcWo2ZvoSwhaD9ERMsCS8i63Lw3qxJFyLvuqnPs
wYOaMLJttm9UO0JOAFmbSYgW11D3MqxkCfkrSjcQJDHBDSmDlHDWH5TcMTfwhEgQQTkJZBlF6wY5
UUeGG2R/lpbls0Agcr0+zU+HXsYTtCtq0NE8nyWJp9bEEkk7f3OY7+P+xP3qLqXj1VhkBtyBzKEU
h07s7xWIzbdG3oJzgpBbVwP5WmLxUHEG8UgBB12QjlEOqzTHURROqER4N+AkTadjC+4SQrxiZ4zZ
20HMi5Yq+BFobkZnNsqPnDe5mRn6gjoatmmXkQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10896)
`pragma protect data_block
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
KxNI2SfrG6z+
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
