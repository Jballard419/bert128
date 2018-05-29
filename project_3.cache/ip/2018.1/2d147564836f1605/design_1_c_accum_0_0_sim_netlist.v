// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Apr 27 13:21:42 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_accum_0_0_sim_netlist.v
// Design      : design_1_c_accum_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_accum_0_0,c_accum_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
9JZjd5GD7zIJX19x+rdQhl4o55L+K5PzUZ0uE+zB5w81sg87U7UonYLJ5l1UKv7CP4GyukHzCSR2
6Jiu3AhHWSKI3e1rkuPSQDC0LtUOajZzpIluMg1T3gK72oAQ/X/o9fnu4iXCDWATXYEX4+UKGcm8
k+NlFi4pzQ323Kf90LHlBSoysFHSNlvAAJLqHcs7+ZlV+iGbBh5PzaBNPriTGbxqdBgVCwXqvKcK
6TrS5Wj4lm9S/VpE5aDm7ZBq6v/QwNvzrIzU9ncc8i79qAzX8WhTx9Izxc+m+KJ+xycEkLHnoXgo
RXf+gS4NQCZCmKtzVLTlaBcvChj1C+mxAWM5SfYBJnlG7N5LroNzC4R3pPfwVgckyQI1N6Pcf62r
remukK8XJK8W6kMWMOED7XKcVjlTm++zSqP7IXi111F/GRiN5djRHa87IP2sbWPa15vkOZOkNhai
lNkAge5arQaWKFe4LFCuwR10bdffAuax4mMWUD9r/xTdrzdgF7yOxkgJQ4qvfC57XcJ9JMQ7WHZi
Tpx0dEctJEiOrdzbjmsJ/wuNQG7KBCb0u/uU/wBoI4w5fwNh9dsN+DIIscIs2ZJg4rSTztmPcLjk
AXqAxyWsOrGYNfGzvs1xryRtYvt7cNhaz+CXy+/idvl8nZQIBujoLwZ+hZ9ILOZ7mPjW3z2gQavv
9r4HH9ADVM6TSWmMtozR4GBtV1p6a45yt5s5A9RvuPUGnNYOXZ7JnfooTAE2I3A4fga54sKLO2Y5
dMR+9w/QirZ9lChW8HguvXRFVmu4PRbTnUlyy9ODh3ruVhxpoZcZG8RJS1frLlRAx/6J808ulguY
LzipbNB2xUnJRmminDb0AzaakqTBegFiF7ORA3qXc7aQCSSkdf4rJnrrku0DA2hMIEGRW3L3yiAB
JJYWbyZ/XTo+qZdcW7ZAB1HvXBqqjIG7TkrtMPuWhlReE6bh63gOSRfSCPhMWF08X+kI/9Ga56un
UBcbHblMUKHqD4QmzWNpZJDmY+26ElQYOuhrihCBA5mfqblO8qUvFSTavEoE2W9DnqmfRlNNcMJ7
oNEK/0o6+lpcH3RokiZY+y8UiXi40hfmTWMSqay9r4iJbTN0gWzWcwHIglqYEFWRc2B2EVYzw0SH
9L3TqbG8FMY6wSp3TlXJ2uZHzrKoXcTQac26zCeFM/eOMGUgxhVXd8xp5DvvAIZSprLYj+VsDstJ
bm26s6Tea/ZJbBPcK09o2DObABbxYYGfjh/iKuoGol4TgcgG+ldTl3h2K5Chtj6KJwmxpCYiwsVV
c9vd+MrFiUqxFCmPeB4g1JIAFDgMLzo2O69wKXzAdl69RPfeRbEoHBJi5/hZSArkSRClyKZO5/w0
iKmEsQzDaAROAv8v6VKlP3y3nJ6+3lpe6jBJbyFBYS0GEhcAdR2ZryLj+70U4OQ8NacpiaWqo2tn
CVlv93i0M2dzuNawTkynTQitix5Ggn1Odu8tkvoygE4+rMs1Xfhlp0RRRTmlFPz22WARHxIsQy+r
+aURKMGLRnbZ4hPosqWvL9AMwjaKih87UX3UJLO0IDra5IowIfd+k5fKWP2vFPt9NIHcto15Cllj
rK9Upbe1gvn9H/k1JdGDfpjGasL0dXYpCrgcmPN1BaON3WkK71CNB+qeNxZyyk9WYtbpWebc0XVj
N6rqdDurx+e9rFDaS0r+eOZtERXn8kOAs1kBdzCKWHu/fnnW/ebGR0kZ/qIH+YpLdGc2WSCBOPcY
Ih5k8l66DvNDHy+ueBnU7hI+nYGBTVkGbJpUDbFw+4MR+oGhvSQ6r6VzqOHbmGsBtnrvjPMi5M8+
mgJ2qLR829uuKOjME7W2ueFp8l7oq8miFRh2rWeTwXzuxM/CSTGpmfz+1QN006BnRIsCVY7PjXbc
WHmfU7t7LqVHr7eHKPt+C/AvUEmSBBLK6oCyYOqaOz84Kk9JtuajCvj9OdnJ6LvJesm3GJ/jg1R8
DylMpu6PeBLLl2lsFP0waX3efHviha20eF9xafXNMLNUJdSWjqbNSEd6t7vR+KwGvX3ZQanBsrNz
sFiNrTpXcWvU704IGHYuYy8qsXQrmUJek+kLoQWxSA4E8reNKQbwyH3BJg9Hwlx+takkdUXHlVG7
onDlGDPpX5pzsCTar57sGpDK0QcEw1IFfAfj1AF8sU3l14eDPcWhfZwpwPJjAZHfrWql1fGKKsPV
EKlvDCAsXYCyxQxh8aHOff7ZAEAb7zsw3mFNCIJBMnV3Jv+NWXqb6h9f9d/Ygp9EIZEAtVCw6s23
fL0RrjX49NCg+nMZREE8jmIb9o+iKUIoyAQ1ab+TjDy6rOkzhIIXMiAFczy8c9YaXA+Ts17FADwo
kMsbkqjQlePikqvYJQoeqxQOnF1h+nQCz3vhw8qhOdwMH0DBVRFYf0iEQN6nf1LxoUwe924rtGNf
PCi+o/drdXdzUzW7TEWZW58u3MuJ8sEGNDKwYTo0pzMUaIE0b6tkNx2pQnNr3TTFAVEbcJMdhosU
6mducbf1mzB93Yf6jI4qn1K97QNZwVsXroFwKM2x8wSXm7AnwNn2ZulrxdUiTgNrRZdyaa2gm7vY
q+cW5sJ5iDrv/hLO4/h6OXz6CP1y75tgMzS8pWVXcYf1mr3px95mDDa69SxXcQGdyCrjLGB4Xymu
YBQfpT2WdqwIEcYSNgyEtg7Dv0Pa+2/GyUF+cuqMnAXZvo1d/Ofx5kFvHGs8RIrcJi4qMrIM6DWM
LEQ0NFLLoewdgCONOpai0jFFgSuC621aJM05cH1kJr67vSjrtJYKe4+uJNyAjRa/5TmSS3XNgyF9
9swBvClWmH7+uUuXLzQoO0GDGOXyFyLXXIwSa6w0tPph7ugpcjTdI8p0qiUlmNZDNsP7zcb99/tT
BIzKqD5EEQNEuBH43SmWeO5v2LvP1q7UZPr+qKbsoI0BAbjoIQpQ3wXVC0Ev/0WEs/VdyMQI6btV
zDzARNvL4svXcbagF2mkNmTMOGANiQ8NYq4u/+IpIpedGYfuszytszXmW8JIce6/djl68jFPy+9/
Px/5pV3WKO/drrWnyYKC5IUB3W1gKChlwCVGp45Qu0mN07LwbtbSr89+jaHKDv84DJj6WLqi0ocJ
Gqr2VUM2dPQ+by1yUDwvSbGtLZ0a4uYdeXAIk/4Eu/QFChfhLlyEw4hJqyuPG70PTepgohu59Jqx
8kGDc2AQL9XAWeTZIbL2g91rM/R7S4vJg+N1FqdLrOFD3bpgEu7mbaAVYI1wiox49h4UmoYe/lHF
7Dio8O38t4xAPzneubjM1gkbxU4c69Rd7ABY3VVbPCssbwEPQSw42RVBbsIta87Hjkos3zu4+XFD
O/ia0GZxVsU8S25aIm/m3USo/F8qBjQnpCFL9fV8/6kxUJ8YUYNIO0vNBe+6Mv+CMtupn+uwq5Tg
jU1KZl3mwfBY5hv3RgP5RkPf6+ECGLcxt7iizd4EKLG3PZIHfaPu3jUY/16P9h+PryzybdKvFT0m
sRn+w9/5VkLdZH7EEzmisFoQDnhVUSZJoqxYmTP7qd9rDFj1QevaFzTA+/qfvBP8rgY5VBRhk3og
0Ipt+zWxsYEcPLpk1J/n/AvNTYXYCFLODc4qRatOcZ7rvA0BlPazIW8iCeawlma7Q+e47FAFJkd2
JajnpjVGVzdEtNIRA5rkShqDozIg3JiqpGPIgGBxItyetZoDo4K90/XRc5VTHuuhnd0VFCSL4R4s
ImY2pX5UGwmwS2ubKA5+wBgmHw5dla06DW0koOGjBqmG85Fzyq21S8K1onTZGeh+FR0ZWdeqon7v
JW1j85IoBL6icWDJ/KgUBQ7lgGPBnBPraOVinM/0MfqBp4aQzWzjv9HAYnoxBUeIRgidLVp9n47E
GavbDFcKlZrCjHX3lrme4Tk+8erJ/4rxeP1InLwSk9eJyRagsmzPfH4I0cinINXME9fpl33yIhBh
LCGa5IjvZzXzRbSl6Cq2KNySgVTAe2UW016lJWvBs1/S5ntb9eZlJAPD0Q377JySuW5XF4/tOMEb
cDKdHlDPGyCFXDbAL8NH9TwxP3Ng1ukiLjMx1kQXpuL5KOtwHHETK7IYroGhMeclYRHRTl513YAn
s/bO4UJg8XXd7i1W0Nja/r3h0EF4681Ouj71j1R9a+LwnjjOV9tbHup5aSNAn8TqvNsVzXmi+Jqc
i3iLRpc3aEv8q7AXYGXO+tg+vuNpz9QxEJW0nQKDLy10mhld2O3UlReUP/OM6JpXlG1UVhJ1iKPm
I50+r/x/VuP0aepRfYkr9xyZLOAskWnfbiICrcCOTBYShRSZKj/MsXVKHj2cMISJ7FYvxWSOwPRg
FxGo7EwYCM8UTPMH+uTt2CVZJ0HLNkuKYFXi8I5li8O0X+z/EdNQkGb7vQY0WZcIcgv7VkGfdvlh
whYWM89isn31TsBtNxV1XuaIYaz9h7lBlHPgLWdlc6G9KsXlcNQFSPmEgQIF7y96aNm6NAuMpB0q
a3BRdzJVjIqln6FLjeuwcPhua6M+7B14sSSZD24/eXYdJa5clSHentkqM20mjLZVd0zVGDbGvcKi
bcITUd0Ap0ApRqElcVHW2etzw40BzvS9pmR/4jjUrFw/K7/VWicjN93RwPoikuzSnwximVIBUZj+
QlNCkbSbi929X1mQ40+0JNE0iHHlEQTqHUKLWscGmGEtc0BL8li+jskgm3Nxew/nCqa248y6L/cO
7lHT31v/E1NhRhamOEzm1pdNF+bfUhTdDzW+SUOl0xOD1u9fHLPWcka+gl5Ge1K0Oj89jyj9BXAp
/5xrt5YthWnoafP/qdDMfzrItN+VpkA/gZfx9sOUJlDp2Zj/NWpWQoLcXyl1Pv23G3ZcrEc+sQ/S
BERkUYPA9pOvJsL2dJyvIX4s3oy9KsR7o0UIcmOWbnl4KeOBobGbT0ZrlTz/uJf2Vpy6XppERgLH
6rYuo9wmCbUCjTtIPpyavTi2Na8EVf60EgQKxuEjIovKjt9UzAes43UFGrMXDURVowl8MnbuaC5G
jUl31Ssrs/2m6MC1kg4oD1R+8zVZVtYP91Xv7vuJWMXambLh6TfJnXeTXo6OvgXPGMBXEzhmSCnH
28CrUhI1rNjHC1u9s+bK3w/oZN01L4KI/qhheFIaFWaJiDw+rULvWshAzRZ6ZvuMmvmwV962fCyG
xFumoA1UIDPB3bK3bBB3ezxaNq1DagHVnB6kYncwWWZLQP8o/aKcoiXUgrISyJRC9XGwz+LqBMnZ
3s8xZltunY63rcCqjksYkGK9FZKb4mcw0HQwYd+UjZ3LbaxZwLWZwNwNmO83KB6ngrMZ7mA0Hez1
lZJ6rsUzKRElVn8G/MasxWqKtXfo6W6RdhJg3KMB4DlSApGg2caYe0W1iWzTOJmaSWoYQyGJmOQU
VO1DrniSiRUcQuf6b4Owv8lzDnNppNmQyRrRm1ZoU3i7FhuWNDzjRguVYJ2Pf6qb9soLctPQsBDe
f5WxRWmI2sixvk/PgecwAdhUnXhmvNTGPQyl4heZNycbEVWRnZFNXicUty6p26J6xohjIfZLik9W
c6vhGsd7WSmSsiH7BpTVjKjeQEljG/Fm6vpTp8joXMPd1oDSmz66tLxNvvJIM8tKuvWg241GjSC3
dYz+bJoT3hueVC/LCEMYD58VsLOz/tejPOzVJOjnl+Z4zhidFBvJDZXqbzMJ2H6Gmk+bSiaRI35L
vNpoTTpnUOxbDyWE//RsZH/g5G6LayUx8ocYMSUq9FWBFM0memYHh8GXCerz7kuniFvjYm3FK9tf
7XQfX5un7SLF1eGlsbFpTHksovRp5XgvYMTjDa9pLearU8mJIeR3CVvIc+Kcwko06e4Q8e2Ywbvy
6UK1c7XnBGs4tPsCf3MMolhLOz2MC+gmQ+08RjMJ/2zMwrGDfjeIH3mJZEdmgqGpESxXYKvk2YgN
MjG+QRZHJvPiLUVAXNbzbkLvgQbOM+Tm8ZFcvNtoEyxWxie4hL7o2oTU3DF6ikPnkfoRjUz+6NzJ
7G8SFq4ZfrgUA3sIEuxamuWTMLsbUl3wk3x66l04hiEqjXko1XHkJQIcfnrNevhiDnIfOvcCWFQW
lTDQs3MvlIZzk41PX9ZHlm+CY+H8LVgUIvl1m1gUpD04QqkxROg/mxOdBGD6FNxsO2d7hzREUr2R
QXIjct5OEi6R3hKbkA8RhUGXOKzw51EnksaO8sFS+gNJ26dPAIplF0lOebAoBR4dicP1OA6HGJHP
cNXzFFPFW7+MRnWuIPfDeLeyLoxs7ofKQC9KS/7vccQhtrSf/sPM4nMcMSyd3lgRzsn4PzM0D2GF
mqmMpT+VBRglr+r/Q/IQyZT29AVpGubmrSHZ3crHdwFrCIZFa2NKEj0vEhTtTxWfd6TkGBA+jqJf
PiXq/Y0Cd8cJsYzRXLiBi2TJEzMXH2B41dntmg8VYThsvO2p7wSjAKsA7jJ4gCfHLuVBUqpZ2EW1
q4pqsnrDZkErF+lTMR6Or9mfklTytgBpxiS+ByVHwSBynlQV+Z/ZlGFc2X5O4zMzyKV5nivWDtYT
w+csK8/nFiV+lRLgjmAvbZMBp0CyO7Yf42lf5atUU8bu6PHsRgSfRWu2IYdB4vFW/u5CwZqUzTHb
pu2xFRPwXQbiyCoW9mRr4DZa1V7JwJqWzuC3T+GVpk+kVNcouOtM9Hve7Ioa5r4rb+G4pUnqT2LE
CB9BodQNgDiFomFWa8lMkbbkPbrYJgOp55qJ6RVblpGiO4tzwUvMZ7GByNtI6nkkiz4WJNCrQfLv
6q4kFV/NVac968JnTvGhzxxCuWyQcgOMJdYd6oMHAMCU88VFvjAkKWZwintuj6OyQ+94rEyZrwjV
goWsWAHKbH/2e88dy9qReQcwapongHdPZwQ3KIgg1JRjJyyIhIy2XXwsVonvL/HwD63yLWg+brIZ
v3Be+MP2px0qJ1+RsbX9oq1dzkoMcgaq9d/+/e+FGwccFNLyGnOhzbsyTn13zpkYMsi4RI93gF7H
uJ0/gQrlVp309NOKzgrl8myv1mwiSxdDxLV6FXQGFgb/ruJdw8CRTE3WjLYMGZ6WnGexDRDrmRR+
74DdSirW1vdS4S750bb1R9YsjZdvyY1A7yiUV6B4gooK8aj44N10oXzFCrpf/hoiaP6MGwBI/2zx
ponPDbgtsPoZ2OgRTrS1tWGKfasLLCi7Dsjqd8MjlHoL0zOFw/7Q9spDsuFERUJ/2iwpOZAPknOi
5ipJL9udv6iirDAFiv/Mm0jk6OtIPhaSz1mXab7NyJG7XH/crpiyVoq068dJPyxVvqgeu0PILoyL
uoQ0QRt4n7xYLzeYTOCgtfcqvkub439CRtbzeQRkkhnMwnzaZMm0ZWlLbFGij7lQF68WgeaHuXLE
m8neRg6d/V2w2QFOBT1jRCAKkxtygUuA91sf/Io2ufg9rqUTn84FYo0qqqZSpqRTV07VseBD6X0U
utCD4AvARQ0epRbKmD5y6ah/D/QV+F04LzJ97UupLpTomzvfcKwH3wj0RWuSigpFdpHxHou2174F
4mALyitIjhAwmf8c3FqBUL0cp+0G7FIsAmX4GE2SaVVxmpISScbZxHh5zzzqNMwpVaLUu29gcSHb
XXke+4Hlrn+WaUq3AtiVRCZYXk/nfyWFvenZg+6WuarpqG7MI8ahyJvSqLMJoSFL1WMh1OtDj3uf
6gPj+2bfwBw4YLEl5YJWDELOK66tJXQ7zW8kPTOwhWKyhFlyzLJ1O9+AYqnVIhTQZQVY/Hp00zPj
PgOaQHrF7StLR9cQk0FhBo5E/jHZ6m6msbAjOtVWJ46GkLwR9vLd6mVdMdgUHnP1UCH9TuhvpTS+
Bhe2jHW5hB7tWPLp9ZEeDcxmU0S+0XGNeYgSDIiSy6qhR3F0EAPGo5/ywhcqTH84upStRzGG+WSb
Wyl65IKVIy14EfTATgTnFxanK1YpeOGp4ADzx/XeYREIpDdNlK8gDCFHFtJ3HPeH95isT374zTlh
U3BFvQ85nz70js9oAgPT4MS2bEPh7qiYqhnzEbGqTbc3rCa0ebNjbZB/QzktXRTwLmwdBFUZA+DJ
Tvj8fP3WMiBAcBifwliHZ/Zymtjc4pW9W5zj6tDLooiuNb2vf2QcLBf9FUFbYX9DajlYp+ccUvdI
plVlSbdKKa6nAJJ68/nBkZgly6oPvIy8S4ZEmw3PZOfSVtvRsVrZpVpuOus+PstayIihvyzt8OVQ
0/g3O+oCUr/YQlotasI7CvL771YN0jj/pMP2R3Pd1tpk66a9khr7+h0ZkG2rqAvJLR66hrD8Nydn
trgh5TDzydqUz3d0jglnMZPE8LopqoTg8P5PHCZvG3DQp6om40M7mOpMtX6vsgDJdmT2SNYGm+Lg
xVzj+3MLKA9mqpQhXhBJAuRXxED3mD9sl84CTRKzyCQDPI8+23e5Cm36btzllhJKpmk1Kj2bfc+w
xOs9Mkd2iOo+CRJamsrzy+jZa2rSNVQo1aSvJnw0plHSxGUIlv3FS92hMIMtI1ePl3r6RJg2uTug
OwtA5ej9sTNRaDRn71XKgnZip1kgX7JlhwZJx7SJU0MjC4zQiatg/nf0gx+EMOB6s3zQLti68D8d
rtQf35elOlO29+ROFpj5uPyT7g54gghMtZrc9i0aSZpV0DV8KllbFYGbcpfwqGnOmL+6G6oRznuu
YdLYRyoyFy45ykgmFFVioMY/1FDwsuV4C/wWnUAv/SpLn3XinDLD1kv/wNu4qPE0LA3roCdEuMuL
+2USE3ac7C6hTCezyapqeQ/8hEv72Sf1kC+DCec7LuQJ6zefkrKauClPcCvrD+OWyR2x+HWt3cJN
Nb4v/beD5JsLEVrfCH/TRvdAcGLD/R0Pq2KKIKpTc+f9Ig49CAfvHupNcdTyZOIRYtl+rtlh5sm+
KXXQa2OFdCPGJevUoGP8SknVk1f1j47AaW8L5/Q5Y61rw+HAdNVkBlcWQY6yzgVidVjxT6+Mv4Ku
JrnKhDz3jPBzmI6Ule/LQO+tVJ9XvqjaXMpDRhzvYJ/42XiYmH+9nLO/P7cDku9l2VMQ551Iit5G
NLgdIQRWVzvwqCqXz/XWuViqJpV4Uv27IlmiF3D0RsIg1lNBw5fhMcvCytzU04VLWvMp1kEomA5x
0r3Yt3ACkNqVR3PpjXIAqjTZN7DidF/LygZCTssx/pjwpFrwfgivZcNbldx0m0B+7FnnHu/kw9/D
ueJX8YiKixe3wpXOvojN+kixHFOpcwVA9vZG9SIcUAQ3+yn9CgrcoEHYSmEGJnKg17erGhnaaPXz
QQmlcEZT9u5ZV9eoRBRiZd7N/tryv2B7Tnx3bfWmWh5agON3Cm293aMJdcrXJtkhNMKeBBGYHMDc
R81uNT1/mWlsBhgeq0g2Urf+Ko8Og8In1EW40XZJLN7iFWPWOmnP81KWJ2MfFIEo/6j7IeoE5Lp4
NVU6VZ4EDGTEW7bXvpzYxHH+zejrs309dakGBet/K/Rore5blwvBSReDwqTfN2k45kv4/kTfs95i
pFGg17mU8SrbQbbCdRXaYomlIaXgffYSz3I25PT7RIYOmZAe0vZDlavKiHuP2c+XUZo9GFKPTs8P
vrkBztcwqiyfa5AHXsTDS100AubESbOLEyB7xHllhBhTZiuYN7CgV9X+Yu4xSJi1S9hbfSEwLEBQ
f66q3V37Z3BciDWCIFYUEYniCXWI93/C188rml7HcVddNAqFXq8vC/KaxYXEGkCCIg0l5eacFYbv
hVJSzpxmZPrMPvVt5/tkvkkEt5fkTZK3KCUaAEwYIP2acrUxnEXu5TUVFGvO742VusbJHIcYJTCv
19YXNcfD0ZedjynAdF9A9V1zCoI1LPxLLF4JSZGwu+louOCixmSt5tyPeGVNokx892c9ruYFcaZQ
gpiguxfzz64LqjeO5+OgfzOn5zq69QrGkDZZcRzM2pYpM7UWWev6iS8Zi6PabucI75VdxTvNNBnz
p2GtRn8VyL/w4H+YYAAPq0TKocj3VOCGKpcBjHtMx4irz2Wn4nVvw3J4a6/k0TlaeMGST9ERyDMh
FQ1+gVnoP3wrN2C1Ok9f/SurgvykumxgylU3bLHk03pIdHmPgP1o19IcgNAl35qb0iYz0/cEzUU9
fx451X3q2iMv2VaqKbvgFff50sP/r4xzgyGcdI2tRMlh/yB1jRcpOEAdD8SjtWGbX8TBxgY6sOG+
WDcryBDcQuzbrdiDkzFOIZAfJnjqqdsgWuu8wvBhoNDwXnKjTZI3S0K3WHSRw+HQco9wOljEPoK6
JC67zQFaGKG1XVcw6n2LB3y0OVaTzLI+nBwdcnIl/Jp33BpG6wD+wWqF+1ALzbjfDDIyX984cYAj
4Jvxyi0YqvVYdUTiWvpcHRvvjEHULIkwSZ973k/wa1iUQrTWeEsAd4Vxy6O/rwRLYlmrkq3IEvB6
fUcrcjGCih043Rtx7gvOXj+VrvEwIgLVZA8mlsU4B9eC9IyUUTIfRAtw92Di7aXAU6/ZGD4JbXEG
OHjBAvqjiHUUTGLDK+SSe9J0aMT+G/gy4ZV2BxX1D9XJGs5+dNP7fYBEiWcSSl/SaQ0vbvytTWaU
j8kgr3s0omNvo3+KVg/5Zr1WaiozhftKQZiQteIbkQxV3sI6NePZFF9p+p2kWobQfwxZBLd5W55H
mikJpruH0lweMDNG+L2zpLlUuBctVaiZDWLX7CumWKE5dfTrI5Wr05mRu1OHHcKxaWHctNAN4IhK
2CdmLiGypXWWnKLRN62wgvqpybRhWcoMYvrmyL1q1hLAJLPN+hAvN5hM9RoFfZDGw9Nunc+Noiit
uW6LUyI1LKL6UnEnvOCxDuwY+rGjD2BP3c2jHcqu0Jlay9UIEEb4F1QGJUee2CZK4Bu89q5ec0m8
T8y4irxxoK0cF1IPHw9Wv/kreWr8+j4YOj+IkyysI25bQwFM8R5axTyYiFrZOjq2vYIgZzRfupIQ
rWrCA8LMtyIKGEsGEjwHuwoiYCJeR447ISajHhneZ2Zhxs6cktQHu2NNGYXImT+3QwU6qcXlLQXQ
K0kqsj/qNC0eyMjuf9lQTpo4X/rfs3aSIsAimZCxc6N/mOBhlqKUyMhu561tVh4wuo3q8AuHUjPp
d8ImW4KvYiJ9MWYrk5E+GuCuA9QQHi2rD8qjSirRifNwGIuj4Tyz3hSlhnBKR6JU3f+Wbxz787gR
viB9uHZUe6ZZSgDTB/5Vd4ls7xvp7FN7qbE0jQyhc3J8wqjExkD34X3l/9WXfaVKfpdxyraI4khU
dtw3cCvjYDN43j/MdlCRG/wy8POQ1cOyNg4+E40OaowZkFzpWNfeadAi/0DivJoHhNpWdneD8oO0
LYegTyNhC5eMMviitv4y4bfhZn4X/5Z9a89fGShZhNuzBU8ZDoCDchlVKi3Z4+cXX5/uuRe2vthR
+eru88aKblHDU6KoiR1gYWQ3FODRe0RcbGPrT0axklB14JQMAK9o3v1j9pQbvNtekKe7ua9kfyUl
HNKjFcvHA2FfR335QJbSyfJMjhXhqZK+g3NFPOB5PGSq3ygtvw//WXTJlLmhs9sZrXl+eJCV7Zy/
cZOBf939CvhCea/2cmEhoHJKJr3vg3MxLOOeeLfpsp/J+T1UIzaVKAURqKAsiSOTEMU5eAVtqdHj
psYmKwtHkGrmYcmV63ABd9IyodESruOxb9k0uQ2F8A+Tx2h+sbYnMxOlB5DP9X8Pyto5W6xYFY0q
QWSjU08uQX3pKi78py9PN3tWQ8he+/sn3O9Hxx5wCCnncKdZwC61FjxFJsPo73XPt/L7g3zmmIhW
JicgWp+UfTm7qYKTEciCD6Hm5qiLi9XdvY5x8kLehE3Jc/V/wgNzHtLUJr3Tm6jxIzT3jAruc/iy
qkQAqg0Y75+KDiSBoCjiwlby97yXOig8uR1+VlL2aC45IejYBmGlyOeIP3zUpffuaExdS/ZV9spW
acAds8ccXA+Rxkg8zn5TofV4aLMzxRWmCHtqcG5wrodhf0njq2LE83iRm2DmVshmfyzv4FChr03d
BAs36b0k9Kv+wRlCdo/eWsTZ0ZO28xaYU/PZ8dECX+7pT+cS9Jgqgzbr41UcznZvDaHoAteKLWwZ
t+gFhvXTYW2Mp4DmlhhNWPA+W9mKbC+ATIuYlbABvEGUnVVLN5qB4uDEJGAX+VGs0yY9O7F98t9L
R3H3Bw3bgr6QlTmQ24g3GJsEbpK2vGyWVdz6Pw8LN4bcSFV/GLh80Fvl/XDf0jLwma4Wxo62Snh0
HJ4KuL/cZ6lAyJEWB/xNNlotWZpVElpiJlA8AlVwD/ZzAihiwzAlECevODMCYzfFumfwCn1uWZru
bEu+xXH4S1CLI0WVfTDkvj6N4Hx8SlyQMZftEFPV/tLMb0Eg0yipkwQHVpvBntW9svHUgr0tj0dC
Fb2bi3bI/pLET1n+4TWxc2g97b3bmNGPs2GMY9PIic6B3fdXJUBpfz5mcEVNDOnRTPOB4VQaLWYd
BnlobKbOI57CZBAom02h4kA6crsHMlmeQWpiXpra2iQOZPpZSZ0vRqFDUu1+En3pBeCCSMMjB45H
xuIo472tdcxh453o01JDpBNk64zh6HmHgD3aTS8QBwzA5MRT5TlZPR2CnXIhxKjfW7GnXsWWiA6R
HFY6iowgihqJiQYHjZuA2kvc+Gdvs1A/1XTEeEkJjELGdtlv4Ssfxj5TnQ3hBNxEJeoPZkx2wJ4O
z91luE0nGbC82Wk43rCJvGrdNfUMLSd1LqLYZsbCueJk/tRLhMcG2tmAo+5bSjt7HUHzmCCd2k+3
2ZSv/7j1J27+yPXb+MIEQl8oxzw8kMLrP9nNGMhM+H2eFVM3KVpyX59SnKAnxZ7hBb0XEKq5q669
4XMDhYX1Ek4JBxzlKuso13PAsFEy92lG76QjOtKXJuxh607hmi6sqhswa+hyNy94bKpp3HEoI7Dg
j77KmCkTSvaZL+66QF4MBe6CAAgqouunmy6qjnhDxJB7VBdPVKlIFUCPCjKrMkVXyxWZjOqdJVZG
H98su2ei8tA3C5vr4S2H8lqsnDqWnIAx6Gw02EpmhHcC5uvWYhl00S4OAHI6wswsb246DCgtgnVZ
DTJhSKlC/U53VfDp5EmkfPB7l9GFuQxScopAojqKWjA/ezJSCBXg1HgQEA12NHrGoEUgn3sU2a0T
6PCGLa9ALskopkngnxwHhRxIgMtgbakUyPCE9lkEMnYxCYfo0Hi/zs+8VEwM8Up/BcggF0e0AJWn
zAIhaiQRd/PbjyLsXVFjXvKpamWM7uz7yUJo2YLzegKSLssqzTcuyKUAMF/iiy3mHl0PqV3EbioJ
cxudKrNR78ZpWElOCzAM2iIEqDxuE7QO9XDgjZkIegVfQUtVVhuwSYPXXCbWVNlj+BMLDqWL/JTk
PjEpFU5C69AEwBKd2JHjs2iN3aWu7fQt4++jcDgpACBA6uDWFKsIvRK5URxIfEa0W65iRJKoLSSM
MNPol9sXjG5JxHhTg6y1I1o+7P5XOozQgi/9+xjxvsIohRkgIVM3aTqmHeLUsZRLy6leCVuDB7aj
Eu8BCMwFDkCVqNVebOQNp5vP/e/jTUMDWTC3BHDa2RwSRTiAG0S0dqgCLIaAvoRbJZm2nXuOwVu1
OqBXD0Y/X5SiXejZQar/qy+8hh+vFmSugcMAfCQyPCRVvqTj4lrKU4LfuqrGXeYLK/HhDxaedZ+f
xk04lpb1s40CekL0gqYKmZRghPJgFzhVaVARNfdr4IBjjCOnpR1+yalnjnpGGltPtqiW06DgA3Wu
7t7IH/qamOF3Um9owX3YJlh9G++i9eFky1k5eZ/4s21cdL9v87ZVKlbqfzj9rwVIppB/b0Y8Xi21
mPjSWI0VbpgvGaSR3+CwCtxFqJqLRjWz8lGpy9hwzrZ/prs0wBKlUnZ2g/2wDbtcV7uSLIBipyBb
lE9ysHPYrKXEKm35OBb7u14adO1CkQaYafoYQ+MVKZaMVWpZiIZV2n6vPDhXgMhyneh0WR2Rj0Bv
4yfa48kjFFcWsncpqS5xz6l9D3z6eU6skT6LsbooF+icOJ8bAxlchFVN9GypRhcGdQXtqWDIA+jN
TWG9Atc2QqsQwyMGpIlAI/sPZQkRvvD8ayTyo7myofq3LtgzZKavME6+twM5qeTYishRZtQ1iK8T
rDNIlv8O5VOkhDQcrE31Eq17P29AzhL6PzFB0weWUpMZ+Gpie1jFqqNbvEyFRO39GrFq5LSi+4zc
jgFdF9kfTJbT3zyKFzVDy79wAurYM1Gwck9Qb2XelIkjPLhy7CyFUKyAxZM9cr9myU3yIsyJINYu
WFp4E271Ypz6majDHt7b8I02sZKyR3b8qGaFe2Dk9exm8lnvSrbo9he86H4q5Cuo4OCSbnlHttB9
ylDL8oI1xtX+vxqW5zAv0YJQXWA5ofMwL+lNgGI1WCGZNNk01RsGNYDM7K2K92jhXPOpaYzynLbY
FfXc0kMARMha0LiEb4z5ibTuNN8lpKxpWtOnF0tOQaHQA95j45laY06uB+MTG78oJXc7Due6MuaJ
BRMPSk0GQFNi
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
