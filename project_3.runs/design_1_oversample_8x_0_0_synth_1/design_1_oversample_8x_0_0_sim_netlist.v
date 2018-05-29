// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon May 14 15:09:13 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_oversample_8x_0_0_sim_netlist.v
// Design      : design_1_oversample_8x_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_oversample_8x_0_0,oversample_8x,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "oversample_8x,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk0,
    clk90,
    sdat_0_dly,
    sdatb_45_dly,
    dout_rdy,
    rst,
    dout);
  input clk0;
  input clk90;
  input sdat_0_dly;
  input sdatb_45_dly;
  output dout_rdy;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  output [19:0]dout;

  wire C;
  wire clk0;
  wire clk90;
  wire [19:0]dout;
  wire dout_rdy;
  wire g1FF_i_1_n_0;
  wire sdat_0_dly;
  wire sdatb_45_dly;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_oversample_8x U0
       (.C(C),
        .clk0(clk0),
        .clk90(clk90),
        .clk90_0(g1FF_i_1_n_0),
        .dout(dout),
        .dout_rdy(dout_rdy),
        .sdat_0_dly(sdat_0_dly),
        .sdatb_45_dly(sdatb_45_dly));
  LUT1 #(
    .INIT(2'h1)) 
    e1FF_i_1
       (.I0(clk0),
        .O(C));
  LUT1 #(
    .INIT(2'h1)) 
    g1FF_i_1
       (.I0(clk90),
        .O(g1FF_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_oversample_8x
   (dout_rdy,
    dout,
    clk0,
    sdat_0_dly,
    sdatb_45_dly,
    clk90,
    C,
    clk90_0);
  output dout_rdy;
  output [19:0]dout;
  input clk0;
  input sdat_0_dly;
  input sdatb_45_dly;
  input clk90;
  input C;
  input clk90_0;

  wire C;
  wire a1;
  wire a2;
  wire a3;
  wire b1;
  wire b2;
  wire b3;
  wire c1;
  wire c2;
  wire c3;
  wire clk0;
  wire clk90;
  wire clk90_0;
  wire d1;
  wire d2;
  wire d3;
  wire [19:0]dout;
  wire \dout[19]_i_1_n_0 ;
  wire dout_rdy;
  wire dout_rdy0;
  wire e1;
  wire e2;
  wire e3;
  wire f1;
  wire f2;
  wire f3;
  wire g1;
  wire g2;
  wire g3;
  wire h1;
  wire h2;
  wire h3;
  wire instage_dout0;
  wire [19:0]p_1_in;
  (* RTL_KEEP = "true" *) wire [4:0]period;
  wire [7:0]samples_0;
  wire samples_00;
  wire [7:0]samples_1;
  wire samples_10;
  wire [7:0]samples_2;
  wire \samples_2[1]_i_1_n_0 ;
  wire \samples_2[3]_i_1_n_0 ;
  wire \samples_2[5]_i_1_n_0 ;
  wire sdat_0_dly;
  wire sdatb_45_dly;

  (* IOB = "FALSE" *) 
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* RLOC = "X1Y1" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    a1FF
       (.C(clk0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(sdat_0_dly),
        .Q(a1));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    a2FF
       (.C(clk0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(a1),
        .Q(a2));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    a3FF
       (.C(clk0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(a2),
        .Q(a3));
  (* IOB = "FALSE" *) 
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* RLOC = "X1Y1" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    b1FF
       (.C(clk0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(sdatb_45_dly),
        .Q(b1));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    b2FF
       (.C(clk0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(b1),
        .Q(b2));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    b3FF
       (.C(clk0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(b2),
        .Q(b3));
  (* IOB = "FALSE" *) 
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* RLOC = "X1Y0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    c1FF
       (.C(clk90),
        .CE(1'b1),
        .CLR(1'b0),
        .D(sdat_0_dly),
        .Q(c1));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    c2FF
       (.C(clk0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(c1),
        .Q(c2));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    c3FF
       (.C(clk0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(c2),
        .Q(c3));
  (* IOB = "FALSE" *) 
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* RLOC = "X1Y0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    d1FF
       (.C(clk90),
        .CE(1'b1),
        .CLR(1'b0),
        .D(sdatb_45_dly),
        .Q(d1));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    d2FF
       (.C(clk0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(d1),
        .Q(d2));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    d3FF
       (.C(clk0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(d2),
        .Q(d3));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[0]_i_1 
       (.I0(samples_0[0]),
        .I1(period[3]),
        .I2(samples_2[4]),
        .O(p_1_in[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[10]_i_1 
       (.I0(samples_1[2]),
        .I1(period[3]),
        .I2(samples_0[6]),
        .O(p_1_in[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[11]_i_1 
       (.I0(samples_1[3]),
        .I1(period[3]),
        .I2(samples_0[7]),
        .O(p_1_in[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[12]_i_1 
       (.I0(samples_1[4]),
        .I1(period[3]),
        .I2(samples_1[0]),
        .O(p_1_in[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[13]_i_1 
       (.I0(samples_1[5]),
        .I1(period[3]),
        .I2(samples_1[1]),
        .O(p_1_in[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[14]_i_1 
       (.I0(samples_1[6]),
        .I1(period[3]),
        .I2(samples_1[2]),
        .O(p_1_in[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[15]_i_1 
       (.I0(samples_1[7]),
        .I1(period[3]),
        .I2(samples_1[3]),
        .O(p_1_in[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[16]_i_1 
       (.I0(samples_2[0]),
        .I1(period[3]),
        .I2(samples_1[4]),
        .O(p_1_in[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[17]_i_1 
       (.I0(samples_2[1]),
        .I1(period[3]),
        .I2(samples_1[5]),
        .O(p_1_in[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[18]_i_1 
       (.I0(samples_2[2]),
        .I1(period[3]),
        .I2(samples_1[6]),
        .O(p_1_in[18]));
  LUT2 #(
    .INIT(4'hE)) 
    \dout[19]_i_1 
       (.I0(period[3]),
        .I1(period[0]),
        .O(\dout[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[19]_i_2 
       (.I0(samples_2[3]),
        .I1(period[3]),
        .I2(samples_1[7]),
        .O(p_1_in[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[1]_i_1 
       (.I0(samples_0[1]),
        .I1(period[3]),
        .I2(samples_2[5]),
        .O(p_1_in[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[2]_i_1 
       (.I0(samples_0[2]),
        .I1(period[3]),
        .I2(samples_2[6]),
        .O(p_1_in[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[3]_i_1 
       (.I0(samples_0[3]),
        .I1(period[3]),
        .I2(samples_2[7]),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[4]_i_1 
       (.I0(samples_0[4]),
        .I1(period[3]),
        .I2(samples_0[0]),
        .O(p_1_in[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[5]_i_1 
       (.I0(samples_0[5]),
        .I1(period[3]),
        .I2(samples_0[1]),
        .O(p_1_in[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[6]_i_1 
       (.I0(samples_0[6]),
        .I1(period[3]),
        .I2(samples_0[2]),
        .O(p_1_in[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[7]_i_1 
       (.I0(samples_0[7]),
        .I1(period[3]),
        .I2(samples_0[3]),
        .O(p_1_in[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[8]_i_1 
       (.I0(samples_1[0]),
        .I1(period[3]),
        .I2(samples_0[4]),
        .O(p_1_in[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[9]_i_1 
       (.I0(samples_1[1]),
        .I1(period[3]),
        .I2(samples_0[5]),
        .O(p_1_in[9]));
  LUT2 #(
    .INIT(4'hE)) 
    dout_rdy_i_1
       (.I0(period[4]),
        .I1(period[2]),
        .O(dout_rdy0));
  FDRE dout_rdy_reg
       (.C(clk0),
        .CE(1'b1),
        .D(dout_rdy0),
        .Q(dout_rdy),
        .R(1'b0));
  FDRE \dout_reg[0] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE \dout_reg[10] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(dout[10]),
        .R(1'b0));
  FDRE \dout_reg[11] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(dout[11]),
        .R(1'b0));
  FDRE \dout_reg[12] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(dout[12]),
        .R(1'b0));
  FDRE \dout_reg[13] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(dout[13]),
        .R(1'b0));
  FDRE \dout_reg[14] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(dout[14]),
        .R(1'b0));
  FDRE \dout_reg[15] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(dout[15]),
        .R(1'b0));
  FDRE \dout_reg[16] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(dout[16]),
        .R(1'b0));
  FDRE \dout_reg[17] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(dout[17]),
        .R(1'b0));
  FDRE \dout_reg[18] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(dout[18]),
        .R(1'b0));
  FDRE \dout_reg[19] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(dout[19]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(dout[8]),
        .R(1'b0));
  FDRE \dout_reg[9] 
       (.C(clk0),
        .CE(\dout[19]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(dout[9]),
        .R(1'b0));
  (* IOB = "FALSE" *) 
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* RLOC = "X0Y1" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    e1FF
       (.C(C),
        .CE(1'b1),
        .CLR(1'b0),
        .D(sdat_0_dly),
        .Q(e1));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    e2FF
       (.C(C),
        .CE(1'b1),
        .CLR(1'b0),
        .D(e1),
        .Q(e2));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    e3FF
       (.C(clk0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(e2),
        .Q(e3));
  (* IOB = "FALSE" *) 
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* RLOC = "X0Y1" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    f1FF
       (.C(C),
        .CE(1'b1),
        .CLR(1'b0),
        .D(sdatb_45_dly),
        .Q(f1));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    f2FF
       (.C(C),
        .CE(1'b1),
        .CLR(1'b0),
        .D(f1),
        .Q(f2));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    f3FF
       (.C(clk0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(f2),
        .Q(f3));
  (* IOB = "FALSE" *) 
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* RLOC = "X0Y0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    g1FF
       (.C(clk90_0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(sdat_0_dly),
        .Q(g1));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    g2FF
       (.C(C),
        .CE(1'b1),
        .CLR(1'b0),
        .D(g1),
        .Q(g2));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    g3FF
       (.C(clk0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(g2),
        .Q(g3));
  (* IOB = "FALSE" *) 
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* RLOC = "X0Y0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    h1FF
       (.C(clk90_0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(sdatb_45_dly),
        .Q(h1));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    h2FF
       (.C(C),
        .CE(1'b1),
        .CLR(1'b0),
        .D(h1),
        .Q(h2));
  (* IS_PRE_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    h3FF
       (.C(clk0),
        .CE(1'b1),
        .CLR(1'b0),
        .D(h2),
        .Q(h3));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \period_reg[0] 
       (.C(clk0),
        .CE(1'b1),
        .D(period[4]),
        .Q(period[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \period_reg[1] 
       (.C(clk0),
        .CE(1'b1),
        .D(period[0]),
        .Q(period[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \period_reg[2] 
       (.C(clk0),
        .CE(1'b1),
        .D(period[1]),
        .Q(period[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \period_reg[3] 
       (.C(clk0),
        .CE(1'b1),
        .D(period[2]),
        .Q(period[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \period_reg[4] 
       (.C(clk0),
        .CE(1'b1),
        .D(period[3]),
        .Q(period[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \samples_0[7]_i_1 
       (.I0(period[0]),
        .I1(period[3]),
        .O(samples_00));
  FDRE #(
    .INIT(1'b0)) 
    \samples_0_reg[0] 
       (.C(clk0),
        .CE(samples_00),
        .D(a3),
        .Q(samples_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_0_reg[1] 
       (.C(clk0),
        .CE(samples_00),
        .D(\samples_2[1]_i_1_n_0 ),
        .Q(samples_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_0_reg[2] 
       (.C(clk0),
        .CE(samples_00),
        .D(c3),
        .Q(samples_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_0_reg[3] 
       (.C(clk0),
        .CE(samples_00),
        .D(\samples_2[3]_i_1_n_0 ),
        .Q(samples_0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_0_reg[4] 
       (.C(clk0),
        .CE(samples_00),
        .D(e3),
        .Q(samples_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_0_reg[5] 
       (.C(clk0),
        .CE(samples_00),
        .D(\samples_2[5]_i_1_n_0 ),
        .Q(samples_0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_0_reg[6] 
       (.C(clk0),
        .CE(samples_00),
        .D(g3),
        .Q(samples_0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_0_reg[7] 
       (.C(clk0),
        .CE(samples_00),
        .D(instage_dout0),
        .Q(samples_0[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \samples_1[7]_i_1 
       (.I0(period[1]),
        .I1(period[4]),
        .O(samples_10));
  FDRE #(
    .INIT(1'b0)) 
    \samples_1_reg[0] 
       (.C(clk0),
        .CE(samples_10),
        .D(a3),
        .Q(samples_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_1_reg[1] 
       (.C(clk0),
        .CE(samples_10),
        .D(\samples_2[1]_i_1_n_0 ),
        .Q(samples_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_1_reg[2] 
       (.C(clk0),
        .CE(samples_10),
        .D(c3),
        .Q(samples_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_1_reg[3] 
       (.C(clk0),
        .CE(samples_10),
        .D(\samples_2[3]_i_1_n_0 ),
        .Q(samples_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_1_reg[4] 
       (.C(clk0),
        .CE(samples_10),
        .D(e3),
        .Q(samples_1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_1_reg[5] 
       (.C(clk0),
        .CE(samples_10),
        .D(\samples_2[5]_i_1_n_0 ),
        .Q(samples_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_1_reg[6] 
       (.C(clk0),
        .CE(samples_10),
        .D(g3),
        .Q(samples_1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_1_reg[7] 
       (.C(clk0),
        .CE(samples_10),
        .D(instage_dout0),
        .Q(samples_1[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \samples_2[1]_i_1 
       (.I0(b3),
        .O(\samples_2[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples_2[3]_i_1 
       (.I0(d3),
        .O(\samples_2[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples_2[5]_i_1 
       (.I0(f3),
        .O(\samples_2[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples_2[7]_i_1 
       (.I0(h3),
        .O(instage_dout0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_2_reg[0] 
       (.C(clk0),
        .CE(period[2]),
        .D(a3),
        .Q(samples_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_2_reg[1] 
       (.C(clk0),
        .CE(period[2]),
        .D(\samples_2[1]_i_1_n_0 ),
        .Q(samples_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_2_reg[2] 
       (.C(clk0),
        .CE(period[2]),
        .D(c3),
        .Q(samples_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_2_reg[3] 
       (.C(clk0),
        .CE(period[2]),
        .D(\samples_2[3]_i_1_n_0 ),
        .Q(samples_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_2_reg[4] 
       (.C(clk0),
        .CE(period[2]),
        .D(e3),
        .Q(samples_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_2_reg[5] 
       (.C(clk0),
        .CE(period[2]),
        .D(\samples_2[5]_i_1_n_0 ),
        .Q(samples_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_2_reg[6] 
       (.C(clk0),
        .CE(period[2]),
        .D(g3),
        .Q(samples_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_2_reg[7] 
       (.C(clk0),
        .CE(period[2]),
        .D(instage_dout0),
        .Q(samples_2[7]),
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
