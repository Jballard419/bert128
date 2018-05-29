// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu May 17 12:45:09 2018
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_ublaze_clk" *) input CLK;
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
mf003JB4iP0ReWxaMeqwKcurGjrC+bodD0DBW1XvTv0nPa70jLX7VKG/6jC5LZA8l4nc2AYKKrbG
zuw9XVJvcTgNrec4UihaTmbR2LaPVGBeu9LJgAsi11qzEQ1VMSyMQeBQyCCO57QlH4sGxph8RbM6
ht6BSfihIVCzjVe/Hb/35GZjHYCArGqXfZDRRZC9YoDXwnEnrJwRq65Kc49Ci0QkDhutWlqdbQh9
UtNXTbRhpsiWlQCAWRSMfhko7coHRJAwMi+0dFA5JblPt+9MByuXKOS0Czty6Efo9sGfRUvMU1s6
843JicKMYwZn9BFvwdRBAHpmKbfO6moC99Qjeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iLEFUbJLfIalLD856QOiswivvZC8QWPGIeJzyV2se7xPw2QanOICZyPoTiFHedTybarKzmFYLcJX
x5T9jUC+H461VJhcF7yg5oKmh/wKpqxwENI3EFF6TCH9kSIhvU9q2tikyaZVh1rwWoGSyXzIQZ3e
tXyex97knyCjxTKUhKNyPeT9ZsZi/7keFcf1ed4tnBamCl5n0DGS5DnNgzCBoUitHas8QWdMqdfy
08on6cpvrxFpandMvp1fIf/JV7JXDw9BJcY7OLFbOmYF/PaD2m/vZme0z67T1KluW60ZPO+bno1B
DbKUEbOGSqsFdRR8Hp/VSpKu4Q4NEhXQhe9yaQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10896)
`pragma protect data_block
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
o+h7mh/73XP8
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
