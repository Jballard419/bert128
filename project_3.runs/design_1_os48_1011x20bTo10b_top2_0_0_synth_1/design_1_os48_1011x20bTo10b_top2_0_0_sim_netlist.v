// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon May 14 15:14:00 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_os48_1011x20bTo10b_top2_0_0_sim_netlist.v
// Design      : design_1_os48_1011x20bTo10b_top2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_os48_1011x20bTo10b_top2_0_0,os48_1011x20bTo10b_top2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "os48_1011x20bTo10b_top2,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    bitOrderDinLSB,
    bitOrderDoutLSB,
    A_recclk,
    A_en,
    A_din20b,
    A_dout10bEn,
    A_dout10b,
    A_dout20bEn,
    A_dout20b,
    B_recclk,
    B_en,
    B_mode,
    B_din20b,
    B_dout10bEn,
    B_dout10b,
    B_dout20bEn,
    B_dout20b);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  input bitOrderDinLSB;
  input bitOrderDoutLSB;
  input A_recclk;
  input A_en;
  input [19:0]A_din20b;
  output A_dout10bEn;
  output [9:0]A_dout10b;
  output A_dout20bEn;
  output [19:0]A_dout20b;
  input B_recclk;
  input B_en;
  input [1:0]B_mode;
  input [19:0]B_din20b;
  output B_dout10bEn;
  output [9:0]B_dout10b;
  output B_dout20bEn;
  output [19:0]B_dout20b;

  wire [19:0]A_din20b;
  wire [9:0]A_dout10b;
  wire A_dout10bEn;
  wire [19:0]A_dout20b;
  wire A_dout20bEn;
  wire A_en;
  wire A_recclk;
  wire [19:0]B_din20b;
  wire [9:0]B_dout10b;
  wire B_dout10bEn;
  wire [19:0]B_dout20b;
  wire B_dout20bEn;
  wire B_en;
  wire [1:0]B_mode;
  wire B_recclk;
  wire bitOrderDinLSB;
  wire bitOrderDoutLSB;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_os48_1011x20bTo10b_top2 U0
       (.A_din20b(A_din20b),
        .A_dout10b(A_dout10b),
        .A_dout10bEn(A_dout10bEn),
        .A_dout20b(A_dout20b),
        .A_dout20bEn(A_dout20bEn),
        .A_en(A_en),
        .A_recclk(A_recclk),
        .B_din20b(B_din20b),
        .B_dout10b(B_dout10b),
        .B_dout10bEn(B_dout10bEn),
        .B_dout20b(B_dout20b),
        .B_dout20bEn(B_dout20bEn),
        .B_en(B_en),
        .B_mode(B_mode),
        .B_recclk(B_recclk),
        .bitOrderDinLSB(bitOrderDinLSB),
        .bitOrderDoutLSB(bitOrderDoutLSB),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e
   (D,
    rst,
    B_en,
    B_recclk,
    doutSel,
    Q,
    \doutMux_reg[1][5] ,
    \we_d_reg[0][1] );
  output [0:0]D;
  input rst;
  input B_en;
  input B_recclk;
  input doutSel;
  input [3:0]Q;
  input [5:0]\doutMux_reg[1][5] ;
  input [1:0]\we_d_reg[0][1] ;

  wire B_en;
  wire B_recclk;
  wire [0:0]D;
  wire [3:0]Q;
  wire din_i;
  wire [5:0]\doutMux_reg[1][5] ;
  wire doutSel;
  wire dout_i_1__9_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1__0_n_0 ;
  wire \ff[1]_i_1__0_n_0 ;
  wire \ff[1]_i_3__4_n_0 ;
  wire \ff[1]_i_4_n_0 ;
  wire rst;
  wire [1:0]\we_d_reg[0][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__9
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__9_n_0));
  FDRE dout_reg
       (.C(B_recclk),
        .CE(B_en),
        .D(dout_i_1__9_n_0),
        .Q(D),
        .R(rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[0]_i_1__0 
       (.I0(din_i),
        .I1(B_en),
        .I2(\we_d_reg[0][1] [0]),
        .I3(ff[0]),
        .O(\ff[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[1]_i_1__0 
       (.I0(din_i),
        .I1(B_en),
        .I2(\we_d_reg[0][1] [1]),
        .I3(ff[1]),
        .O(\ff[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0500C5C50500C0C0)) 
    \ff[1]_i_3__4 
       (.I0(Q[3]),
        .I1(\doutMux_reg[1][5] [2]),
        .I2(Q[1]),
        .I3(\doutMux_reg[1][5] [4]),
        .I4(Q[2]),
        .I5(\doutMux_reg[1][5] [0]),
        .O(\ff[1]_i_3__4_n_0 ));
  LUT6 #(
    .INIT(64'h0500C5C50500C0C0)) 
    \ff[1]_i_4 
       (.I0(Q[3]),
        .I1(\doutMux_reg[1][5] [3]),
        .I2(Q[1]),
        .I3(\doutMux_reg[1][5] [5]),
        .I4(Q[2]),
        .I5(\doutMux_reg[1][5] [1]),
        .O(\ff[1]_i_4_n_0 ));
  FDRE \ff_reg[0] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1__0_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1__0_n_0 ),
        .Q(ff[1]),
        .R(rst));
  MUXF7 \ff_reg[1]_i_2 
       (.I0(\ff[1]_i_3__4_n_0 ),
        .I1(\ff[1]_i_4_n_0 ),
        .O(din_i),
        .S(Q[0]));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_1
   (D,
    \ff_reg[0]_0 ,
    rst,
    B_en,
    B_recclk,
    Q,
    \we_d_reg[1][1] ,
    doutSel,
    \doutMux_reg[1][5] );
  output [0:0]D;
  output \ff_reg[0]_0 ;
  input rst;
  input B_en;
  input B_recclk;
  input [3:0]Q;
  input [1:0]\we_d_reg[1][1] ;
  input doutSel;
  input [5:0]\doutMux_reg[1][5] ;

  wire B_en;
  wire B_recclk;
  wire [0:0]D;
  wire [3:0]Q;
  wire [5:0]\doutMux_reg[1][5] ;
  wire doutSel;
  wire dout_i_1__10_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1_n_0 ;
  wire \ff[1]_i_1_n_0 ;
  wire \ff[1]_i_3__3_n_0 ;
  wire \ff_reg[0]_0 ;
  wire rst;
  wire [1:0]\we_d_reg[1][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__10
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__10_n_0));
  FDRE dout_reg
       (.C(B_recclk),
        .CE(B_en),
        .D(dout_i_1__10_n_0),
        .Q(D),
        .R(rst));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \ff[0]_i_1 
       (.I0(\ff_reg[0]_0 ),
        .I1(Q[0]),
        .I2(\ff[1]_i_3__3_n_0 ),
        .I3(B_en),
        .I4(\we_d_reg[1][1] [0]),
        .I5(ff[0]),
        .O(\ff[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \ff[1]_i_1 
       (.I0(\ff_reg[0]_0 ),
        .I1(Q[0]),
        .I2(\ff[1]_i_3__3_n_0 ),
        .I3(B_en),
        .I4(\we_d_reg[1][1] [1]),
        .I5(ff[1]),
        .O(\ff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00C000C0FCBB3088)) 
    \ff[1]_i_2__10 
       (.I0(\doutMux_reg[1][5] [0]),
        .I1(Q[3]),
        .I2(\doutMux_reg[1][5] [4]),
        .I3(Q[1]),
        .I4(\doutMux_reg[1][5] [2]),
        .I5(Q[2]),
        .O(\ff_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAD08E5E5AD084040)) 
    \ff[1]_i_3__3 
       (.I0(Q[3]),
        .I1(\doutMux_reg[1][5] [3]),
        .I2(Q[1]),
        .I3(\doutMux_reg[1][5] [5]),
        .I4(Q[2]),
        .I5(\doutMux_reg[1][5] [1]),
        .O(\ff[1]_i_3__3_n_0 ));
  FDRE \ff_reg[0] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_10b
   (D,
    B_dout20bEn0,
    E,
    B_dout20bEn_i_reg,
    rst,
    B_en,
    B_recclk,
    byteRdy_d_reg,
    bankSel_d_reg,
    Q,
    \we_d_reg[1][1] ,
    \we_d_reg[4][1] ,
    \bitSel_d_reg[1][3] ,
    \we_d_reg[9][1] ,
    \we_d_reg[7][1] ,
    B_dout20bEn_i,
    \we_d_reg[0][1] ,
    \we_d_reg[2][1] ,
    \we_d_reg[3][1] ,
    \we_d_reg[5][1] ,
    \we_d_reg[6][1] ,
    \we_d_reg[8][1] ,
    \doutMux_reg[1][5] );
  output [9:0]D;
  output B_dout20bEn0;
  output [0:0]E;
  output B_dout20bEn_i_reg;
  input rst;
  input B_en;
  input B_recclk;
  input byteRdy_d_reg;
  input bankSel_d_reg;
  input [3:0]Q;
  input [1:0]\we_d_reg[1][1] ;
  input [1:0]\we_d_reg[4][1] ;
  input [3:0]\bitSel_d_reg[1][3] ;
  input [1:0]\we_d_reg[9][1] ;
  input [1:0]\we_d_reg[7][1] ;
  input B_dout20bEn_i;
  input [1:0]\we_d_reg[0][1] ;
  input [1:0]\we_d_reg[2][1] ;
  input [1:0]\we_d_reg[3][1] ;
  input [1:0]\we_d_reg[5][1] ;
  input [1:0]\we_d_reg[6][1] ;
  input [1:0]\we_d_reg[8][1] ;
  input [5:0]\doutMux_reg[1][5] ;

  wire B_dout20bEn0;
  wire B_dout20bEn_i;
  wire B_dout20bEn_i_reg;
  wire B_doutEn_i;
  wire B_en;
  wire B_recclk;
  wire [9:0]D;
  wire [0:0]E;
  wire \G0[1].C_FF2E_n_1 ;
  wire \G0[3].C_FF2E_n_1 ;
  wire \G0[4].C_FF2E_n_1 ;
  wire \G0[6].C_FF2E_n_1 ;
  wire \G0[7].C_FF2E_n_1 ;
  wire \G0[7].C_FF2E_n_2 ;
  wire \G0[7].C_FF2E_n_3 ;
  wire \G0[7].C_FF2E_n_4 ;
  wire \G0[9].C_FF2E_n_1 ;
  wire [3:0]Q;
  wire bankSel_d_reg;
  wire [3:0]\bitSel_d_reg[1][3] ;
  wire byteRdy_d_reg;
  wire [5:0]\doutMux_reg[1][5] ;
  wire doutRdy_i;
  wire doutSel;
  wire rst;
  wire [1:0]\we_d_reg[0][1] ;
  wire [1:0]\we_d_reg[1][1] ;
  wire [1:0]\we_d_reg[2][1] ;
  wire [1:0]\we_d_reg[3][1] ;
  wire [1:0]\we_d_reg[4][1] ;
  wire [1:0]\we_d_reg[5][1] ;
  wire [1:0]\we_d_reg[6][1] ;
  wire [1:0]\we_d_reg[7][1] ;
  wire [1:0]\we_d_reg[8][1] ;
  wire [1:0]\we_d_reg[9][1] ;

  LUT2 #(
    .INIT(4'h8)) 
    B_dout10bEn_INST_0
       (.I0(B_en),
        .I1(B_doutEn_i),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    B_dout20bEn_i_1
       (.I0(B_doutEn_i),
        .I1(B_en),
        .I2(B_dout20bEn_i),
        .O(B_dout20bEn0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_dout20bEn_i_i_1
       (.I0(B_doutEn_i),
        .I1(B_en),
        .I2(B_dout20bEn_i),
        .O(B_dout20bEn_i_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e \G0[0].C_FF2E 
       (.B_en(B_en),
        .B_recclk(B_recclk),
        .D(D[0]),
        .Q(Q),
        .\doutMux_reg[1][5] (\doutMux_reg[1][5] ),
        .doutSel(doutSel),
        .rst(rst),
        .\we_d_reg[0][1] (\we_d_reg[0][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_1 \G0[1].C_FF2E 
       (.B_en(B_en),
        .B_recclk(B_recclk),
        .D(D[1]),
        .Q(Q),
        .\doutMux_reg[1][5] (\doutMux_reg[1][5] ),
        .doutSel(doutSel),
        .\ff_reg[0]_0 (\G0[1].C_FF2E_n_1 ),
        .rst(rst),
        .\we_d_reg[1][1] (\we_d_reg[1][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_2 \G0[2].C_FF2E 
       (.B_en(B_en),
        .B_recclk(B_recclk),
        .D(D[2]),
        .Q(Q[0]),
        .\doutMux_reg[1][0] (\G0[1].C_FF2E_n_1 ),
        .\doutMux_reg[1][1] (\G0[3].C_FF2E_n_1 ),
        .doutSel(doutSel),
        .rst(rst),
        .\we_d_reg[2][1] (\we_d_reg[2][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_3 \G0[3].C_FF2E 
       (.B_en(B_en),
        .B_recclk(B_recclk),
        .D(D[3]),
        .Q(Q),
        .\doutMux_reg[1][2] (\G0[4].C_FF2E_n_1 ),
        .\doutMux_reg[1][5] ({\doutMux_reg[1][5] [5],\doutMux_reg[1][5] [3],\doutMux_reg[1][5] [1]}),
        .doutSel(doutSel),
        .\ff_reg[1]_0 (\G0[3].C_FF2E_n_1 ),
        .rst(rst),
        .\we_d_reg[3][1] (\we_d_reg[3][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_4 \G0[4].C_FF2E 
       (.B_en(B_en),
        .B_recclk(B_recclk),
        .D(D[4]),
        .Q(Q),
        .\doutMux_reg[1][5] (\doutMux_reg[1][5] ),
        .doutSel(doutSel),
        .\ff_reg[0]_0 (\G0[4].C_FF2E_n_1 ),
        .rst(rst),
        .\we_d_reg[4][1] (\we_d_reg[4][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_5 \G0[5].C_FF2E 
       (.B_en(B_en),
        .B_recclk(B_recclk),
        .D(D[5]),
        .\bitSel_d_reg[1][0] (\G0[7].C_FF2E_n_1 ),
        .\bitSel_d_reg[1][3] (\bitSel_d_reg[1][3] ),
        .\doutMux_reg[1][3] (\doutMux_reg[1][5] [3:2]),
        .doutSel(doutSel),
        .rst(rst),
        .\we_d_reg[5][1] (\we_d_reg[5][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_6 \G0[6].C_FF2E 
       (.B_en(B_en),
        .B_recclk(B_recclk),
        .D(D[6]),
        .\bitSel_d_reg[1][3] (\bitSel_d_reg[1][3] ),
        .\doutMux_reg[1][2] (\G0[7].C_FF2E_n_4 ),
        .\doutMux_reg[1][3] (\G0[7].C_FF2E_n_3 ),
        .\doutMux_reg[1][5] (\doutMux_reg[1][5] [5:1]),
        .doutSel(doutSel),
        .\ff_reg[0]_0 (\G0[6].C_FF2E_n_1 ),
        .rst(rst),
        .\we_d_reg[6][1] (\we_d_reg[6][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_7 \G0[7].C_FF2E 
       (.B_en(B_en),
        .B_recclk(B_recclk),
        .D(D[7]),
        .\bitSel_d_reg[1][3] (\bitSel_d_reg[1][3] ),
        .\doutMux_reg[1][5] (\doutMux_reg[1][5] ),
        .doutSel(doutSel),
        .\ff_reg[0]_0 (\G0[7].C_FF2E_n_1 ),
        .\ff_reg[0]_1 (\G0[7].C_FF2E_n_2 ),
        .\ff_reg[0]_2 (\G0[7].C_FF2E_n_3 ),
        .\ff_reg[0]_3 (\G0[7].C_FF2E_n_4 ),
        .rst(rst),
        .\we_d_reg[7][1] (\we_d_reg[7][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_8 \G0[8].C_FF2E 
       (.B_en(B_en),
        .B_recclk(B_recclk),
        .D(D[8]),
        .\bitSel_d_reg[1][3] (\bitSel_d_reg[1][3] ),
        .\doutMux_reg[1][0] (\G0[9].C_FF2E_n_1 ),
        .\doutMux_reg[1][4] (\G0[6].C_FF2E_n_1 ),
        .\doutMux_reg[1][5] ({\doutMux_reg[1][5] [5],\doutMux_reg[1][5] [3]}),
        .doutSel(doutSel),
        .rst(rst),
        .\we_d_reg[8][1] (\we_d_reg[8][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_9 \G0[9].C_FF2E 
       (.B_en(B_en),
        .B_recclk(B_recclk),
        .D(D[9]),
        .\bitSel_d_reg[1][3] (\bitSel_d_reg[1][3] ),
        .\doutMux_reg[1][5] (\G0[7].C_FF2E_n_2 ),
        .\doutMux_reg[1][5]_0 ({\doutMux_reg[1][5] [5:4],\doutMux_reg[1][5] [1:0]}),
        .doutSel(doutSel),
        .\ff_reg[1]_0 (\G0[9].C_FF2E_n_1 ),
        .rst(rst),
        .\we_d_reg[9][1] (\we_d_reg[9][1] ));
  FDRE doutRdy_i_reg
       (.C(B_recclk),
        .CE(B_en),
        .D(byteRdy_d_reg),
        .Q(doutRdy_i),
        .R(rst));
  FDRE doutRdy_reg
       (.C(B_recclk),
        .CE(B_en),
        .D(doutRdy_i),
        .Q(B_doutEn_i),
        .R(rst));
  FDRE doutSel_i_reg
       (.C(B_recclk),
        .CE(B_en),
        .D(bankSel_d_reg),
        .Q(doutSel),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e_10b" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_10b_10
   (D,
    A_dout20bEn0,
    A_dout10bEn,
    E,
    A_dout20bEn_i_reg,
    rst,
    A_en,
    A_recclk,
    byteRdy_d_reg,
    bankSel_d_reg,
    A_dout20bEn_i,
    Q,
    \we_d_reg[1][1] ,
    \we_d_reg[2][1] ,
    \we_d_reg[3][1] ,
    \we_d_reg[4][1] ,
    \we_d_reg[5][1] ,
    \we_d_reg[6][1] ,
    \we_d_reg[7][1] ,
    \we_d_reg[8][1] ,
    \we_d_reg[9][1] ,
    \bitSel_d_reg[0][3] ,
    \doutMux_reg[1][2] ,
    \bitSel_d_reg[1][3] );
  output [9:0]D;
  output A_dout20bEn0;
  output A_dout10bEn;
  output [0:0]E;
  output A_dout20bEn_i_reg;
  input rst;
  input A_en;
  input A_recclk;
  input byteRdy_d_reg;
  input bankSel_d_reg;
  input A_dout20bEn_i;
  input [1:0]Q;
  input [1:0]\we_d_reg[1][1] ;
  input [1:0]\we_d_reg[2][1] ;
  input [1:0]\we_d_reg[3][1] ;
  input [1:0]\we_d_reg[4][1] ;
  input [1:0]\we_d_reg[5][1] ;
  input [1:0]\we_d_reg[6][1] ;
  input [1:0]\we_d_reg[7][1] ;
  input [1:0]\we_d_reg[8][1] ;
  input [1:0]\we_d_reg[9][1] ;
  input [3:0]\bitSel_d_reg[0][3] ;
  input [2:0]\doutMux_reg[1][2] ;
  input [3:0]\bitSel_d_reg[1][3] ;

  wire A_dout10bEn;
  wire A_dout20bEn0;
  wire A_dout20bEn_i;
  wire A_dout20bEn_i_reg;
  wire A_doutEn_i;
  wire A_en;
  wire A_recclk;
  wire [9:0]D;
  wire [0:0]E;
  wire \G0[1].C_FF2E_n_1 ;
  wire \G0[2].C_FF2E_n_1 ;
  wire \G0[6].C_FF2E_n_1 ;
  wire \G0[7].C_FF2E_n_1 ;
  wire [1:0]Q;
  wire bankSel_d_reg;
  wire [3:0]\bitSel_d_reg[0][3] ;
  wire [3:0]\bitSel_d_reg[1][3] ;
  wire byteRdy_d_reg;
  wire [2:0]\doutMux_reg[1][2] ;
  wire doutRdy_i;
  wire doutSel;
  wire rst;
  wire [1:0]\we_d_reg[1][1] ;
  wire [1:0]\we_d_reg[2][1] ;
  wire [1:0]\we_d_reg[3][1] ;
  wire [1:0]\we_d_reg[4][1] ;
  wire [1:0]\we_d_reg[5][1] ;
  wire [1:0]\we_d_reg[6][1] ;
  wire [1:0]\we_d_reg[7][1] ;
  wire [1:0]\we_d_reg[8][1] ;
  wire [1:0]\we_d_reg[9][1] ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    A_dout10bEn_INST_0
       (.I0(A_doutEn_i),
        .I1(A_en),
        .O(A_dout10bEn));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    A_dout20bEn_i_1
       (.I0(A_en),
        .I1(A_doutEn_i),
        .I2(A_dout20bEn_i),
        .O(A_dout20bEn0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    A_dout20bEn_i_i_1
       (.I0(A_en),
        .I1(A_doutEn_i),
        .I2(A_dout20bEn_i),
        .O(A_dout20bEn_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A_dout20b_i[19]_i_1 
       (.I0(A_en),
        .I1(A_doutEn_i),
        .O(E));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_11 \G0[0].C_FF2E 
       (.A_en(A_en),
        .A_recclk(A_recclk),
        .D(D[0]),
        .Q(Q),
        .\bitSel_d_reg[0][3] (\bitSel_d_reg[0][3] ),
        .\doutMux_reg[1][1] (\G0[2].C_FF2E_n_1 ),
        .\doutMux_reg[1][2] (\doutMux_reg[1][2] [2]),
        .doutSel(doutSel),
        .rst(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_12 \G0[1].C_FF2E 
       (.A_en(A_en),
        .A_recclk(A_recclk),
        .D(D[1]),
        .\bitSel_d_reg[0][3] (\bitSel_d_reg[0][3] ),
        .\doutMux_reg[1][2] (\doutMux_reg[1][2] ),
        .doutSel(doutSel),
        .\ff_reg[0]_0 (\G0[1].C_FF2E_n_1 ),
        .rst(rst),
        .\we_d_reg[1][1] (\we_d_reg[1][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_13 \G0[2].C_FF2E 
       (.A_en(A_en),
        .A_recclk(A_recclk),
        .D(D[2]),
        .\bitSel_d_reg[0][3] (\bitSel_d_reg[0][3] ),
        .\doutMux_reg[1][2] (\doutMux_reg[1][2] ),
        .doutSel(doutSel),
        .\ff_reg[0]_0 (\G0[2].C_FF2E_n_1 ),
        .rst(rst),
        .\we_d_reg[2][1] (\we_d_reg[2][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_14 \G0[3].C_FF2E 
       (.A_en(A_en),
        .A_recclk(A_recclk),
        .D(D[3]),
        .\bitSel_d_reg[0][3] (\bitSel_d_reg[0][3] ),
        .\doutMux_reg[1][0] (\doutMux_reg[1][2] [0]),
        .\doutMux_reg[1][2] (\G0[1].C_FF2E_n_1 ),
        .doutSel(doutSel),
        .rst(rst),
        .\we_d_reg[3][1] (\we_d_reg[3][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_15 \G0[4].C_FF2E 
       (.A_en(A_en),
        .A_recclk(A_recclk),
        .D(D[4]),
        .\bitSel_d_reg[0][3] (\bitSel_d_reg[0][3] ),
        .\doutMux_reg[1][1] (\G0[2].C_FF2E_n_1 ),
        .\doutMux_reg[1][2] (\doutMux_reg[1][2] [2]),
        .doutSel(doutSel),
        .rst(rst),
        .\we_d_reg[4][1] (\we_d_reg[4][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_16 \G0[5].C_FF2E 
       (.A_en(A_en),
        .A_recclk(A_recclk),
        .D(D[5]),
        .\bitSel_d_reg[1][3] (\bitSel_d_reg[1][3] ),
        .\doutMux_reg[1][1] (\G0[7].C_FF2E_n_1 ),
        .\doutMux_reg[1][2] (\doutMux_reg[1][2] [2]),
        .doutSel(doutSel),
        .rst(rst),
        .\we_d_reg[5][1] (\we_d_reg[5][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_17 \G0[6].C_FF2E 
       (.A_en(A_en),
        .A_recclk(A_recclk),
        .D(D[6]),
        .\bitSel_d_reg[1][3] (\bitSel_d_reg[1][3] ),
        .\doutMux_reg[1][2] (\doutMux_reg[1][2] ),
        .doutSel(doutSel),
        .\ff_reg[0]_0 (\G0[6].C_FF2E_n_1 ),
        .rst(rst),
        .\we_d_reg[6][1] (\we_d_reg[6][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_18 \G0[7].C_FF2E 
       (.A_en(A_en),
        .A_recclk(A_recclk),
        .D(D[7]),
        .\bitSel_d_reg[1][3] (\bitSel_d_reg[1][3] ),
        .\doutMux_reg[1][2] (\doutMux_reg[1][2] ),
        .doutSel(doutSel),
        .\ff_reg[0]_0 (\G0[7].C_FF2E_n_1 ),
        .rst(rst),
        .\we_d_reg[7][1] (\we_d_reg[7][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_19 \G0[8].C_FF2E 
       (.A_en(A_en),
        .A_recclk(A_recclk),
        .D(D[8]),
        .\bitSel_d_reg[1][3] (\bitSel_d_reg[1][3] ),
        .\doutMux_reg[1][0] (\doutMux_reg[1][2] [0]),
        .\doutMux_reg[1][2] (\G0[6].C_FF2E_n_1 ),
        .doutSel(doutSel),
        .rst(rst),
        .\we_d_reg[8][1] (\we_d_reg[8][1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_20 \G0[9].C_FF2E 
       (.A_en(A_en),
        .A_recclk(A_recclk),
        .D(D[9]),
        .\bitSel_d_reg[1][3] (\bitSel_d_reg[1][3] ),
        .\doutMux_reg[1][1] (\G0[7].C_FF2E_n_1 ),
        .\doutMux_reg[1][2] (\doutMux_reg[1][2] [2]),
        .doutSel(doutSel),
        .rst(rst),
        .\we_d_reg[9][1] (\we_d_reg[9][1] ));
  FDRE doutRdy_i_reg
       (.C(A_recclk),
        .CE(A_en),
        .D(byteRdy_d_reg),
        .Q(doutRdy_i),
        .R(rst));
  FDRE doutRdy_reg
       (.C(A_recclk),
        .CE(A_en),
        .D(doutRdy_i),
        .Q(A_doutEn_i),
        .R(rst));
  FDRE doutSel_i_reg
       (.C(A_recclk),
        .CE(A_en),
        .D(bankSel_d_reg),
        .Q(doutSel),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_11
   (D,
    rst,
    A_en,
    A_recclk,
    doutSel,
    \doutMux_reg[1][1] ,
    \bitSel_d_reg[0][3] ,
    \doutMux_reg[1][2] ,
    Q);
  output [0:0]D;
  input rst;
  input A_en;
  input A_recclk;
  input doutSel;
  input \doutMux_reg[1][1] ;
  input [3:0]\bitSel_d_reg[0][3] ;
  input [0:0]\doutMux_reg[1][2] ;
  input [1:0]Q;

  wire A_en;
  wire A_recclk;
  wire [0:0]D;
  wire [1:0]Q;
  wire [3:0]\bitSel_d_reg[0][3] ;
  wire din_i;
  wire \doutMux_reg[1][1] ;
  wire [0:0]\doutMux_reg[1][2] ;
  wire doutSel;
  wire dout_i_1_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1_n_0 ;
  wire \ff[1]_i_1_n_0 ;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1_n_0));
  FDRE dout_reg
       (.C(A_recclk),
        .CE(A_en),
        .D(dout_i_1_n_0),
        .Q(D),
        .R(rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[0]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(Q[0]),
        .I3(ff[0]),
        .O(\ff[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[1]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(Q[1]),
        .I3(ff[1]),
        .O(\ff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000200F20002)) 
    \ff[1]_i_2 
       (.I0(\doutMux_reg[1][1] ),
        .I1(\bitSel_d_reg[0][3] [3]),
        .I2(\bitSel_d_reg[0][3] [1]),
        .I3(\bitSel_d_reg[0][3] [2]),
        .I4(\doutMux_reg[1][2] ),
        .I5(\bitSel_d_reg[0][3] [0]),
        .O(din_i));
  FDRE \ff_reg[0] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_12
   (D,
    \ff_reg[0]_0 ,
    rst,
    A_en,
    A_recclk,
    doutSel,
    \doutMux_reg[1][2] ,
    \bitSel_d_reg[0][3] ,
    \we_d_reg[1][1] );
  output [0:0]D;
  output \ff_reg[0]_0 ;
  input rst;
  input A_en;
  input A_recclk;
  input doutSel;
  input [2:0]\doutMux_reg[1][2] ;
  input [3:0]\bitSel_d_reg[0][3] ;
  input [1:0]\we_d_reg[1][1] ;

  wire A_en;
  wire A_recclk;
  wire [0:0]D;
  wire [3:0]\bitSel_d_reg[0][3] ;
  wire din_i;
  wire [2:0]\doutMux_reg[1][2] ;
  wire doutSel;
  wire dout_i_1__0_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1_n_0 ;
  wire \ff[1]_i_1_n_0 ;
  wire \ff_reg[0]_0 ;
  wire rst;
  wire [1:0]\we_d_reg[1][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__0
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__0_n_0));
  FDRE dout_reg
       (.C(A_recclk),
        .CE(A_en),
        .D(dout_i_1__0_n_0),
        .Q(D),
        .R(rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[0]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[1][1] [0]),
        .I3(ff[0]),
        .O(\ff[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[1]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[1][1] [1]),
        .I3(ff[1]),
        .O(\ff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F00088F0)) 
    \ff[1]_i_2__3 
       (.I0(\doutMux_reg[1][2] [0]),
        .I1(\bitSel_d_reg[0][3] [0]),
        .I2(\ff_reg[0]_0 ),
        .I3(\bitSel_d_reg[0][3] [3]),
        .I4(\bitSel_d_reg[0][3] [1]),
        .I5(\bitSel_d_reg[0][3] [2]),
        .O(din_i));
  LUT3 #(
    .INIT(8'hB8)) 
    \ff[1]_i_3__0 
       (.I0(\doutMux_reg[1][2] [2]),
        .I1(\bitSel_d_reg[0][3] [0]),
        .I2(\doutMux_reg[1][2] [1]),
        .O(\ff_reg[0]_0 ));
  FDRE \ff_reg[0] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_13
   (D,
    \ff_reg[0]_0 ,
    rst,
    A_en,
    A_recclk,
    doutSel,
    \bitSel_d_reg[0][3] ,
    \doutMux_reg[1][2] ,
    \we_d_reg[2][1] );
  output [0:0]D;
  output \ff_reg[0]_0 ;
  input rst;
  input A_en;
  input A_recclk;
  input doutSel;
  input [3:0]\bitSel_d_reg[0][3] ;
  input [2:0]\doutMux_reg[1][2] ;
  input [1:0]\we_d_reg[2][1] ;

  wire A_en;
  wire A_recclk;
  wire [0:0]D;
  wire [3:0]\bitSel_d_reg[0][3] ;
  wire din_i;
  wire [2:0]\doutMux_reg[1][2] ;
  wire doutSel;
  wire dout_i_1__1_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1_n_0 ;
  wire \ff[1]_i_1_n_0 ;
  wire \ff_reg[0]_0 ;
  wire rst;
  wire [1:0]\we_d_reg[2][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__1
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__1_n_0));
  FDRE dout_reg
       (.C(A_recclk),
        .CE(A_en),
        .D(dout_i_1__1_n_0),
        .Q(D),
        .R(rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[0]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[2][1] [0]),
        .I3(ff[0]),
        .O(\ff[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[1]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[2][1] [1]),
        .I3(ff[1]),
        .O(\ff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002000E300200020)) 
    \ff[1]_i_2__2 
       (.I0(\ff_reg[0]_0 ),
        .I1(\bitSel_d_reg[0][3] [1]),
        .I2(\bitSel_d_reg[0][3] [3]),
        .I3(\bitSel_d_reg[0][3] [2]),
        .I4(\bitSel_d_reg[0][3] [0]),
        .I5(\doutMux_reg[1][2] [2]),
        .O(din_i));
  LUT3 #(
    .INIT(8'hB8)) 
    \ff[1]_i_3 
       (.I0(\doutMux_reg[1][2] [1]),
        .I1(\bitSel_d_reg[0][3] [0]),
        .I2(\doutMux_reg[1][2] [0]),
        .O(\ff_reg[0]_0 ));
  FDRE \ff_reg[0] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_14
   (D,
    rst,
    A_en,
    A_recclk,
    doutSel,
    \doutMux_reg[1][2] ,
    \bitSel_d_reg[0][3] ,
    \doutMux_reg[1][0] ,
    \we_d_reg[3][1] );
  output [0:0]D;
  input rst;
  input A_en;
  input A_recclk;
  input doutSel;
  input \doutMux_reg[1][2] ;
  input [3:0]\bitSel_d_reg[0][3] ;
  input [0:0]\doutMux_reg[1][0] ;
  input [1:0]\we_d_reg[3][1] ;

  wire A_en;
  wire A_recclk;
  wire [0:0]D;
  wire [3:0]\bitSel_d_reg[0][3] ;
  wire din_i;
  wire [0:0]\doutMux_reg[1][0] ;
  wire \doutMux_reg[1][2] ;
  wire doutSel;
  wire dout_i_1__2_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1_n_0 ;
  wire \ff[1]_i_1_n_0 ;
  wire rst;
  wire [1:0]\we_d_reg[3][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__2
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__2_n_0));
  FDRE dout_reg
       (.C(A_recclk),
        .CE(A_en),
        .D(dout_i_1__2_n_0),
        .Q(D),
        .R(rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[0]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[3][1] [0]),
        .I3(ff[0]),
        .O(\ff[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[1]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[3][1] [1]),
        .I3(ff[1]),
        .O(\ff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C20002000200020)) 
    \ff[1]_i_2__1 
       (.I0(\doutMux_reg[1][2] ),
        .I1(\bitSel_d_reg[0][3] [2]),
        .I2(\bitSel_d_reg[0][3] [3]),
        .I3(\bitSel_d_reg[0][3] [1]),
        .I4(\bitSel_d_reg[0][3] [0]),
        .I5(\doutMux_reg[1][0] ),
        .O(din_i));
  FDRE \ff_reg[0] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_15
   (D,
    rst,
    A_en,
    A_recclk,
    doutSel,
    \doutMux_reg[1][2] ,
    \bitSel_d_reg[0][3] ,
    \doutMux_reg[1][1] ,
    \we_d_reg[4][1] );
  output [0:0]D;
  input rst;
  input A_en;
  input A_recclk;
  input doutSel;
  input [0:0]\doutMux_reg[1][2] ;
  input [3:0]\bitSel_d_reg[0][3] ;
  input \doutMux_reg[1][1] ;
  input [1:0]\we_d_reg[4][1] ;

  wire A_en;
  wire A_recclk;
  wire [0:0]D;
  wire [3:0]\bitSel_d_reg[0][3] ;
  wire din_i;
  wire \doutMux_reg[1][1] ;
  wire [0:0]\doutMux_reg[1][2] ;
  wire doutSel;
  wire dout_i_1__3_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1_n_0 ;
  wire \ff[1]_i_1_n_0 ;
  wire rst;
  wire [1:0]\we_d_reg[4][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__3
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__3_n_0));
  FDRE dout_reg
       (.C(A_recclk),
        .CE(A_en),
        .D(dout_i_1__3_n_0),
        .Q(D),
        .R(rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[0]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[4][1] [0]),
        .I3(ff[0]),
        .O(\ff[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[1]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[4][1] [1]),
        .I3(ff[1]),
        .O(\ff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000002200)) 
    \ff[1]_i_2__0 
       (.I0(\doutMux_reg[1][2] ),
        .I1(\bitSel_d_reg[0][3] [0]),
        .I2(\doutMux_reg[1][1] ),
        .I3(\bitSel_d_reg[0][3] [3]),
        .I4(\bitSel_d_reg[0][3] [2]),
        .I5(\bitSel_d_reg[0][3] [1]),
        .O(din_i));
  FDRE \ff_reg[0] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_16
   (D,
    rst,
    A_en,
    A_recclk,
    doutSel,
    \doutMux_reg[1][1] ,
    \bitSel_d_reg[1][3] ,
    \doutMux_reg[1][2] ,
    \we_d_reg[5][1] );
  output [0:0]D;
  input rst;
  input A_en;
  input A_recclk;
  input doutSel;
  input \doutMux_reg[1][1] ;
  input [3:0]\bitSel_d_reg[1][3] ;
  input [0:0]\doutMux_reg[1][2] ;
  input [1:0]\we_d_reg[5][1] ;

  wire A_en;
  wire A_recclk;
  wire [0:0]D;
  wire [3:0]\bitSel_d_reg[1][3] ;
  wire din_i;
  wire \doutMux_reg[1][1] ;
  wire [0:0]\doutMux_reg[1][2] ;
  wire doutSel;
  wire dout_i_1__4_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1_n_0 ;
  wire \ff[1]_i_1_n_0 ;
  wire rst;
  wire [1:0]\we_d_reg[5][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__4
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__4_n_0));
  FDRE dout_reg
       (.C(A_recclk),
        .CE(A_en),
        .D(dout_i_1__4_n_0),
        .Q(D),
        .R(rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[0]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[5][1] [0]),
        .I3(ff[0]),
        .O(\ff[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[1]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[5][1] [1]),
        .I3(ff[1]),
        .O(\ff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000200F20002)) 
    \ff[1]_i_2__4 
       (.I0(\doutMux_reg[1][1] ),
        .I1(\bitSel_d_reg[1][3] [3]),
        .I2(\bitSel_d_reg[1][3] [1]),
        .I3(\bitSel_d_reg[1][3] [2]),
        .I4(\doutMux_reg[1][2] ),
        .I5(\bitSel_d_reg[1][3] [0]),
        .O(din_i));
  FDRE \ff_reg[0] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_17
   (D,
    \ff_reg[0]_0 ,
    rst,
    A_en,
    A_recclk,
    doutSel,
    \doutMux_reg[1][2] ,
    \bitSel_d_reg[1][3] ,
    \we_d_reg[6][1] );
  output [0:0]D;
  output \ff_reg[0]_0 ;
  input rst;
  input A_en;
  input A_recclk;
  input doutSel;
  input [2:0]\doutMux_reg[1][2] ;
  input [3:0]\bitSel_d_reg[1][3] ;
  input [1:0]\we_d_reg[6][1] ;

  wire A_en;
  wire A_recclk;
  wire [0:0]D;
  wire [3:0]\bitSel_d_reg[1][3] ;
  wire din_i;
  wire [2:0]\doutMux_reg[1][2] ;
  wire doutSel;
  wire dout_i_1__5_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1_n_0 ;
  wire \ff[1]_i_1_n_0 ;
  wire \ff_reg[0]_0 ;
  wire rst;
  wire [1:0]\we_d_reg[6][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__5
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__5_n_0));
  FDRE dout_reg
       (.C(A_recclk),
        .CE(A_en),
        .D(dout_i_1__5_n_0),
        .Q(D),
        .R(rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[0]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[6][1] [0]),
        .I3(ff[0]),
        .O(\ff[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[1]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[6][1] [1]),
        .I3(ff[1]),
        .O(\ff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F00088F0)) 
    \ff[1]_i_2__8 
       (.I0(\doutMux_reg[1][2] [0]),
        .I1(\bitSel_d_reg[1][3] [0]),
        .I2(\ff_reg[0]_0 ),
        .I3(\bitSel_d_reg[1][3] [3]),
        .I4(\bitSel_d_reg[1][3] [1]),
        .I5(\bitSel_d_reg[1][3] [2]),
        .O(din_i));
  LUT3 #(
    .INIT(8'hB8)) 
    \ff[1]_i_3__2 
       (.I0(\doutMux_reg[1][2] [2]),
        .I1(\bitSel_d_reg[1][3] [0]),
        .I2(\doutMux_reg[1][2] [1]),
        .O(\ff_reg[0]_0 ));
  FDRE \ff_reg[0] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_18
   (D,
    \ff_reg[0]_0 ,
    rst,
    A_en,
    A_recclk,
    doutSel,
    \bitSel_d_reg[1][3] ,
    \doutMux_reg[1][2] ,
    \we_d_reg[7][1] );
  output [0:0]D;
  output \ff_reg[0]_0 ;
  input rst;
  input A_en;
  input A_recclk;
  input doutSel;
  input [3:0]\bitSel_d_reg[1][3] ;
  input [2:0]\doutMux_reg[1][2] ;
  input [1:0]\we_d_reg[7][1] ;

  wire A_en;
  wire A_recclk;
  wire [0:0]D;
  wire [3:0]\bitSel_d_reg[1][3] ;
  wire din_i;
  wire [2:0]\doutMux_reg[1][2] ;
  wire doutSel;
  wire dout_i_1__6_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1_n_0 ;
  wire \ff[1]_i_1_n_0 ;
  wire \ff_reg[0]_0 ;
  wire rst;
  wire [1:0]\we_d_reg[7][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__6
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__6_n_0));
  FDRE dout_reg
       (.C(A_recclk),
        .CE(A_en),
        .D(dout_i_1__6_n_0),
        .Q(D),
        .R(rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[0]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[7][1] [0]),
        .I3(ff[0]),
        .O(\ff[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[1]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[7][1] [1]),
        .I3(ff[1]),
        .O(\ff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002000E300200020)) 
    \ff[1]_i_2__7 
       (.I0(\ff_reg[0]_0 ),
        .I1(\bitSel_d_reg[1][3] [1]),
        .I2(\bitSel_d_reg[1][3] [3]),
        .I3(\bitSel_d_reg[1][3] [2]),
        .I4(\bitSel_d_reg[1][3] [0]),
        .I5(\doutMux_reg[1][2] [2]),
        .O(din_i));
  LUT3 #(
    .INIT(8'hB8)) 
    \ff[1]_i_3__1 
       (.I0(\doutMux_reg[1][2] [1]),
        .I1(\bitSel_d_reg[1][3] [0]),
        .I2(\doutMux_reg[1][2] [0]),
        .O(\ff_reg[0]_0 ));
  FDRE \ff_reg[0] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_19
   (D,
    rst,
    A_en,
    A_recclk,
    doutSel,
    \doutMux_reg[1][2] ,
    \bitSel_d_reg[1][3] ,
    \doutMux_reg[1][0] ,
    \we_d_reg[8][1] );
  output [0:0]D;
  input rst;
  input A_en;
  input A_recclk;
  input doutSel;
  input \doutMux_reg[1][2] ;
  input [3:0]\bitSel_d_reg[1][3] ;
  input [0:0]\doutMux_reg[1][0] ;
  input [1:0]\we_d_reg[8][1] ;

  wire A_en;
  wire A_recclk;
  wire [0:0]D;
  wire [3:0]\bitSel_d_reg[1][3] ;
  wire din_i;
  wire [0:0]\doutMux_reg[1][0] ;
  wire \doutMux_reg[1][2] ;
  wire doutSel;
  wire dout_i_1__7_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1_n_0 ;
  wire \ff[1]_i_1_n_0 ;
  wire rst;
  wire [1:0]\we_d_reg[8][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__7
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__7_n_0));
  FDRE dout_reg
       (.C(A_recclk),
        .CE(A_en),
        .D(dout_i_1__7_n_0),
        .Q(D),
        .R(rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[0]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[8][1] [0]),
        .I3(ff[0]),
        .O(\ff[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[1]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[8][1] [1]),
        .I3(ff[1]),
        .O(\ff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C20002000200020)) 
    \ff[1]_i_2__6 
       (.I0(\doutMux_reg[1][2] ),
        .I1(\bitSel_d_reg[1][3] [2]),
        .I2(\bitSel_d_reg[1][3] [3]),
        .I3(\bitSel_d_reg[1][3] [1]),
        .I4(\bitSel_d_reg[1][3] [0]),
        .I5(\doutMux_reg[1][0] ),
        .O(din_i));
  FDRE \ff_reg[0] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_2
   (D,
    rst,
    B_en,
    B_recclk,
    doutSel,
    \doutMux_reg[1][1] ,
    Q,
    \doutMux_reg[1][0] ,
    \we_d_reg[2][1] );
  output [0:0]D;
  input rst;
  input B_en;
  input B_recclk;
  input doutSel;
  input \doutMux_reg[1][1] ;
  input [0:0]Q;
  input \doutMux_reg[1][0] ;
  input [1:0]\we_d_reg[2][1] ;

  wire B_en;
  wire B_recclk;
  wire [0:0]D;
  wire [0:0]Q;
  wire \doutMux_reg[1][0] ;
  wire \doutMux_reg[1][1] ;
  wire doutSel;
  wire dout_i_1__11_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1__0_n_0 ;
  wire \ff[1]_i_1__0_n_0 ;
  wire rst;
  wire [1:0]\we_d_reg[2][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__11
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__11_n_0));
  FDRE dout_reg
       (.C(B_recclk),
        .CE(B_en),
        .D(dout_i_1__11_n_0),
        .Q(D),
        .R(rst));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \ff[0]_i_1__0 
       (.I0(\doutMux_reg[1][1] ),
        .I1(Q),
        .I2(\doutMux_reg[1][0] ),
        .I3(B_en),
        .I4(\we_d_reg[2][1] [0]),
        .I5(ff[0]),
        .O(\ff[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \ff[1]_i_1__0 
       (.I0(\doutMux_reg[1][1] ),
        .I1(Q),
        .I2(\doutMux_reg[1][0] ),
        .I3(B_en),
        .I4(\we_d_reg[2][1] [1]),
        .I5(ff[1]),
        .O(\ff[1]_i_1__0_n_0 ));
  FDRE \ff_reg[0] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1__0_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1__0_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_20
   (D,
    rst,
    A_en,
    A_recclk,
    doutSel,
    \doutMux_reg[1][2] ,
    \bitSel_d_reg[1][3] ,
    \doutMux_reg[1][1] ,
    \we_d_reg[9][1] );
  output [0:0]D;
  input rst;
  input A_en;
  input A_recclk;
  input doutSel;
  input [0:0]\doutMux_reg[1][2] ;
  input [3:0]\bitSel_d_reg[1][3] ;
  input \doutMux_reg[1][1] ;
  input [1:0]\we_d_reg[9][1] ;

  wire A_en;
  wire A_recclk;
  wire [0:0]D;
  wire [3:0]\bitSel_d_reg[1][3] ;
  wire din_i;
  wire \doutMux_reg[1][1] ;
  wire [0:0]\doutMux_reg[1][2] ;
  wire doutSel;
  wire dout_i_1__8_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1_n_0 ;
  wire \ff[1]_i_1_n_0 ;
  wire rst;
  wire [1:0]\we_d_reg[9][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__8
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__8_n_0));
  FDRE dout_reg
       (.C(A_recclk),
        .CE(A_en),
        .D(dout_i_1__8_n_0),
        .Q(D),
        .R(rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[0]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[9][1] [0]),
        .I3(ff[0]),
        .O(\ff[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[1]_i_1 
       (.I0(din_i),
        .I1(A_en),
        .I2(\we_d_reg[9][1] [1]),
        .I3(ff[1]),
        .O(\ff[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000002200)) 
    \ff[1]_i_2__5 
       (.I0(\doutMux_reg[1][2] ),
        .I1(\bitSel_d_reg[1][3] [0]),
        .I2(\doutMux_reg[1][1] ),
        .I3(\bitSel_d_reg[1][3] [3]),
        .I4(\bitSel_d_reg[1][3] [2]),
        .I5(\bitSel_d_reg[1][3] [1]),
        .O(din_i));
  FDRE \ff_reg[0] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(A_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_3
   (D,
    \ff_reg[1]_0 ,
    rst,
    B_en,
    B_recclk,
    doutSel,
    \doutMux_reg[1][5] ,
    Q,
    \doutMux_reg[1][2] ,
    \we_d_reg[3][1] );
  output [0:0]D;
  output \ff_reg[1]_0 ;
  input rst;
  input B_en;
  input B_recclk;
  input doutSel;
  input [2:0]\doutMux_reg[1][5] ;
  input [3:0]Q;
  input \doutMux_reg[1][2] ;
  input [1:0]\we_d_reg[3][1] ;

  wire B_en;
  wire B_recclk;
  wire [0:0]D;
  wire [3:0]Q;
  wire \doutMux_reg[1][2] ;
  wire [2:0]\doutMux_reg[1][5] ;
  wire doutSel;
  wire dout_i_1__12_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1__0_n_0 ;
  wire \ff[1]_i_1__0_n_0 ;
  wire \ff_reg[1]_0 ;
  wire rst;
  wire [1:0]\we_d_reg[3][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__12
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__12_n_0));
  FDRE dout_reg
       (.C(B_recclk),
        .CE(B_en),
        .D(dout_i_1__12_n_0),
        .Q(D),
        .R(rst));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \ff[0]_i_1__0 
       (.I0(\doutMux_reg[1][2] ),
        .I1(Q[0]),
        .I2(\ff_reg[1]_0 ),
        .I3(B_en),
        .I4(\we_d_reg[3][1] [0]),
        .I5(ff[0]),
        .O(\ff[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \ff[1]_i_1__0 
       (.I0(\doutMux_reg[1][2] ),
        .I1(Q[0]),
        .I2(\ff_reg[1]_0 ),
        .I3(B_en),
        .I4(\we_d_reg[3][1] [1]),
        .I5(ff[1]),
        .O(\ff[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00C000C0FCBB3088)) 
    \ff[1]_i_2__9 
       (.I0(\doutMux_reg[1][5] [0]),
        .I1(Q[3]),
        .I2(\doutMux_reg[1][5] [2]),
        .I3(Q[1]),
        .I4(\doutMux_reg[1][5] [1]),
        .I5(Q[2]),
        .O(\ff_reg[1]_0 ));
  FDRE \ff_reg[0] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1__0_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1__0_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_4
   (D,
    \ff_reg[0]_0 ,
    rst,
    B_en,
    B_recclk,
    Q,
    \we_d_reg[4][1] ,
    doutSel,
    \doutMux_reg[1][5] );
  output [0:0]D;
  output \ff_reg[0]_0 ;
  input rst;
  input B_en;
  input B_recclk;
  input [3:0]Q;
  input [1:0]\we_d_reg[4][1] ;
  input doutSel;
  input [5:0]\doutMux_reg[1][5] ;

  wire B_en;
  wire B_recclk;
  wire [0:0]D;
  wire [3:0]Q;
  wire [5:0]\doutMux_reg[1][5] ;
  wire doutSel;
  wire dout_i_1__13_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1__0_n_0 ;
  wire \ff[1]_i_1__0_n_0 ;
  wire \ff[1]_i_2__12_n_0 ;
  wire \ff_reg[0]_0 ;
  wire rst;
  wire [1:0]\we_d_reg[4][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__13
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__13_n_0));
  FDRE dout_reg
       (.C(B_recclk),
        .CE(B_en),
        .D(dout_i_1__13_n_0),
        .Q(D),
        .R(rst));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \ff[0]_i_1__0 
       (.I0(\ff[1]_i_2__12_n_0 ),
        .I1(Q[0]),
        .I2(\ff_reg[0]_0 ),
        .I3(B_en),
        .I4(\we_d_reg[4][1] [0]),
        .I5(ff[0]),
        .O(\ff[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \ff[1]_i_1__0 
       (.I0(\ff[1]_i_2__12_n_0 ),
        .I1(Q[0]),
        .I2(\ff_reg[0]_0 ),
        .I3(B_en),
        .I4(\we_d_reg[4][1] [1]),
        .I5(ff[1]),
        .O(\ff[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h30003000CCBB0088)) 
    \ff[1]_i_2__11 
       (.I0(\doutMux_reg[1][5] [2]),
        .I1(Q[3]),
        .I2(\doutMux_reg[1][5] [0]),
        .I3(Q[1]),
        .I4(\doutMux_reg[1][5] [4]),
        .I5(Q[2]),
        .O(\ff_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h30003000CCBB0088)) 
    \ff[1]_i_2__12 
       (.I0(\doutMux_reg[1][5] [3]),
        .I1(Q[3]),
        .I2(\doutMux_reg[1][5] [1]),
        .I3(Q[1]),
        .I4(\doutMux_reg[1][5] [5]),
        .I5(Q[2]),
        .O(\ff[1]_i_2__12_n_0 ));
  FDRE \ff_reg[0] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1__0_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1__0_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_5
   (D,
    rst,
    B_en,
    B_recclk,
    doutSel,
    \bitSel_d_reg[1][3] ,
    \bitSel_d_reg[1][0] ,
    \doutMux_reg[1][3] ,
    \we_d_reg[5][1] );
  output [0:0]D;
  input rst;
  input B_en;
  input B_recclk;
  input doutSel;
  input [3:0]\bitSel_d_reg[1][3] ;
  input \bitSel_d_reg[1][0] ;
  input [1:0]\doutMux_reg[1][3] ;
  input [1:0]\we_d_reg[5][1] ;

  wire B_en;
  wire B_recclk;
  wire [0:0]D;
  wire \bitSel_d_reg[1][0] ;
  wire [3:0]\bitSel_d_reg[1][3] ;
  wire din_i;
  wire [1:0]\doutMux_reg[1][3] ;
  wire doutSel;
  wire dout_i_1__14_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1__0_n_0 ;
  wire \ff[1]_i_1__0_n_0 ;
  wire \ff[1]_i_3__6_n_0 ;
  wire \ff[1]_i_4__2_n_0 ;
  wire rst;
  wire [1:0]\we_d_reg[5][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__14
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__14_n_0));
  FDRE dout_reg
       (.C(B_recclk),
        .CE(B_en),
        .D(dout_i_1__14_n_0),
        .Q(D),
        .R(rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[0]_i_1__0 
       (.I0(din_i),
        .I1(B_en),
        .I2(\we_d_reg[5][1] [0]),
        .I3(ff[0]),
        .O(\ff[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[1]_i_1__0 
       (.I0(din_i),
        .I1(B_en),
        .I2(\we_d_reg[5][1] [1]),
        .I3(ff[1]),
        .O(\ff[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \ff[1]_i_2__15 
       (.I0(\ff[1]_i_3__6_n_0 ),
        .I1(\bitSel_d_reg[1][3] [0]),
        .I2(\ff[1]_i_4__2_n_0 ),
        .I3(\bitSel_d_reg[1][3] [1]),
        .I4(\bitSel_d_reg[1][3] [3]),
        .I5(\bitSel_d_reg[1][0] ),
        .O(din_i));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ff[1]_i_3__6 
       (.I0(\doutMux_reg[1][3] [1]),
        .I1(\bitSel_d_reg[1][3] [2]),
        .O(\ff[1]_i_3__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ff[1]_i_4__2 
       (.I0(\doutMux_reg[1][3] [0]),
        .I1(\bitSel_d_reg[1][3] [2]),
        .O(\ff[1]_i_4__2_n_0 ));
  FDRE \ff_reg[0] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1__0_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1__0_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_6
   (D,
    \ff_reg[0]_0 ,
    rst,
    B_en,
    B_recclk,
    doutSel,
    \doutMux_reg[1][2] ,
    \bitSel_d_reg[1][3] ,
    \doutMux_reg[1][5] ,
    \doutMux_reg[1][3] ,
    \we_d_reg[6][1] );
  output [0:0]D;
  output \ff_reg[0]_0 ;
  input rst;
  input B_en;
  input B_recclk;
  input doutSel;
  input \doutMux_reg[1][2] ;
  input [3:0]\bitSel_d_reg[1][3] ;
  input [4:0]\doutMux_reg[1][5] ;
  input \doutMux_reg[1][3] ;
  input [1:0]\we_d_reg[6][1] ;

  wire B_en;
  wire B_recclk;
  wire [0:0]D;
  wire [3:0]\bitSel_d_reg[1][3] ;
  wire din_i;
  wire \doutMux_reg[1][2] ;
  wire \doutMux_reg[1][3] ;
  wire [4:0]\doutMux_reg[1][5] ;
  wire doutSel;
  wire dout_i_1__15_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1__0_n_0 ;
  wire \ff[1]_i_1__0_n_0 ;
  wire \ff[1]_i_4__3_n_0 ;
  wire \ff_reg[0]_0 ;
  wire rst;
  wire [1:0]\we_d_reg[6][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__15
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__15_n_0));
  FDRE dout_reg
       (.C(B_recclk),
        .CE(B_en),
        .D(dout_i_1__15_n_0),
        .Q(D),
        .R(rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[0]_i_1__0 
       (.I0(din_i),
        .I1(B_en),
        .I2(\we_d_reg[6][1] [0]),
        .I3(ff[0]),
        .O(\ff[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[1]_i_1__0 
       (.I0(din_i),
        .I1(B_en),
        .I2(\we_d_reg[6][1] [1]),
        .I3(ff[1]),
        .O(\ff[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ff[1]_i_2__14 
       (.I0(\doutMux_reg[1][2] ),
        .I1(\bitSel_d_reg[1][3] [0]),
        .I2(\ff[1]_i_4__3_n_0 ),
        .I3(\bitSel_d_reg[1][3] [3]),
        .I4(\ff_reg[0]_0 ),
        .O(din_i));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \ff[1]_i_4__3 
       (.I0(\doutMux_reg[1][5] [4]),
        .I1(\doutMux_reg[1][5] [0]),
        .I2(\bitSel_d_reg[1][3] [1]),
        .I3(\doutMux_reg[1][5] [2]),
        .I4(\bitSel_d_reg[1][3] [2]),
        .O(\ff[1]_i_4__3_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ff[1]_i_5 
       (.I0(\doutMux_reg[1][5] [3]),
        .I1(\bitSel_d_reg[1][3] [1]),
        .I2(\doutMux_reg[1][5] [1]),
        .I3(\bitSel_d_reg[1][3] [2]),
        .I4(\bitSel_d_reg[1][3] [0]),
        .I5(\doutMux_reg[1][3] ),
        .O(\ff_reg[0]_0 ));
  FDRE \ff_reg[0] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1__0_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1__0_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_7
   (D,
    \ff_reg[0]_0 ,
    \ff_reg[0]_1 ,
    \ff_reg[0]_2 ,
    \ff_reg[0]_3 ,
    rst,
    B_en,
    B_recclk,
    \bitSel_d_reg[1][3] ,
    \we_d_reg[7][1] ,
    doutSel,
    \doutMux_reg[1][5] );
  output [0:0]D;
  output \ff_reg[0]_0 ;
  output \ff_reg[0]_1 ;
  output \ff_reg[0]_2 ;
  output \ff_reg[0]_3 ;
  input rst;
  input B_en;
  input B_recclk;
  input [3:0]\bitSel_d_reg[1][3] ;
  input [1:0]\we_d_reg[7][1] ;
  input doutSel;
  input [5:0]\doutMux_reg[1][5] ;

  wire B_en;
  wire B_recclk;
  wire [0:0]D;
  wire [3:0]\bitSel_d_reg[1][3] ;
  wire [5:0]\doutMux_reg[1][5] ;
  wire doutSel;
  wire dout_i_1__16_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1__2_n_0 ;
  wire \ff[1]_i_1__2_n_0 ;
  wire \ff[1]_i_5__0_n_0 ;
  wire \ff_reg[0]_0 ;
  wire \ff_reg[0]_1 ;
  wire \ff_reg[0]_2 ;
  wire \ff_reg[0]_3 ;
  wire rst;
  wire [1:0]\we_d_reg[7][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__16
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__16_n_0));
  FDRE dout_reg
       (.C(B_recclk),
        .CE(B_en),
        .D(dout_i_1__16_n_0),
        .Q(D),
        .R(rst));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \ff[0]_i_1__2 
       (.I0(\ff_reg[0]_0 ),
        .I1(\bitSel_d_reg[1][3] [3]),
        .I2(\ff_reg[0]_1 ),
        .I3(B_en),
        .I4(\we_d_reg[7][1] [0]),
        .I5(ff[0]),
        .O(\ff[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \ff[1]_i_1__2 
       (.I0(\ff_reg[0]_0 ),
        .I1(\bitSel_d_reg[1][3] [3]),
        .I2(\ff_reg[0]_1 ),
        .I3(B_en),
        .I4(\we_d_reg[7][1] [1]),
        .I5(ff[1]),
        .O(\ff[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ff[1]_i_2__16 
       (.I0(\ff_reg[0]_2 ),
        .I1(\bitSel_d_reg[1][3] [0]),
        .I2(\ff_reg[0]_3 ),
        .O(\ff_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ff[1]_i_3__5 
       (.I0(\doutMux_reg[1][5] [5]),
        .I1(\bitSel_d_reg[1][3] [1]),
        .I2(\doutMux_reg[1][5] [3]),
        .I3(\bitSel_d_reg[1][3] [2]),
        .I4(\bitSel_d_reg[1][3] [0]),
        .I5(\ff[1]_i_5__0_n_0 ),
        .O(\ff_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ff[1]_i_3__7 
       (.I0(\doutMux_reg[1][5] [2]),
        .I1(\bitSel_d_reg[1][3] [1]),
        .I2(\doutMux_reg[1][5] [4]),
        .I3(\bitSel_d_reg[1][3] [2]),
        .I4(\doutMux_reg[1][5] [0]),
        .O(\ff_reg[0]_3 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ff[1]_i_4__1 
       (.I0(\doutMux_reg[1][5] [3]),
        .I1(\bitSel_d_reg[1][3] [1]),
        .I2(\doutMux_reg[1][5] [5]),
        .I3(\bitSel_d_reg[1][3] [2]),
        .I4(\doutMux_reg[1][5] [1]),
        .O(\ff_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ff[1]_i_5__0 
       (.I0(\doutMux_reg[1][5] [4]),
        .I1(\bitSel_d_reg[1][3] [1]),
        .I2(\doutMux_reg[1][5] [2]),
        .I3(\bitSel_d_reg[1][3] [2]),
        .O(\ff[1]_i_5__0_n_0 ));
  FDRE \ff_reg[0] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1__2_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1__2_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_8
   (D,
    rst,
    B_en,
    B_recclk,
    doutSel,
    \doutMux_reg[1][4] ,
    \bitSel_d_reg[1][3] ,
    \doutMux_reg[1][0] ,
    \doutMux_reg[1][5] ,
    \we_d_reg[8][1] );
  output [0:0]D;
  input rst;
  input B_en;
  input B_recclk;
  input doutSel;
  input \doutMux_reg[1][4] ;
  input [3:0]\bitSel_d_reg[1][3] ;
  input \doutMux_reg[1][0] ;
  input [1:0]\doutMux_reg[1][5] ;
  input [1:0]\we_d_reg[8][1] ;

  wire B_en;
  wire B_recclk;
  wire [0:0]D;
  wire [3:0]\bitSel_d_reg[1][3] ;
  wire din_i;
  wire \doutMux_reg[1][0] ;
  wire \doutMux_reg[1][4] ;
  wire [1:0]\doutMux_reg[1][5] ;
  wire doutSel;
  wire dout_i_1__17_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1__0_n_0 ;
  wire \ff[1]_i_1__0_n_0 ;
  wire \ff[1]_i_4__0_n_0 ;
  wire rst;
  wire [1:0]\we_d_reg[8][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__17
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__17_n_0));
  FDRE dout_reg
       (.C(B_recclk),
        .CE(B_en),
        .D(dout_i_1__17_n_0),
        .Q(D),
        .R(rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[0]_i_1__0 
       (.I0(din_i),
        .I1(B_en),
        .I2(\we_d_reg[8][1] [0]),
        .I3(ff[0]),
        .O(\ff[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \ff[1]_i_1__0 
       (.I0(din_i),
        .I1(B_en),
        .I2(\we_d_reg[8][1] [1]),
        .I3(ff[1]),
        .O(\ff[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ff[1]_i_2__13 
       (.I0(\doutMux_reg[1][4] ),
        .I1(\bitSel_d_reg[1][3] [3]),
        .I2(\doutMux_reg[1][0] ),
        .I3(\bitSel_d_reg[1][3] [0]),
        .I4(\ff[1]_i_4__0_n_0 ),
        .O(din_i));
  LUT4 #(
    .INIT(16'h00B8)) 
    \ff[1]_i_4__0 
       (.I0(\doutMux_reg[1][5] [1]),
        .I1(\bitSel_d_reg[1][3] [1]),
        .I2(\doutMux_reg[1][5] [0]),
        .I3(\bitSel_d_reg[1][3] [2]),
        .O(\ff[1]_i_4__0_n_0 ));
  FDRE \ff_reg[0] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1__0_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1__0_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "ff_fifo2e" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_9
   (D,
    \ff_reg[1]_0 ,
    rst,
    B_en,
    B_recclk,
    \doutMux_reg[1][5] ,
    \bitSel_d_reg[1][3] ,
    \we_d_reg[9][1] ,
    doutSel,
    \doutMux_reg[1][5]_0 );
  output [0:0]D;
  output \ff_reg[1]_0 ;
  input rst;
  input B_en;
  input B_recclk;
  input \doutMux_reg[1][5] ;
  input [3:0]\bitSel_d_reg[1][3] ;
  input [1:0]\we_d_reg[9][1] ;
  input doutSel;
  input [3:0]\doutMux_reg[1][5]_0 ;

  wire B_en;
  wire B_recclk;
  wire [0:0]D;
  wire [3:0]\bitSel_d_reg[1][3] ;
  wire \doutMux_reg[1][5] ;
  wire [3:0]\doutMux_reg[1][5]_0 ;
  wire doutSel;
  wire dout_i_1__18_n_0;
  wire [1:0]ff;
  wire \ff[0]_i_1__1_n_0 ;
  wire \ff[1]_i_1__1_n_0 ;
  wire \ff[1]_i_2__17_n_0 ;
  wire \ff_reg[1]_0 ;
  wire rst;
  wire [1:0]\we_d_reg[9][1] ;

  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_1__18
       (.I0(ff[1]),
        .I1(doutSel),
        .I2(ff[0]),
        .O(dout_i_1__18_n_0));
  FDRE dout_reg
       (.C(B_recclk),
        .CE(B_en),
        .D(dout_i_1__18_n_0),
        .Q(D),
        .R(rst));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \ff[0]_i_1__1 
       (.I0(\doutMux_reg[1][5] ),
        .I1(\bitSel_d_reg[1][3] [3]),
        .I2(\ff[1]_i_2__17_n_0 ),
        .I3(B_en),
        .I4(\we_d_reg[9][1] [0]),
        .I5(ff[0]),
        .O(\ff[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \ff[1]_i_1__1 
       (.I0(\doutMux_reg[1][5] ),
        .I1(\bitSel_d_reg[1][3] [3]),
        .I2(\ff[1]_i_2__17_n_0 ),
        .I3(B_en),
        .I4(\we_d_reg[9][1] [1]),
        .I5(ff[1]),
        .O(\ff[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \ff[1]_i_2__17 
       (.I0(\doutMux_reg[1][5]_0 [1]),
        .I1(\bitSel_d_reg[1][3] [1]),
        .I2(\doutMux_reg[1][5]_0 [3]),
        .I3(\bitSel_d_reg[1][3] [2]),
        .I4(\bitSel_d_reg[1][3] [0]),
        .I5(\ff_reg[1]_0 ),
        .O(\ff[1]_i_2__17_n_0 ));
  LUT4 #(
    .INIT(16'h8830)) 
    \ff[1]_i_3__8 
       (.I0(\doutMux_reg[1][5]_0 [0]),
        .I1(\bitSel_d_reg[1][3] [1]),
        .I2(\doutMux_reg[1][5]_0 [2]),
        .I3(\bitSel_d_reg[1][3] [2]),
        .O(\ff_reg[1]_0 ));
  FDRE \ff_reg[0] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[0]_i_1__1_n_0 ),
        .Q(ff[0]),
        .R(rst));
  FDRE \ff_reg[1] 
       (.C(B_recclk),
        .CE(1'b1),
        .D(\ff[1]_i_1__1_n_0 ),
        .Q(ff[1]),
        .R(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_os48_1011x20bTo10b
   (D,
    A_dout20bEn0,
    A_dout10bEn,
    E,
    A_dout20bEn_i_reg,
    Q,
    rst,
    A_en,
    A_recclk,
    DOA,
    A_dout20bEn_i,
    A_din20b,
    bitOrderDinLSB,
    \edge_reg[3]_0 );
  output [9:0]D;
  output A_dout20bEn0;
  output A_dout10bEn;
  output [0:0]E;
  output A_dout20bEn_i_reg;
  output [3:0]Q;
  input rst;
  input A_en;
  input A_recclk;
  input [29:0]DOA;
  input A_dout20bEn_i;
  input [19:0]A_din20b;
  input bitOrderDinLSB;
  input [3:0]\edge_reg[3]_0 ;

  wire [19:0]A_din20b;
  wire A_dout10bEn;
  wire A_dout20bEn0;
  wire A_dout20bEn_i;
  wire A_dout20bEn_i_reg;
  wire A_en;
  wire A_recclk;
  wire [9:0]D;
  wire [29:0]DOA;
  wire [0:0]E;
  wire [3:0]Q;
  wire bankSel_d_reg_n_0;
  wire bitOrderDinLSB;
  wire [3:0]\bitSel_d_reg[0]_4 ;
  wire [3:0]\bitSel_d_reg[1]_5 ;
  wire [19:0]busInv;
  wire byteRdy_d_reg_n_0;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire [19:0]\din_d_reg[0]_0 ;
  wire [19:0]\din_d_reg[1]_1 ;
  wire \din_d_reg_n_0_[2][0] ;
  wire \doutMux[0][0]_i_2_n_0 ;
  wire \doutMux[0][0]_i_3_n_0 ;
  wire \doutMux[0][1]_i_2_n_0 ;
  wire \doutMux[0][1]_i_3_n_0 ;
  wire \doutMux[0][2]_i_2_n_0 ;
  wire \doutMux[0][2]_i_3_n_0 ;
  wire [2:0]\doutMux[0]_36 ;
  wire [2:0]\doutMux_reg[0]_2 ;
  wire [2:0]\doutMux_reg[1]_3 ;
  wire edge4x;
  wire \edge8x[0]_i_1_n_0 ;
  wire \edge8x[1]_i_1_n_0 ;
  wire \edge8x[2]_i_1_n_0 ;
  wire \edge8x[3]_i_1_n_0 ;
  wire \edge8x[4]_i_1_n_0 ;
  wire \edge8x[5]_i_1_n_0 ;
  wire \edge8x[6]_i_1_n_0 ;
  wire \edge8x[7]_i_2_n_0 ;
  wire \edge8x_reg_n_0_[0] ;
  wire \edge8x_reg_n_0_[1] ;
  wire \edge8x_reg_n_0_[3] ;
  wire \edge8x_reg_n_0_[5] ;
  wire \edge8x_reg_n_0_[7] ;
  wire \edge[0]_i_2_n_0 ;
  wire \edge[0]_i_3_n_0 ;
  wire \edge[1]_i_2_n_0 ;
  wire \edge[2]_i_2_n_0 ;
  wire \edge[3]_i_2_n_0 ;
  wire \edge[3]_i_3_n_0 ;
  wire [3:0]\edge_reg[3]_0 ;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2_n_0;
  wire index266_in;
  wire index269_in;
  wire index272_in;
  wire \index2_inferred__22/i__carry_n_3 ;
  wire \index2_inferred__23/i__carry_n_3 ;
  wire \index2_inferred__24/i__carry_n_3 ;
  wire [3:0]inp;
  wire p_0_in100_in;
  wire p_0_in102_in;
  wire p_0_in104_in;
  wire p_0_in106_in;
  wire p_0_in108_in;
  wire p_0_in110_in;
  wire p_0_in58_in;
  wire p_0_in64_in;
  wire p_0_in70_in;
  wire p_0_in91_in;
  wire p_0_in94_in;
  wire p_0_in96_in;
  wire p_0_in98_in;
  wire p_24_in;
  wire p_25_in;
  wire p_26_in;
  wire p_27_in;
  wire p_34_in;
  wire p_35_in;
  wire p_36_in;
  wire p_37_in;
  wire p_38_in;
  wire p_39_in;
  wire p_40_in;
  wire p_41_in;
  wire p_42_in;
  wire p_43_in;
  wire p_45_in;
  wire p_46_in;
  wire p_47_in;
  wire p_48_in;
  wire p_49_in;
  wire p_50_in;
  wire p_51_in;
  wire p_52_in;
  wire p_53_in;
  wire p_75_in;
  wire rst;
  wire \we_d_reg_n_0_[0][0] ;
  wire \we_d_reg_n_0_[0][1] ;
  wire \we_d_reg_n_0_[1][0] ;
  wire \we_d_reg_n_0_[1][1] ;
  wire \we_d_reg_n_0_[2][0] ;
  wire \we_d_reg_n_0_[2][1] ;
  wire \we_d_reg_n_0_[3][0] ;
  wire \we_d_reg_n_0_[3][1] ;
  wire \we_d_reg_n_0_[4][0] ;
  wire \we_d_reg_n_0_[4][1] ;
  wire \we_d_reg_n_0_[5][0] ;
  wire \we_d_reg_n_0_[5][1] ;
  wire \we_d_reg_n_0_[6][0] ;
  wire \we_d_reg_n_0_[6][1] ;
  wire \we_d_reg_n_0_[7][0] ;
  wire \we_d_reg_n_0_[7][1] ;
  wire \we_d_reg_n_0_[8][0] ;
  wire \we_d_reg_n_0_[8][1] ;
  wire \we_d_reg_n_0_[9][0] ;
  wire \we_d_reg_n_0_[9][1] ;
  wire [3:2]\NLW_index2_inferred__22/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__22/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_index2_inferred__23/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__23/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_index2_inferred__24/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__24/i__carry_O_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_10b_10 C_FFFIFO
       (.A_dout10bEn(A_dout10bEn),
        .A_dout20bEn0(A_dout20bEn0),
        .A_dout20bEn_i(A_dout20bEn_i),
        .A_dout20bEn_i_reg(A_dout20bEn_i_reg),
        .A_en(A_en),
        .A_recclk(A_recclk),
        .D(D),
        .E(E),
        .Q({\we_d_reg_n_0_[0][1] ,\we_d_reg_n_0_[0][0] }),
        .bankSel_d_reg(bankSel_d_reg_n_0),
        .\bitSel_d_reg[0][3] (\bitSel_d_reg[0]_4 ),
        .\bitSel_d_reg[1][3] (\bitSel_d_reg[1]_5 ),
        .byteRdy_d_reg(byteRdy_d_reg_n_0),
        .\doutMux_reg[1][2] (\doutMux_reg[1]_3 ),
        .rst(rst),
        .\we_d_reg[1][1] ({\we_d_reg_n_0_[1][1] ,\we_d_reg_n_0_[1][0] }),
        .\we_d_reg[2][1] ({\we_d_reg_n_0_[2][1] ,\we_d_reg_n_0_[2][0] }),
        .\we_d_reg[3][1] ({\we_d_reg_n_0_[3][1] ,\we_d_reg_n_0_[3][0] }),
        .\we_d_reg[4][1] ({\we_d_reg_n_0_[4][1] ,\we_d_reg_n_0_[4][0] }),
        .\we_d_reg[5][1] ({\we_d_reg_n_0_[5][1] ,\we_d_reg_n_0_[5][0] }),
        .\we_d_reg[6][1] ({\we_d_reg_n_0_[6][1] ,\we_d_reg_n_0_[6][0] }),
        .\we_d_reg[7][1] ({\we_d_reg_n_0_[7][1] ,\we_d_reg_n_0_[7][0] }),
        .\we_d_reg[8][1] ({\we_d_reg_n_0_[8][1] ,\we_d_reg_n_0_[8][0] }),
        .\we_d_reg[9][1] ({\we_d_reg_n_0_[9][1] ,\we_d_reg_n_0_[9][0] }));
  FDRE bankSel_d_reg
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[29]),
        .Q(bankSel_d_reg_n_0),
        .R(rst));
  FDRE \bitSel_d_reg[0][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[20]),
        .Q(\bitSel_d_reg[0]_4 [0]),
        .R(rst));
  FDRE \bitSel_d_reg[0][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[21]),
        .Q(\bitSel_d_reg[0]_4 [1]),
        .R(rst));
  FDRE \bitSel_d_reg[0][2] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[22]),
        .Q(\bitSel_d_reg[0]_4 [2]),
        .R(rst));
  FDRE \bitSel_d_reg[0][3] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[23]),
        .Q(\bitSel_d_reg[0]_4 [3]),
        .R(rst));
  FDRE \bitSel_d_reg[1][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[24]),
        .Q(\bitSel_d_reg[1]_5 [0]),
        .R(rst));
  FDRE \bitSel_d_reg[1][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[25]),
        .Q(\bitSel_d_reg[1]_5 [1]),
        .R(rst));
  FDRE \bitSel_d_reg[1][2] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[26]),
        .Q(\bitSel_d_reg[1]_5 [2]),
        .R(rst));
  FDRE \bitSel_d_reg[1][3] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[27]),
        .Q(\bitSel_d_reg[1]_5 [3]),
        .R(rst));
  FDRE byteRdy_d_reg
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[28]),
        .Q(byteRdy_d_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[0]_i_1 
       (.I0(A_din20b[19]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[0]),
        .O(busInv[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[1]_i_1 
       (.I0(A_din20b[18]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[1]),
        .O(busInv[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[2]_i_1 
       (.I0(A_din20b[17]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[2]),
        .O(busInv[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[3]_i_1 
       (.I0(A_din20b[16]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[3]),
        .O(busInv[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[4]_i_1 
       (.I0(A_din20b[15]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[4]),
        .O(busInv[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[5]_i_1 
       (.I0(A_din20b[14]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[5]),
        .O(busInv[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[6]_i_1 
       (.I0(A_din20b[13]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[6]),
        .O(busInv[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[7]_i_1 
       (.I0(A_din20b[12]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[7]),
        .O(busInv[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[8]_i_1 
       (.I0(A_din20b[11]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[8]),
        .O(busInv[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[9]_i_1 
       (.I0(A_din20b[10]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[9]),
        .O(busInv[9]));
  FDRE \din20b_d_reg[0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[0]),
        .Q(p_0_in91_in),
        .R(rst));
  FDRE \din20b_d_reg[1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[1]),
        .Q(p_0_in94_in),
        .R(rst));
  FDRE \din20b_d_reg[2] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[2]),
        .Q(p_0_in96_in),
        .R(rst));
  FDRE \din20b_d_reg[3] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[3]),
        .Q(p_0_in98_in),
        .R(rst));
  FDRE \din20b_d_reg[4] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[4]),
        .Q(p_0_in100_in),
        .R(rst));
  FDRE \din20b_d_reg[5] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[5]),
        .Q(p_0_in102_in),
        .R(rst));
  FDRE \din20b_d_reg[6] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[6]),
        .Q(p_0_in104_in),
        .R(rst));
  FDRE \din20b_d_reg[7] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[7]),
        .Q(p_0_in106_in),
        .R(rst));
  FDRE \din20b_d_reg[8] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[8]),
        .Q(p_0_in108_in),
        .R(rst));
  FDRE \din20b_d_reg[9] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[9]),
        .Q(p_0_in110_in),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][0]_i_1 
       (.I0(A_din20b[9]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[10]),
        .O(busInv[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][1]_i_1 
       (.I0(A_din20b[8]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[11]),
        .O(busInv[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][2]_i_1 
       (.I0(A_din20b[7]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[12]),
        .O(busInv[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][3]_i_1 
       (.I0(A_din20b[6]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[13]),
        .O(busInv[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][4]_i_1 
       (.I0(A_din20b[5]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[14]),
        .O(busInv[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][5]_i_1 
       (.I0(A_din20b[4]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[15]),
        .O(busInv[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][6]_i_1 
       (.I0(A_din20b[3]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[16]),
        .O(busInv[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][7]_i_1 
       (.I0(A_din20b[2]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[17]),
        .O(busInv[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][8]_i_1 
       (.I0(A_din20b[1]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[18]),
        .O(busInv[18]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][9]_i_1 
       (.I0(A_din20b[0]),
        .I1(bitOrderDinLSB),
        .I2(A_din20b[19]),
        .O(busInv[19]));
  FDRE \din_d_reg[0][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[10]),
        .Q(\din_d_reg[0]_0 [0]),
        .R(rst));
  FDRE \din_d_reg[0][10] 
       (.C(A_recclk),
        .CE(A_en),
        .D(p_0_in91_in),
        .Q(\din_d_reg[0]_0 [10]),
        .R(rst));
  FDRE \din_d_reg[0][11] 
       (.C(A_recclk),
        .CE(A_en),
        .D(p_0_in94_in),
        .Q(\din_d_reg[0]_0 [11]),
        .R(rst));
  FDRE \din_d_reg[0][12] 
       (.C(A_recclk),
        .CE(A_en),
        .D(p_0_in96_in),
        .Q(\din_d_reg[0]_0 [12]),
        .R(rst));
  FDRE \din_d_reg[0][13] 
       (.C(A_recclk),
        .CE(A_en),
        .D(p_0_in98_in),
        .Q(\din_d_reg[0]_0 [13]),
        .R(rst));
  FDRE \din_d_reg[0][14] 
       (.C(A_recclk),
        .CE(A_en),
        .D(p_0_in100_in),
        .Q(\din_d_reg[0]_0 [14]),
        .R(rst));
  FDRE \din_d_reg[0][15] 
       (.C(A_recclk),
        .CE(A_en),
        .D(p_0_in102_in),
        .Q(\din_d_reg[0]_0 [15]),
        .R(rst));
  FDRE \din_d_reg[0][16] 
       (.C(A_recclk),
        .CE(A_en),
        .D(p_0_in104_in),
        .Q(\din_d_reg[0]_0 [16]),
        .R(rst));
  FDRE \din_d_reg[0][17] 
       (.C(A_recclk),
        .CE(A_en),
        .D(p_0_in106_in),
        .Q(\din_d_reg[0]_0 [17]),
        .R(rst));
  FDRE \din_d_reg[0][18] 
       (.C(A_recclk),
        .CE(A_en),
        .D(p_0_in108_in),
        .Q(\din_d_reg[0]_0 [18]),
        .R(rst));
  FDRE \din_d_reg[0][19] 
       (.C(A_recclk),
        .CE(A_en),
        .D(p_0_in110_in),
        .Q(\din_d_reg[0]_0 [19]),
        .R(rst));
  FDRE \din_d_reg[0][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[11]),
        .Q(\din_d_reg[0]_0 [1]),
        .R(rst));
  FDRE \din_d_reg[0][2] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[12]),
        .Q(\din_d_reg[0]_0 [2]),
        .R(rst));
  FDRE \din_d_reg[0][3] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[13]),
        .Q(\din_d_reg[0]_0 [3]),
        .R(rst));
  FDRE \din_d_reg[0][4] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[14]),
        .Q(\din_d_reg[0]_0 [4]),
        .R(rst));
  FDRE \din_d_reg[0][5] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[15]),
        .Q(\din_d_reg[0]_0 [5]),
        .R(rst));
  FDRE \din_d_reg[0][6] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[16]),
        .Q(\din_d_reg[0]_0 [6]),
        .R(rst));
  FDRE \din_d_reg[0][7] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[17]),
        .Q(\din_d_reg[0]_0 [7]),
        .R(rst));
  FDRE \din_d_reg[0][8] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[18]),
        .Q(\din_d_reg[0]_0 [8]),
        .R(rst));
  FDRE \din_d_reg[0][9] 
       (.C(A_recclk),
        .CE(A_en),
        .D(busInv[19]),
        .Q(\din_d_reg[0]_0 [9]),
        .R(rst));
  FDRE \din_d_reg[1][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [0]),
        .Q(\din_d_reg[1]_1 [0]),
        .R(rst));
  FDRE \din_d_reg[1][10] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [10]),
        .Q(\din_d_reg[1]_1 [10]),
        .R(rst));
  FDRE \din_d_reg[1][11] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [11]),
        .Q(\din_d_reg[1]_1 [11]),
        .R(rst));
  FDRE \din_d_reg[1][12] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [12]),
        .Q(\din_d_reg[1]_1 [12]),
        .R(rst));
  FDRE \din_d_reg[1][13] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [13]),
        .Q(\din_d_reg[1]_1 [13]),
        .R(rst));
  FDRE \din_d_reg[1][14] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [14]),
        .Q(\din_d_reg[1]_1 [14]),
        .R(rst));
  FDRE \din_d_reg[1][15] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [15]),
        .Q(\din_d_reg[1]_1 [15]),
        .R(rst));
  FDRE \din_d_reg[1][16] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [16]),
        .Q(\din_d_reg[1]_1 [16]),
        .R(rst));
  FDRE \din_d_reg[1][17] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [17]),
        .Q(\din_d_reg[1]_1 [17]),
        .R(rst));
  FDRE \din_d_reg[1][18] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [18]),
        .Q(\din_d_reg[1]_1 [18]),
        .R(rst));
  FDRE \din_d_reg[1][19] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [19]),
        .Q(\din_d_reg[1]_1 [19]),
        .R(rst));
  FDRE \din_d_reg[1][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [1]),
        .Q(\din_d_reg[1]_1 [1]),
        .R(rst));
  FDRE \din_d_reg[1][2] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [2]),
        .Q(\din_d_reg[1]_1 [2]),
        .R(rst));
  FDRE \din_d_reg[1][3] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [3]),
        .Q(\din_d_reg[1]_1 [3]),
        .R(rst));
  FDRE \din_d_reg[1][4] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [4]),
        .Q(\din_d_reg[1]_1 [4]),
        .R(rst));
  FDRE \din_d_reg[1][5] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [5]),
        .Q(\din_d_reg[1]_1 [5]),
        .R(rst));
  FDRE \din_d_reg[1][6] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [6]),
        .Q(\din_d_reg[1]_1 [6]),
        .R(rst));
  FDRE \din_d_reg[1][7] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [7]),
        .Q(\din_d_reg[1]_1 [7]),
        .R(rst));
  FDRE \din_d_reg[1][8] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [8]),
        .Q(\din_d_reg[1]_1 [8]),
        .R(rst));
  FDRE \din_d_reg[1][9] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[0]_0 [9]),
        .Q(\din_d_reg[1]_1 [9]),
        .R(rst));
  FDRE \din_d_reg[2][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [0]),
        .Q(\din_d_reg_n_0_[2][0] ),
        .R(rst));
  FDRE \din_d_reg[2][10] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [10]),
        .Q(p_43_in),
        .R(rst));
  FDRE \din_d_reg[2][11] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [11]),
        .Q(p_42_in),
        .R(rst));
  FDRE \din_d_reg[2][12] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [12]),
        .Q(p_41_in),
        .R(rst));
  FDRE \din_d_reg[2][13] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [13]),
        .Q(p_40_in),
        .R(rst));
  FDRE \din_d_reg[2][14] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [14]),
        .Q(p_39_in),
        .R(rst));
  FDRE \din_d_reg[2][15] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [15]),
        .Q(p_38_in),
        .R(rst));
  FDRE \din_d_reg[2][16] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [16]),
        .Q(p_37_in),
        .R(rst));
  FDRE \din_d_reg[2][17] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [17]),
        .Q(p_36_in),
        .R(rst));
  FDRE \din_d_reg[2][18] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [18]),
        .Q(p_35_in),
        .R(rst));
  FDRE \din_d_reg[2][19] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [19]),
        .Q(p_34_in),
        .R(rst));
  FDRE \din_d_reg[2][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [1]),
        .Q(data1),
        .R(rst));
  FDRE \din_d_reg[2][20] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg_n_0_[2][0] ),
        .Q(p_75_in),
        .R(rst));
  FDRE \din_d_reg[2][21] 
       (.C(A_recclk),
        .CE(A_en),
        .D(data1),
        .Q(p_53_in),
        .R(rst));
  FDRE \din_d_reg[2][22] 
       (.C(A_recclk),
        .CE(A_en),
        .D(data2),
        .Q(p_52_in),
        .R(rst));
  FDRE \din_d_reg[2][23] 
       (.C(A_recclk),
        .CE(A_en),
        .D(data3),
        .Q(p_51_in),
        .R(rst));
  FDRE \din_d_reg[2][24] 
       (.C(A_recclk),
        .CE(A_en),
        .D(data4),
        .Q(p_50_in),
        .R(rst));
  FDRE \din_d_reg[2][25] 
       (.C(A_recclk),
        .CE(A_en),
        .D(data5),
        .Q(p_49_in),
        .R(rst));
  FDRE \din_d_reg[2][26] 
       (.C(A_recclk),
        .CE(A_en),
        .D(p_27_in),
        .Q(p_48_in),
        .R(rst));
  FDRE \din_d_reg[2][27] 
       (.C(A_recclk),
        .CE(A_en),
        .D(p_26_in),
        .Q(p_47_in),
        .R(rst));
  FDRE \din_d_reg[2][28] 
       (.C(A_recclk),
        .CE(A_en),
        .D(p_25_in),
        .Q(p_46_in),
        .R(rst));
  FDRE \din_d_reg[2][29] 
       (.C(A_recclk),
        .CE(A_en),
        .D(p_24_in),
        .Q(p_45_in),
        .R(rst));
  FDRE \din_d_reg[2][2] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [2]),
        .Q(data2),
        .R(rst));
  FDRE \din_d_reg[2][3] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [3]),
        .Q(data3),
        .R(rst));
  FDRE \din_d_reg[2][4] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [4]),
        .Q(data4),
        .R(rst));
  FDRE \din_d_reg[2][5] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [5]),
        .Q(data5),
        .R(rst));
  FDRE \din_d_reg[2][6] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [6]),
        .Q(p_27_in),
        .R(rst));
  FDRE \din_d_reg[2][7] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [7]),
        .Q(p_26_in),
        .R(rst));
  FDRE \din_d_reg[2][8] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [8]),
        .Q(p_25_in),
        .R(rst));
  FDRE \din_d_reg[2][9] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\din_d_reg[1]_1 [9]),
        .Q(p_24_in),
        .R(rst));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutMux[0][0]_i_1 
       (.I0(p_40_in),
        .I1(\edge_reg[3]_0 [3]),
        .I2(\doutMux[0][0]_i_2_n_0 ),
        .I3(\edge_reg[3]_0 [2]),
        .I4(\doutMux[0][0]_i_3_n_0 ),
        .O(\doutMux[0]_36 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][0]_i_2 
       (.I0(p_40_in),
        .I1(p_41_in),
        .I2(\edge_reg[3]_0 [1]),
        .I3(p_42_in),
        .I4(\edge_reg[3]_0 [0]),
        .I5(p_43_in),
        .O(\doutMux[0][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][0]_i_3 
       (.I0(p_24_in),
        .I1(p_25_in),
        .I2(\edge_reg[3]_0 [1]),
        .I3(p_26_in),
        .I4(\edge_reg[3]_0 [0]),
        .I5(p_27_in),
        .O(\doutMux[0][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutMux[0][1]_i_1 
       (.I0(p_53_in),
        .I1(\edge_reg[3]_0 [3]),
        .I2(\doutMux[0][1]_i_2_n_0 ),
        .I3(\edge_reg[3]_0 [2]),
        .I4(\doutMux[0][1]_i_3_n_0 ),
        .O(\doutMux[0]_36 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][1]_i_2 
       (.I0(p_53_in),
        .I1(p_75_in),
        .I2(\edge_reg[3]_0 [1]),
        .I3(p_34_in),
        .I4(\edge_reg[3]_0 [0]),
        .I5(p_35_in),
        .O(\doutMux[0][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][1]_i_3 
       (.I0(p_36_in),
        .I1(p_37_in),
        .I2(\edge_reg[3]_0 [1]),
        .I3(p_38_in),
        .I4(\edge_reg[3]_0 [0]),
        .I5(p_39_in),
        .O(\doutMux[0][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutMux[0][2]_i_1 
       (.I0(p_45_in),
        .I1(\edge_reg[3]_0 [3]),
        .I2(\doutMux[0][2]_i_2_n_0 ),
        .I3(\edge_reg[3]_0 [2]),
        .I4(\doutMux[0][2]_i_3_n_0 ),
        .O(\doutMux[0]_36 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][2]_i_2 
       (.I0(p_45_in),
        .I1(p_46_in),
        .I2(\edge_reg[3]_0 [1]),
        .I3(p_47_in),
        .I4(\edge_reg[3]_0 [0]),
        .I5(p_48_in),
        .O(\doutMux[0][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][2]_i_3 
       (.I0(p_49_in),
        .I1(p_50_in),
        .I2(\edge_reg[3]_0 [1]),
        .I3(p_51_in),
        .I4(\edge_reg[3]_0 [0]),
        .I5(p_52_in),
        .O(\doutMux[0][2]_i_3_n_0 ));
  FDRE \doutMux_reg[0][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\doutMux[0]_36 [0]),
        .Q(\doutMux_reg[0]_2 [0]),
        .R(rst));
  FDRE \doutMux_reg[0][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\doutMux[0]_36 [1]),
        .Q(\doutMux_reg[0]_2 [1]),
        .R(rst));
  FDRE \doutMux_reg[0][2] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\doutMux[0]_36 [2]),
        .Q(\doutMux_reg[0]_2 [2]),
        .R(rst));
  FDRE \doutMux_reg[1][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\doutMux_reg[0]_2 [0]),
        .Q(\doutMux_reg[1]_3 [0]),
        .R(rst));
  FDRE \doutMux_reg[1][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\doutMux_reg[0]_2 [1]),
        .Q(\doutMux_reg[1]_3 [1]),
        .R(rst));
  FDRE \doutMux_reg[1][2] 
       (.C(A_recclk),
        .CE(A_en),
        .D(\doutMux_reg[0]_2 [2]),
        .Q(\doutMux_reg[1]_3 [2]),
        .R(rst));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \edge8x[0]_i_1 
       (.I0(p_0_in98_in),
        .I1(p_0_in100_in),
        .I2(\din_d_reg[0]_0 [1]),
        .I3(\din_d_reg[0]_0 [2]),
        .I4(busInv[15]),
        .I5(busInv[16]),
        .O(\edge8x[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \edge8x[1]_i_1 
       (.I0(p_0_in100_in),
        .I1(p_0_in102_in),
        .I2(\din_d_reg[0]_0 [2]),
        .I3(\din_d_reg[0]_0 [3]),
        .I4(busInv[16]),
        .I5(busInv[17]),
        .O(\edge8x[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \edge8x[2]_i_1 
       (.I0(p_0_in102_in),
        .I1(p_0_in104_in),
        .I2(\din_d_reg[0]_0 [3]),
        .I3(\din_d_reg[0]_0 [4]),
        .I4(busInv[17]),
        .I5(busInv[18]),
        .O(\edge8x[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \edge8x[3]_i_1 
       (.I0(p_0_in104_in),
        .I1(p_0_in106_in),
        .I2(\din_d_reg[0]_0 [4]),
        .I3(\din_d_reg[0]_0 [5]),
        .I4(busInv[18]),
        .I5(busInv[19]),
        .O(\edge8x[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \edge8x[4]_i_1 
       (.I0(p_0_in106_in),
        .I1(p_0_in108_in),
        .I2(\din_d_reg[0]_0 [5]),
        .I3(\din_d_reg[0]_0 [6]),
        .I4(busInv[19]),
        .I5(p_0_in91_in),
        .O(\edge8x[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \edge8x[5]_i_1 
       (.I0(\din_d_reg[0]_0 [7]),
        .I1(\din_d_reg[0]_0 [6]),
        .I2(p_0_in108_in),
        .I3(p_0_in110_in),
        .I4(p_0_in91_in),
        .I5(p_0_in94_in),
        .O(\edge8x[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \edge8x[6]_i_1 
       (.I0(\din_d_reg[0]_0 [8]),
        .I1(\din_d_reg[0]_0 [7]),
        .I2(p_0_in94_in),
        .I3(p_0_in96_in),
        .I4(p_0_in110_in),
        .I5(\din_d_reg[0]_0 [0]),
        .O(\edge8x[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \edge8x[7]_i_1 
       (.I0(A_en),
        .I1(rst),
        .O(edge4x));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \edge8x[7]_i_2 
       (.I0(\din_d_reg[0]_0 [9]),
        .I1(\din_d_reg[0]_0 [8]),
        .I2(\din_d_reg[0]_0 [0]),
        .I3(\din_d_reg[0]_0 [1]),
        .I4(p_0_in96_in),
        .I5(p_0_in98_in),
        .O(\edge8x[7]_i_2_n_0 ));
  FDRE \edge8x_reg[0] 
       (.C(A_recclk),
        .CE(edge4x),
        .D(\edge8x[0]_i_1_n_0 ),
        .Q(\edge8x_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \edge8x_reg[1] 
       (.C(A_recclk),
        .CE(edge4x),
        .D(\edge8x[1]_i_1_n_0 ),
        .Q(\edge8x_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \edge8x_reg[2] 
       (.C(A_recclk),
        .CE(edge4x),
        .D(\edge8x[2]_i_1_n_0 ),
        .Q(p_0_in58_in),
        .R(1'b0));
  FDRE \edge8x_reg[3] 
       (.C(A_recclk),
        .CE(edge4x),
        .D(\edge8x[3]_i_1_n_0 ),
        .Q(\edge8x_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \edge8x_reg[4] 
       (.C(A_recclk),
        .CE(edge4x),
        .D(\edge8x[4]_i_1_n_0 ),
        .Q(p_0_in64_in),
        .R(1'b0));
  FDRE \edge8x_reg[5] 
       (.C(A_recclk),
        .CE(edge4x),
        .D(\edge8x[5]_i_1_n_0 ),
        .Q(\edge8x_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \edge8x_reg[6] 
       (.C(A_recclk),
        .CE(edge4x),
        .D(\edge8x[6]_i_1_n_0 ),
        .Q(p_0_in70_in),
        .R(1'b0));
  FDRE \edge8x_reg[7] 
       (.C(A_recclk),
        .CE(edge4x),
        .D(\edge8x[7]_i_2_n_0 ),
        .Q(\edge8x_reg_n_0_[7] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hEA)) 
    \edge[0]_i_1 
       (.I0(\edge[0]_i_2_n_0 ),
        .I1(\edge8x_reg_n_0_[7] ),
        .I2(index272_in),
        .O(inp[0]));
  LUT6 #(
    .INIT(64'h00000000AAFBAAFA)) 
    \edge[0]_i_2 
       (.I0(\edge[3]_i_3_n_0 ),
        .I1(p_0_in58_in),
        .I2(\edge8x_reg_n_0_[1] ),
        .I3(\edge8x_reg_n_0_[0] ),
        .I4(\edge8x_reg_n_0_[3] ),
        .I5(\edge[0]_i_3_n_0 ),
        .O(\edge[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edge[0]_i_3 
       (.I0(index269_in),
        .I1(p_0_in70_in),
        .O(\edge[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \edge[1]_i_1 
       (.I0(\edge[1]_i_2_n_0 ),
        .I1(index272_in),
        .I2(\edge8x_reg_n_0_[7] ),
        .I3(index269_in),
        .I4(p_0_in70_in),
        .O(inp[1]));
  LUT6 #(
    .INIT(64'h0000000E000E000E)) 
    \edge[1]_i_2 
       (.I0(p_0_in58_in),
        .I1(\edge8x_reg_n_0_[3] ),
        .I2(\edge8x_reg_n_0_[0] ),
        .I3(\edge8x_reg_n_0_[1] ),
        .I4(\edge8x_reg_n_0_[5] ),
        .I5(index266_in),
        .O(\edge[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \edge[2]_i_1 
       (.I0(\edge[3]_i_3_n_0 ),
        .I1(\edge[2]_i_2_n_0 ),
        .I2(index272_in),
        .I3(\edge8x_reg_n_0_[7] ),
        .I4(index269_in),
        .I5(p_0_in70_in),
        .O(inp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \edge[2]_i_2 
       (.I0(p_0_in64_in),
        .I1(p_0_in58_in),
        .I2(\edge8x_reg_n_0_[3] ),
        .I3(\edge8x_reg_n_0_[0] ),
        .I4(\edge8x_reg_n_0_[1] ),
        .O(\edge[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000022202220222)) 
    \edge[3]_i_1 
       (.I0(\edge[3]_i_2_n_0 ),
        .I1(\edge[3]_i_3_n_0 ),
        .I2(p_0_in70_in),
        .I3(index269_in),
        .I4(\edge8x_reg_n_0_[7] ),
        .I5(index272_in),
        .O(inp[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \edge[3]_i_2 
       (.I0(p_0_in64_in),
        .I1(p_0_in58_in),
        .I2(\edge8x_reg_n_0_[3] ),
        .I3(\edge8x_reg_n_0_[0] ),
        .I4(\edge8x_reg_n_0_[1] ),
        .O(\edge[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \edge[3]_i_3 
       (.I0(index266_in),
        .I1(\edge8x_reg_n_0_[5] ),
        .O(\edge[3]_i_3_n_0 ));
  FDRE \edge_reg[0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(inp[0]),
        .Q(Q[0]),
        .R(rst));
  FDRE \edge_reg[1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(inp[1]),
        .Q(Q[1]),
        .R(rst));
  FDRE \edge_reg[2] 
       (.C(A_recclk),
        .CE(A_en),
        .D(inp[2]),
        .Q(Q[2]),
        .R(rst));
  FDRE \edge_reg[3] 
       (.C(A_recclk),
        .CE(A_en),
        .D(inp[3]),
        .Q(Q[3]),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    i__carry_i_1
       (.I0(\edge8x_reg_n_0_[1] ),
        .I1(\edge8x_reg_n_0_[0] ),
        .I2(\edge8x_reg_n_0_[3] ),
        .I3(p_0_in58_in),
        .I4(p_0_in64_in),
        .I5(\edge[3]_i_3_n_0 ),
        .O(i__carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h07770000)) 
    i__carry_i_1__0
       (.I0(index269_in),
        .I1(p_0_in70_in),
        .I2(index266_in),
        .I3(\edge8x_reg_n_0_[5] ),
        .I4(\edge[3]_i_2_n_0 ),
        .O(i__carry_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    i__carry_i_1__1
       (.I0(p_0_in64_in),
        .I1(p_0_in58_in),
        .I2(\edge8x_reg_n_0_[3] ),
        .I3(\edge8x_reg_n_0_[0] ),
        .I4(\edge8x_reg_n_0_[1] ),
        .O(i__carry_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000015)) 
    i__carry_i_2
       (.I0(\edge[1]_i_2_n_0 ),
        .I1(p_0_in70_in),
        .I2(index269_in),
        .I3(\edge[3]_i_3_n_0 ),
        .I4(\edge[2]_i_2_n_0 ),
        .I5(\edge[0]_i_2_n_0 ),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h5555000055550001)) 
    i__carry_i_2__0
       (.I0(\edge[3]_i_3_n_0 ),
        .I1(p_0_in64_in),
        .I2(p_0_in58_in),
        .I3(\edge8x_reg_n_0_[3] ),
        .I4(\edge8x_reg_n_0_[0] ),
        .I5(\edge8x_reg_n_0_[1] ),
        .O(i__carry_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hCCCCCCCD)) 
    i__carry_i_2__1
       (.I0(\edge8x_reg_n_0_[1] ),
        .I1(\edge8x_reg_n_0_[0] ),
        .I2(\edge8x_reg_n_0_[3] ),
        .I3(p_0_in58_in),
        .I4(p_0_in64_in),
        .O(i__carry_i_2__1_n_0));
  CARRY4 \index2_inferred__22/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__22/i__carry_CO_UNCONNECTED [3:2],index266_in,\index2_inferred__22/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__22/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__1_n_0,i__carry_i_2__1_n_0}));
  CARRY4 \index2_inferred__23/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__23/i__carry_CO_UNCONNECTED [3:2],index269_in,\index2_inferred__23/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__23/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1_n_0,i__carry_i_2__0_n_0}));
  CARRY4 \index2_inferred__24/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__24/i__carry_CO_UNCONNECTED [3:2],index272_in,\index2_inferred__24/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__24/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__0_n_0,i__carry_i_2_n_0}));
  FDRE \we_d_reg[0][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[0]),
        .Q(\we_d_reg_n_0_[0][0] ),
        .R(rst));
  FDRE \we_d_reg[0][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[1]),
        .Q(\we_d_reg_n_0_[0][1] ),
        .R(rst));
  FDRE \we_d_reg[1][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[2]),
        .Q(\we_d_reg_n_0_[1][0] ),
        .R(rst));
  FDRE \we_d_reg[1][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[3]),
        .Q(\we_d_reg_n_0_[1][1] ),
        .R(rst));
  FDRE \we_d_reg[2][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[4]),
        .Q(\we_d_reg_n_0_[2][0] ),
        .R(rst));
  FDRE \we_d_reg[2][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[5]),
        .Q(\we_d_reg_n_0_[2][1] ),
        .R(rst));
  FDRE \we_d_reg[3][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[6]),
        .Q(\we_d_reg_n_0_[3][0] ),
        .R(rst));
  FDRE \we_d_reg[3][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[7]),
        .Q(\we_d_reg_n_0_[3][1] ),
        .R(rst));
  FDRE \we_d_reg[4][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[8]),
        .Q(\we_d_reg_n_0_[4][0] ),
        .R(rst));
  FDRE \we_d_reg[4][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[9]),
        .Q(\we_d_reg_n_0_[4][1] ),
        .R(rst));
  FDRE \we_d_reg[5][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[10]),
        .Q(\we_d_reg_n_0_[5][0] ),
        .R(rst));
  FDRE \we_d_reg[5][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[11]),
        .Q(\we_d_reg_n_0_[5][1] ),
        .R(rst));
  FDRE \we_d_reg[6][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[12]),
        .Q(\we_d_reg_n_0_[6][0] ),
        .R(rst));
  FDRE \we_d_reg[6][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[13]),
        .Q(\we_d_reg_n_0_[6][1] ),
        .R(rst));
  FDRE \we_d_reg[7][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[14]),
        .Q(\we_d_reg_n_0_[7][0] ),
        .R(rst));
  FDRE \we_d_reg[7][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[15]),
        .Q(\we_d_reg_n_0_[7][1] ),
        .R(rst));
  FDRE \we_d_reg[8][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[16]),
        .Q(\we_d_reg_n_0_[8][0] ),
        .R(rst));
  FDRE \we_d_reg[8][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[17]),
        .Q(\we_d_reg_n_0_[8][1] ),
        .R(rst));
  FDRE \we_d_reg[9][0] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[18]),
        .Q(\we_d_reg_n_0_[9][0] ),
        .R(rst));
  FDRE \we_d_reg[9][1] 
       (.C(A_recclk),
        .CE(A_en),
        .D(DOA[19]),
        .Q(\we_d_reg_n_0_[9][1] ),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "os48_1011x20bTo10b" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_os48_1011x20bTo10b_0
   (D,
    p_24_in,
    p_25_in,
    B_dout20bEn0,
    E,
    \doutMux_reg[0][2]_0 ,
    Q,
    \doutMux_reg[0][1]_0 ,
    \doutMux_reg[0][0]_0 ,
    B_dout20bEn_i_reg,
    bankSel_d_reg_0,
    rst,
    B_en,
    B_recclk,
    DOB,
    B_dout20bEn_i,
    B_din20b,
    bitOrderDinLSB,
    ADDRB,
    \din_d_reg[2][28]_0 ,
    \din_d_reg[2][9]_0 ,
    \din_d_reg[2][18]_0 );
  output [9:0]D;
  output p_24_in;
  output p_25_in;
  output B_dout20bEn0;
  output [0:0]E;
  output \doutMux_reg[0][2]_0 ;
  output [3:0]Q;
  output \doutMux_reg[0][1]_0 ;
  output \doutMux_reg[0][0]_0 ;
  output B_dout20bEn_i_reg;
  output [3:0]bankSel_d_reg_0;
  input rst;
  input B_en;
  input B_recclk;
  input [29:0]DOB;
  input B_dout20bEn_i;
  input [19:0]B_din20b;
  input bitOrderDinLSB;
  input [5:0]ADDRB;
  input \din_d_reg[2][28]_0 ;
  input \din_d_reg[2][9]_0 ;
  input \din_d_reg[2][18]_0 ;

  wire [5:0]ADDRB;
  wire [19:0]B_din20b;
  wire B_dout20bEn0;
  wire B_dout20bEn_i;
  wire B_dout20bEn_i_reg;
  wire B_en;
  wire B_recclk;
  wire [9:0]D;
  wire [29:0]DOB;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]bankSel_d_reg_0;
  wire bankSel_d_reg_n_0;
  wire bitOrderDinLSB;
  wire [3:0]\bitSel_d_reg[0]_10 ;
  wire [3:0]\bitSel_d_reg[1]_11 ;
  wire byteRdy_d_reg_n_0;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire \din20b_d[0]_i_1__0_n_0 ;
  wire \din20b_d[1]_i_1__0_n_0 ;
  wire \din20b_d[2]_i_1__0_n_0 ;
  wire \din20b_d[3]_i_1__0_n_0 ;
  wire \din20b_d[4]_i_1__0_n_0 ;
  wire \din20b_d[5]_i_1__0_n_0 ;
  wire \din20b_d[6]_i_1__0_n_0 ;
  wire \din20b_d[7]_i_1__0_n_0 ;
  wire \din20b_d[8]_i_1__0_n_0 ;
  wire \din20b_d[9]_i_1__0_n_0 ;
  wire \din_d[0][0]_i_1__0_n_0 ;
  wire \din_d[0][1]_i_1__0_n_0 ;
  wire \din_d[0][2]_i_1__0_n_0 ;
  wire \din_d[0][3]_i_1__0_n_0 ;
  wire \din_d[0][4]_i_1__0_n_0 ;
  wire \din_d[0][5]_i_1__0_n_0 ;
  wire \din_d[0][6]_i_1__0_n_0 ;
  wire \din_d[0][7]_i_1__0_n_0 ;
  wire \din_d[0][8]_i_1__0_n_0 ;
  wire \din_d[0][9]_i_1__0_n_0 ;
  wire [19:0]\din_d_reg[0]_6 ;
  wire [19:0]\din_d_reg[1]_7 ;
  wire \din_d_reg[2][18]_0 ;
  wire \din_d_reg[2][28]_0 ;
  wire \din_d_reg[2][9]_0 ;
  wire \din_d_reg_n_0_[2][0] ;
  wire \doutMux[0][0]_i_11_n_0 ;
  wire \doutMux[0][0]_i_12_n_0 ;
  wire \doutMux[0][0]_i_13_n_0 ;
  wire \doutMux[0][0]_i_14_n_0 ;
  wire \doutMux[0][0]_i_2__0_n_0 ;
  wire \doutMux[0][0]_i_3__0_n_0 ;
  wire \doutMux[0][0]_i_5_n_0 ;
  wire \doutMux[0][0]_i_7_n_0 ;
  wire \doutMux[0][0]_i_8_n_0 ;
  wire \doutMux[0][1]_i_2__0_n_0 ;
  wire \doutMux[0][1]_i_3__0_n_0 ;
  wire \doutMux[0][1]_i_5_n_0 ;
  wire \doutMux[0][1]_i_6_n_0 ;
  wire \doutMux[0][1]_i_7_n_0 ;
  wire \doutMux[0][1]_i_8_n_0 ;
  wire \doutMux[0][2]_i_2__0_n_0 ;
  wire \doutMux[0][2]_i_3__0_n_0 ;
  wire \doutMux[0][2]_i_5_n_0 ;
  wire \doutMux[0][2]_i_6_n_0 ;
  wire \doutMux[0][2]_i_7_n_0 ;
  wire \doutMux[0][2]_i_8_n_0 ;
  wire \doutMux[0][3]_i_2_n_0 ;
  wire \doutMux[0][4]_i_2_n_0 ;
  wire \doutMux[0][5]_i_2_n_0 ;
  wire [5:0]\doutMux[0]_37 ;
  wire \doutMux_reg[0][0]_0 ;
  wire \doutMux_reg[0][0]_i_6_n_0 ;
  wire \doutMux_reg[0][1]_0 ;
  wire \doutMux_reg[0][2]_0 ;
  wire [5:0]\doutMux_reg[0]_8 ;
  wire [5:0]\doutMux_reg[1]_9 ;
  wire \edge10x[0]_i_1_n_0 ;
  wire \edge10x[1]_i_1_n_0 ;
  wire \edge10x[2]_i_1_n_0 ;
  wire \edge10x[3]_i_1_n_0 ;
  wire \edge10x[4]_i_1_n_0 ;
  wire \edge10x[5]_i_1_n_0 ;
  wire \edge10x[6]_i_1_n_0 ;
  wire \edge10x[7]_i_1_n_0 ;
  wire \edge10x[8]_i_1_n_0 ;
  wire \edge10x[9]_i_1_n_0 ;
  wire \edge10x_reg_n_0_[0] ;
  wire \edge10x_reg_n_0_[1] ;
  wire \edge10x_reg_n_0_[3] ;
  wire \edge11x[0]_i_1_n_0 ;
  wire \edge11x[10]_i_2_n_0 ;
  wire \edge11x[1]_i_1_n_0 ;
  wire \edge11x[2]_i_1_n_0 ;
  wire \edge11x[2]_i_2_n_0 ;
  wire \edge11x[3]_i_1_n_0 ;
  wire \edge11x[4]_i_1_n_0 ;
  wire \edge11x[5]_i_1_n_0 ;
  wire \edge11x[6]_i_1_n_0 ;
  wire \edge11x[7]_i_1_n_0 ;
  wire \edge11x[8]_i_1_n_0 ;
  wire \edge11x[9]_i_1_n_0 ;
  wire \edge11x_reg_n_0_[0] ;
  wire \edge11x_reg_n_0_[1] ;
  wire \edge11x_reg_n_0_[3] ;
  wire \edge11x_reg_n_0_[5] ;
  wire \edge11x_reg_n_0_[7] ;
  wire \edge11x_reg_n_0_[9] ;
  wire edge4x;
  wire \edge4x[0]_i_1_n_0 ;
  wire \edge4x_reg_n_0_[0] ;
  wire \edge4x_reg_n_0_[1] ;
  wire \edge4x_reg_n_0_[2] ;
  wire \edge4x_reg_n_0_[3] ;
  wire \edge8x[0]_i_1__0_n_0 ;
  wire \edge8x[0]_i_2_n_0 ;
  wire \edge8x[1]_i_1__0_n_0 ;
  wire \edge8x[1]_i_2_n_0 ;
  wire \edge8x[2]_i_1__0_n_0 ;
  wire \edge8x[2]_i_2_n_0 ;
  wire \edge8x[3]_i_1__0_n_0 ;
  wire \edge8x[3]_i_2_n_0 ;
  wire \edge8x[4]_i_1__0_n_0 ;
  wire \edge8x[5]_i_1__0_n_0 ;
  wire \edge8x[6]_i_1__0_n_0 ;
  wire \edge8x[7]_i_1__0_n_0 ;
  wire \edge8x_reg_n_0_[0] ;
  wire \edge8x_reg_n_0_[1] ;
  wire \edge8x_reg_n_0_[3] ;
  wire \edge8x_reg_n_0_[5] ;
  wire \edge8x_reg_n_0_[7] ;
  wire \edge[0]_i_10_n_0 ;
  wire \edge[0]_i_11_n_0 ;
  wire \edge[0]_i_12_n_0 ;
  wire \edge[0]_i_13_n_0 ;
  wire \edge[0]_i_1__0_n_0 ;
  wire \edge[0]_i_2__0_n_0 ;
  wire \edge[0]_i_3__0_n_0 ;
  wire \edge[0]_i_4_n_0 ;
  wire \edge[0]_i_5_n_0 ;
  wire \edge[0]_i_6_n_0 ;
  wire \edge[0]_i_7_n_0 ;
  wire \edge[0]_i_8_n_0 ;
  wire \edge[0]_i_9_n_0 ;
  wire \edge[1]_i_1__0_n_0 ;
  wire \edge[1]_i_2__0_n_0 ;
  wire \edge[1]_i_3_n_0 ;
  wire \edge[1]_i_4_n_0 ;
  wire \edge[1]_i_5_n_0 ;
  wire \edge[1]_i_6_n_0 ;
  wire \edge[1]_i_7_n_0 ;
  wire \edge[2]_i_1__0_n_0 ;
  wire \edge[2]_i_2__0_n_0 ;
  wire \edge[2]_i_3_n_0 ;
  wire \edge[2]_i_4_n_0 ;
  wire \edge[2]_i_5_n_0 ;
  wire \edge[2]_i_6_n_0 ;
  wire \edge[2]_i_7_n_0 ;
  wire \edge[3]_i_1__0_n_0 ;
  wire \edge[3]_i_2__0_n_0 ;
  wire \edge[3]_i_3__0_n_0 ;
  wire \edge[3]_i_4_n_0 ;
  wire \edge[3]_i_5_n_0 ;
  wire \edge[3]_i_6_n_0 ;
  wire \edge[3]_i_7_n_0 ;
  wire [3:1]extractEdge;
  wire i__carry_i_1__10_n_0;
  wire i__carry_i_1__11_n_0;
  wire i__carry_i_1__12_n_0;
  wire i__carry_i_1__13_n_0;
  wire i__carry_i_1__14_n_0;
  wire i__carry_i_1__15_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1__5_n_0;
  wire i__carry_i_1__6_n_0;
  wire i__carry_i_1__7_n_0;
  wire i__carry_i_1__8_n_0;
  wire i__carry_i_1__9_n_0;
  wire i__carry_i_2__10_n_0;
  wire i__carry_i_2__11_n_0;
  wire i__carry_i_2__12_n_0;
  wire i__carry_i_2__13_n_0;
  wire i__carry_i_2__14_n_0;
  wire i__carry_i_2__15_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2__5_n_0;
  wire i__carry_i_2__6_n_0;
  wire i__carry_i_2__7_n_0;
  wire i__carry_i_2__8_n_0;
  wire i__carry_i_2__9_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3__5_n_0;
  wire i__carry_i_3__6_n_0;
  wire i__carry_i_3__7_n_0;
  wire i__carry_i_3__8_n_0;
  wire i__carry_i_3__9_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_4__5_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire index212_in;
  wire index215_in;
  wire index218_in;
  wire index221_in;
  wire index224_in;
  wire index239_in;
  wire index242_in;
  wire index245_in;
  wire index248_in;
  wire index251_in;
  wire index266_in;
  wire index269_in;
  wire index272_in;
  wire index29_in;
  wire \index2_inferred__13/i__carry_n_3 ;
  wire \index2_inferred__14/i__carry_n_3 ;
  wire \index2_inferred__15/i__carry_n_3 ;
  wire \index2_inferred__16/i__carry_n_3 ;
  wire \index2_inferred__17/i__carry_n_3 ;
  wire \index2_inferred__22/i__carry_n_3 ;
  wire \index2_inferred__23/i__carry_n_3 ;
  wire \index2_inferred__24/i__carry_n_3 ;
  wire \index2_inferred__3/i__carry_n_3 ;
  wire \index2_inferred__4/i__carry_n_3 ;
  wire \index2_inferred__5/i__carry_n_3 ;
  wire \index2_inferred__6/i__carry_n_3 ;
  wire \index2_inferred__7/i__carry_n_3 ;
  wire \index2_inferred__8/i__carry_n_3 ;
  wire p_0_in100_in;
  wire p_0_in102_in;
  wire p_0_in104_in;
  wire p_0_in106_in;
  wire p_0_in108_in;
  wire p_0_in110_in;
  wire p_0_in13_in;
  wire p_0_in19_in;
  wire p_0_in1_in;
  wire p_0_in25_in;
  wire p_0_in31_in;
  wire p_0_in37_in;
  wire p_0_in40_in;
  wire p_0_in43_in;
  wire p_0_in46_in;
  wire p_0_in49_in;
  wire p_0_in52_in;
  wire p_0_in58_in;
  wire p_0_in64_in;
  wire p_0_in70_in;
  wire p_0_in7_in;
  wire p_0_in91_in;
  wire p_0_in94_in;
  wire p_0_in96_in;
  wire p_0_in98_in;
  wire p_24_in;
  wire p_25_in;
  wire p_26_in;
  wire p_27_in;
  wire p_36_in;
  wire p_37_in;
  wire p_38_in;
  wire p_39_in;
  wire p_40_in;
  wire p_41_in;
  wire p_42_in;
  wire p_43_in;
  wire p_47_in;
  wire p_48_in;
  wire p_49_in;
  wire p_50_in;
  wire p_51_in;
  wire p_52_in;
  wire p_53_in;
  wire p_75_in;
  wire rst;
  wire \we_d_reg_n_0_[0][0] ;
  wire \we_d_reg_n_0_[0][1] ;
  wire \we_d_reg_n_0_[1][0] ;
  wire \we_d_reg_n_0_[1][1] ;
  wire \we_d_reg_n_0_[2][0] ;
  wire \we_d_reg_n_0_[2][1] ;
  wire \we_d_reg_n_0_[3][0] ;
  wire \we_d_reg_n_0_[3][1] ;
  wire \we_d_reg_n_0_[4][0] ;
  wire \we_d_reg_n_0_[4][1] ;
  wire \we_d_reg_n_0_[5][0] ;
  wire \we_d_reg_n_0_[5][1] ;
  wire \we_d_reg_n_0_[6][0] ;
  wire \we_d_reg_n_0_[6][1] ;
  wire \we_d_reg_n_0_[7][0] ;
  wire \we_d_reg_n_0_[7][1] ;
  wire \we_d_reg_n_0_[8][0] ;
  wire \we_d_reg_n_0_[8][1] ;
  wire \we_d_reg_n_0_[9][0] ;
  wire \we_d_reg_n_0_[9][1] ;
  wire [3:2]\NLW_index2_inferred__13/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__13/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_index2_inferred__14/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__14/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_index2_inferred__15/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__15/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_index2_inferred__16/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__16/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_index2_inferred__17/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__17/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_index2_inferred__22/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__22/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_index2_inferred__23/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__23/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_index2_inferred__24/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__24/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_index2_inferred__3/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__3/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_index2_inferred__4/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__4/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_index2_inferred__5/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__5/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_index2_inferred__6/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__6/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_index2_inferred__7/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__7/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_index2_inferred__8/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_index2_inferred__8/i__carry_O_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ff_fifo2e_10b C_FFFIFO
       (.B_dout20bEn0(B_dout20bEn0),
        .B_dout20bEn_i(B_dout20bEn_i),
        .B_dout20bEn_i_reg(B_dout20bEn_i_reg),
        .B_en(B_en),
        .B_recclk(B_recclk),
        .D(D),
        .E(E),
        .Q(\bitSel_d_reg[0]_10 ),
        .bankSel_d_reg(bankSel_d_reg_n_0),
        .\bitSel_d_reg[1][3] (\bitSel_d_reg[1]_11 ),
        .byteRdy_d_reg(byteRdy_d_reg_n_0),
        .\doutMux_reg[1][5] (\doutMux_reg[1]_9 ),
        .rst(rst),
        .\we_d_reg[0][1] ({\we_d_reg_n_0_[0][1] ,\we_d_reg_n_0_[0][0] }),
        .\we_d_reg[1][1] ({\we_d_reg_n_0_[1][1] ,\we_d_reg_n_0_[1][0] }),
        .\we_d_reg[2][1] ({\we_d_reg_n_0_[2][1] ,\we_d_reg_n_0_[2][0] }),
        .\we_d_reg[3][1] ({\we_d_reg_n_0_[3][1] ,\we_d_reg_n_0_[3][0] }),
        .\we_d_reg[4][1] ({\we_d_reg_n_0_[4][1] ,\we_d_reg_n_0_[4][0] }),
        .\we_d_reg[5][1] ({\we_d_reg_n_0_[5][1] ,\we_d_reg_n_0_[5][0] }),
        .\we_d_reg[6][1] ({\we_d_reg_n_0_[6][1] ,\we_d_reg_n_0_[6][0] }),
        .\we_d_reg[7][1] ({\we_d_reg_n_0_[7][1] ,\we_d_reg_n_0_[7][0] }),
        .\we_d_reg[8][1] ({\we_d_reg_n_0_[8][1] ,\we_d_reg_n_0_[8][0] }),
        .\we_d_reg[9][1] ({\we_d_reg_n_0_[9][1] ,\we_d_reg_n_0_[9][0] }));
  FDRE bankSel_d_reg
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[29]),
        .Q(bankSel_d_reg_n_0),
        .R(rst));
  FDRE \bitSel_d_reg[0][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[20]),
        .Q(\bitSel_d_reg[0]_10 [0]),
        .R(rst));
  FDRE \bitSel_d_reg[0][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[21]),
        .Q(\bitSel_d_reg[0]_10 [1]),
        .R(rst));
  FDRE \bitSel_d_reg[0][2] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[22]),
        .Q(\bitSel_d_reg[0]_10 [2]),
        .R(rst));
  FDRE \bitSel_d_reg[0][3] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[23]),
        .Q(\bitSel_d_reg[0]_10 [3]),
        .R(rst));
  FDRE \bitSel_d_reg[1][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[24]),
        .Q(\bitSel_d_reg[1]_11 [0]),
        .R(rst));
  FDRE \bitSel_d_reg[1][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[25]),
        .Q(\bitSel_d_reg[1]_11 [1]),
        .R(rst));
  FDRE \bitSel_d_reg[1][2] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[26]),
        .Q(\bitSel_d_reg[1]_11 [2]),
        .R(rst));
  FDRE \bitSel_d_reg[1][3] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[27]),
        .Q(\bitSel_d_reg[1]_11 [3]),
        .R(rst));
  FDRE byteRdy_d_reg
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[28]),
        .Q(byteRdy_d_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[0]_i_1__0 
       (.I0(B_din20b[19]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[0]),
        .O(\din20b_d[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[1]_i_1__0 
       (.I0(B_din20b[18]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[1]),
        .O(\din20b_d[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[2]_i_1__0 
       (.I0(B_din20b[17]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[2]),
        .O(\din20b_d[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[3]_i_1__0 
       (.I0(B_din20b[16]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[3]),
        .O(\din20b_d[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[4]_i_1__0 
       (.I0(B_din20b[15]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[4]),
        .O(\din20b_d[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[5]_i_1__0 
       (.I0(B_din20b[14]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[5]),
        .O(\din20b_d[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[6]_i_1__0 
       (.I0(B_din20b[13]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[6]),
        .O(\din20b_d[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[7]_i_1__0 
       (.I0(B_din20b[12]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[7]),
        .O(\din20b_d[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[8]_i_1__0 
       (.I0(B_din20b[11]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[8]),
        .O(\din20b_d[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din20b_d[9]_i_1__0 
       (.I0(B_din20b[10]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[9]),
        .O(\din20b_d[9]_i_1__0_n_0 ));
  FDRE \din20b_d_reg[0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din20b_d[0]_i_1__0_n_0 ),
        .Q(p_0_in91_in),
        .R(rst));
  FDRE \din20b_d_reg[1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din20b_d[1]_i_1__0_n_0 ),
        .Q(p_0_in94_in),
        .R(rst));
  FDRE \din20b_d_reg[2] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din20b_d[2]_i_1__0_n_0 ),
        .Q(p_0_in96_in),
        .R(rst));
  FDRE \din20b_d_reg[3] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din20b_d[3]_i_1__0_n_0 ),
        .Q(p_0_in98_in),
        .R(rst));
  FDRE \din20b_d_reg[4] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din20b_d[4]_i_1__0_n_0 ),
        .Q(p_0_in100_in),
        .R(rst));
  FDRE \din20b_d_reg[5] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din20b_d[5]_i_1__0_n_0 ),
        .Q(p_0_in102_in),
        .R(rst));
  FDRE \din20b_d_reg[6] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din20b_d[6]_i_1__0_n_0 ),
        .Q(p_0_in104_in),
        .R(rst));
  FDRE \din20b_d_reg[7] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din20b_d[7]_i_1__0_n_0 ),
        .Q(p_0_in106_in),
        .R(rst));
  FDRE \din20b_d_reg[8] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din20b_d[8]_i_1__0_n_0 ),
        .Q(p_0_in108_in),
        .R(rst));
  FDRE \din20b_d_reg[9] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din20b_d[9]_i_1__0_n_0 ),
        .Q(p_0_in110_in),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][0]_i_1__0 
       (.I0(B_din20b[9]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[10]),
        .O(\din_d[0][0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][1]_i_1__0 
       (.I0(B_din20b[8]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[11]),
        .O(\din_d[0][1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][2]_i_1__0 
       (.I0(B_din20b[7]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[12]),
        .O(\din_d[0][2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][3]_i_1__0 
       (.I0(B_din20b[6]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[13]),
        .O(\din_d[0][3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][4]_i_1__0 
       (.I0(B_din20b[5]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[14]),
        .O(\din_d[0][4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][5]_i_1__0 
       (.I0(B_din20b[4]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[15]),
        .O(\din_d[0][5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][6]_i_1__0 
       (.I0(B_din20b[3]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[16]),
        .O(\din_d[0][6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][7]_i_1__0 
       (.I0(B_din20b[2]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[17]),
        .O(\din_d[0][7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][8]_i_1__0 
       (.I0(B_din20b[1]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[18]),
        .O(\din_d[0][8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \din_d[0][9]_i_1__0 
       (.I0(B_din20b[0]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[19]),
        .O(\din_d[0][9]_i_1__0_n_0 ));
  FDRE \din_d_reg[0][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d[0][0]_i_1__0_n_0 ),
        .Q(\din_d_reg[0]_6 [0]),
        .R(rst));
  FDRE \din_d_reg[0][10] 
       (.C(B_recclk),
        .CE(B_en),
        .D(p_0_in91_in),
        .Q(\din_d_reg[0]_6 [10]),
        .R(rst));
  FDRE \din_d_reg[0][11] 
       (.C(B_recclk),
        .CE(B_en),
        .D(p_0_in94_in),
        .Q(\din_d_reg[0]_6 [11]),
        .R(rst));
  FDRE \din_d_reg[0][12] 
       (.C(B_recclk),
        .CE(B_en),
        .D(p_0_in96_in),
        .Q(\din_d_reg[0]_6 [12]),
        .R(rst));
  FDRE \din_d_reg[0][13] 
       (.C(B_recclk),
        .CE(B_en),
        .D(p_0_in98_in),
        .Q(\din_d_reg[0]_6 [13]),
        .R(rst));
  FDRE \din_d_reg[0][14] 
       (.C(B_recclk),
        .CE(B_en),
        .D(p_0_in100_in),
        .Q(\din_d_reg[0]_6 [14]),
        .R(rst));
  FDRE \din_d_reg[0][15] 
       (.C(B_recclk),
        .CE(B_en),
        .D(p_0_in102_in),
        .Q(\din_d_reg[0]_6 [15]),
        .R(rst));
  FDRE \din_d_reg[0][16] 
       (.C(B_recclk),
        .CE(B_en),
        .D(p_0_in104_in),
        .Q(\din_d_reg[0]_6 [16]),
        .R(rst));
  FDRE \din_d_reg[0][17] 
       (.C(B_recclk),
        .CE(B_en),
        .D(p_0_in106_in),
        .Q(\din_d_reg[0]_6 [17]),
        .R(rst));
  FDRE \din_d_reg[0][18] 
       (.C(B_recclk),
        .CE(B_en),
        .D(p_0_in108_in),
        .Q(\din_d_reg[0]_6 [18]),
        .R(rst));
  FDRE \din_d_reg[0][19] 
       (.C(B_recclk),
        .CE(B_en),
        .D(p_0_in110_in),
        .Q(\din_d_reg[0]_6 [19]),
        .R(rst));
  FDRE \din_d_reg[0][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d[0][1]_i_1__0_n_0 ),
        .Q(\din_d_reg[0]_6 [1]),
        .R(rst));
  FDRE \din_d_reg[0][2] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d[0][2]_i_1__0_n_0 ),
        .Q(\din_d_reg[0]_6 [2]),
        .R(rst));
  FDRE \din_d_reg[0][3] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d[0][3]_i_1__0_n_0 ),
        .Q(\din_d_reg[0]_6 [3]),
        .R(rst));
  FDRE \din_d_reg[0][4] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d[0][4]_i_1__0_n_0 ),
        .Q(\din_d_reg[0]_6 [4]),
        .R(rst));
  FDRE \din_d_reg[0][5] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d[0][5]_i_1__0_n_0 ),
        .Q(\din_d_reg[0]_6 [5]),
        .R(rst));
  FDRE \din_d_reg[0][6] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d[0][6]_i_1__0_n_0 ),
        .Q(\din_d_reg[0]_6 [6]),
        .R(rst));
  FDRE \din_d_reg[0][7] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d[0][7]_i_1__0_n_0 ),
        .Q(\din_d_reg[0]_6 [7]),
        .R(rst));
  FDRE \din_d_reg[0][8] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d[0][8]_i_1__0_n_0 ),
        .Q(\din_d_reg[0]_6 [8]),
        .R(rst));
  FDRE \din_d_reg[0][9] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d[0][9]_i_1__0_n_0 ),
        .Q(\din_d_reg[0]_6 [9]),
        .R(rst));
  FDRE \din_d_reg[1][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [0]),
        .Q(\din_d_reg[1]_7 [0]),
        .R(rst));
  FDRE \din_d_reg[1][10] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [10]),
        .Q(\din_d_reg[1]_7 [10]),
        .R(rst));
  FDRE \din_d_reg[1][11] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [11]),
        .Q(\din_d_reg[1]_7 [11]),
        .R(rst));
  FDRE \din_d_reg[1][12] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [12]),
        .Q(\din_d_reg[1]_7 [12]),
        .R(rst));
  FDRE \din_d_reg[1][13] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [13]),
        .Q(\din_d_reg[1]_7 [13]),
        .R(rst));
  FDRE \din_d_reg[1][14] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [14]),
        .Q(\din_d_reg[1]_7 [14]),
        .R(rst));
  FDRE \din_d_reg[1][15] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [15]),
        .Q(\din_d_reg[1]_7 [15]),
        .R(rst));
  FDRE \din_d_reg[1][16] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [16]),
        .Q(\din_d_reg[1]_7 [16]),
        .R(rst));
  FDRE \din_d_reg[1][17] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [17]),
        .Q(\din_d_reg[1]_7 [17]),
        .R(rst));
  FDRE \din_d_reg[1][18] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [18]),
        .Q(\din_d_reg[1]_7 [18]),
        .R(rst));
  FDRE \din_d_reg[1][19] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [19]),
        .Q(\din_d_reg[1]_7 [19]),
        .R(rst));
  FDRE \din_d_reg[1][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [1]),
        .Q(\din_d_reg[1]_7 [1]),
        .R(rst));
  FDRE \din_d_reg[1][2] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [2]),
        .Q(\din_d_reg[1]_7 [2]),
        .R(rst));
  FDRE \din_d_reg[1][3] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [3]),
        .Q(\din_d_reg[1]_7 [3]),
        .R(rst));
  FDRE \din_d_reg[1][4] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [4]),
        .Q(\din_d_reg[1]_7 [4]),
        .R(rst));
  FDRE \din_d_reg[1][5] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [5]),
        .Q(\din_d_reg[1]_7 [5]),
        .R(rst));
  FDRE \din_d_reg[1][6] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [6]),
        .Q(\din_d_reg[1]_7 [6]),
        .R(rst));
  FDRE \din_d_reg[1][7] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [7]),
        .Q(\din_d_reg[1]_7 [7]),
        .R(rst));
  FDRE \din_d_reg[1][8] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [8]),
        .Q(\din_d_reg[1]_7 [8]),
        .R(rst));
  FDRE \din_d_reg[1][9] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[0]_6 [9]),
        .Q(\din_d_reg[1]_7 [9]),
        .R(rst));
  FDRE \din_d_reg[2][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [0]),
        .Q(\din_d_reg_n_0_[2][0] ),
        .R(rst));
  FDRE \din_d_reg[2][10] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [10]),
        .Q(p_43_in),
        .R(rst));
  FDRE \din_d_reg[2][11] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [11]),
        .Q(p_42_in),
        .R(rst));
  FDRE \din_d_reg[2][12] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [12]),
        .Q(p_41_in),
        .R(rst));
  FDRE \din_d_reg[2][13] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [13]),
        .Q(p_40_in),
        .R(rst));
  FDRE \din_d_reg[2][14] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [14]),
        .Q(p_39_in),
        .R(rst));
  FDRE \din_d_reg[2][15] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [15]),
        .Q(p_38_in),
        .R(rst));
  FDRE \din_d_reg[2][16] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [16]),
        .Q(p_37_in),
        .R(rst));
  FDRE \din_d_reg[2][17] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [17]),
        .Q(p_36_in),
        .R(rst));
  FDRE \din_d_reg[2][18] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [18]),
        .Q(Q[0]),
        .R(rst));
  FDRE \din_d_reg[2][19] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [19]),
        .Q(Q[1]),
        .R(rst));
  FDRE \din_d_reg[2][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [1]),
        .Q(data1),
        .R(rst));
  FDRE \din_d_reg[2][20] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg_n_0_[2][0] ),
        .Q(p_75_in),
        .R(rst));
  FDRE \din_d_reg[2][21] 
       (.C(B_recclk),
        .CE(B_en),
        .D(data1),
        .Q(p_53_in),
        .R(rst));
  FDRE \din_d_reg[2][22] 
       (.C(B_recclk),
        .CE(B_en),
        .D(data2),
        .Q(p_52_in),
        .R(rst));
  FDRE \din_d_reg[2][23] 
       (.C(B_recclk),
        .CE(B_en),
        .D(data3),
        .Q(p_51_in),
        .R(rst));
  FDRE \din_d_reg[2][24] 
       (.C(B_recclk),
        .CE(B_en),
        .D(data4),
        .Q(p_50_in),
        .R(rst));
  FDRE \din_d_reg[2][25] 
       (.C(B_recclk),
        .CE(B_en),
        .D(data5),
        .Q(p_49_in),
        .R(rst));
  FDRE \din_d_reg[2][26] 
       (.C(B_recclk),
        .CE(B_en),
        .D(p_27_in),
        .Q(p_48_in),
        .R(rst));
  FDRE \din_d_reg[2][27] 
       (.C(B_recclk),
        .CE(B_en),
        .D(p_26_in),
        .Q(p_47_in),
        .R(rst));
  FDRE \din_d_reg[2][28] 
       (.C(B_recclk),
        .CE(B_en),
        .D(p_25_in),
        .Q(Q[2]),
        .R(rst));
  FDRE \din_d_reg[2][29] 
       (.C(B_recclk),
        .CE(B_en),
        .D(p_24_in),
        .Q(Q[3]),
        .R(rst));
  FDRE \din_d_reg[2][2] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [2]),
        .Q(data2),
        .R(rst));
  FDRE \din_d_reg[2][3] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [3]),
        .Q(data3),
        .R(rst));
  FDRE \din_d_reg[2][4] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [4]),
        .Q(data4),
        .R(rst));
  FDRE \din_d_reg[2][5] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [5]),
        .Q(data5),
        .R(rst));
  FDRE \din_d_reg[2][6] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [6]),
        .Q(p_27_in),
        .R(rst));
  FDRE \din_d_reg[2][7] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [7]),
        .Q(p_26_in),
        .R(rst));
  FDRE \din_d_reg[2][8] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [8]),
        .Q(p_25_in),
        .R(rst));
  FDRE \din_d_reg[2][9] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\din_d_reg[1]_7 [9]),
        .Q(p_24_in),
        .R(rst));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][0]_i_11 
       (.I0(p_42_in),
        .I1(p_43_in),
        .I2(ADDRB[1]),
        .I3(p_24_in),
        .I4(ADDRB[0]),
        .I5(p_25_in),
        .O(\doutMux[0][0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][0]_i_12 
       (.I0(p_38_in),
        .I1(p_39_in),
        .I2(ADDRB[1]),
        .I3(p_40_in),
        .I4(ADDRB[0]),
        .I5(p_41_in),
        .O(\doutMux[0][0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][0]_i_13 
       (.I0(data3),
        .I1(data2),
        .I2(ADDRB[1]),
        .I3(data1),
        .I4(ADDRB[0]),
        .I5(\din_d_reg_n_0_[2][0] ),
        .O(\doutMux[0][0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][0]_i_14 
       (.I0(p_26_in),
        .I1(p_27_in),
        .I2(ADDRB[1]),
        .I3(data5),
        .I4(ADDRB[0]),
        .I5(data4),
        .O(\doutMux[0][0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][0]_i_1__0 
       (.I0(\doutMux[0][0]_i_2__0_n_0 ),
        .I1(\doutMux[0][0]_i_3__0_n_0 ),
        .I2(ADDRB[4]),
        .I3(\din_d_reg[2][9]_0 ),
        .I4(ADDRB[5]),
        .I5(\doutMux[0][0]_i_5_n_0 ),
        .O(\doutMux[0]_37 [0]));
  LUT6 #(
    .INIT(64'hCCCFAAAACCC0AAAA)) 
    \doutMux[0][0]_i_2__0 
       (.I0(\doutMux_reg[0][0]_i_6_n_0 ),
        .I1(Q[0]),
        .I2(ADDRB[2]),
        .I3(ADDRB[1]),
        .I4(ADDRB[3]),
        .I5(\doutMux[0][0]_i_7_n_0 ),
        .O(\doutMux[0][0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutMux[0][0]_i_3__0 
       (.I0(p_40_in),
        .I1(ADDRB[3]),
        .I2(\doutMux_reg[0][1]_0 ),
        .I3(ADDRB[2]),
        .I4(\doutMux[0][0]_i_8_n_0 ),
        .O(\doutMux[0][0]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \doutMux[0][0]_i_5 
       (.I0(p_24_in),
        .I1(ADDRB[2]),
        .I2(ADDRB[3]),
        .I3(\doutMux[0][0]_i_8_n_0 ),
        .O(\doutMux[0][0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutMux[0][0]_i_7 
       (.I0(p_36_in),
        .I1(ADDRB[0]),
        .I2(p_37_in),
        .O(\doutMux[0][0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][0]_i_8 
       (.I0(p_24_in),
        .I1(p_25_in),
        .I2(ADDRB[1]),
        .I3(p_26_in),
        .I4(ADDRB[0]),
        .I5(p_27_in),
        .O(\doutMux[0][0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][1]_i_10 
       (.I0(p_40_in),
        .I1(p_41_in),
        .I2(ADDRB[1]),
        .I3(p_42_in),
        .I4(ADDRB[0]),
        .I5(p_43_in),
        .O(\doutMux_reg[0][1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][1]_i_1__0 
       (.I0(\doutMux[0][1]_i_2__0_n_0 ),
        .I1(\doutMux[0][1]_i_3__0_n_0 ),
        .I2(ADDRB[4]),
        .I3(\din_d_reg[2][18]_0 ),
        .I4(ADDRB[5]),
        .I5(\doutMux[0][1]_i_5_n_0 ),
        .O(\doutMux[0]_37 [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutMux[0][1]_i_2__0 
       (.I0(\doutMux[0][1]_i_6_n_0 ),
        .I1(ADDRB[3]),
        .I2(\doutMux[0][1]_i_7_n_0 ),
        .I3(ADDRB[2]),
        .I4(\doutMux[0][1]_i_8_n_0 ),
        .O(\doutMux[0][1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutMux[0][1]_i_3__0 
       (.I0(p_53_in),
        .I1(ADDRB[3]),
        .I2(\doutMux[0][3]_i_2_n_0 ),
        .I3(ADDRB[2]),
        .I4(\doutMux_reg[0][2]_0 ),
        .O(\doutMux[0][1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \doutMux[0][1]_i_5 
       (.I0(p_40_in),
        .I1(ADDRB[2]),
        .I2(ADDRB[3]),
        .I3(\doutMux_reg[0][1]_0 ),
        .O(\doutMux[0][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hABABABA8A8A8ABA8)) 
    \doutMux[0][1]_i_6 
       (.I0(Q[3]),
        .I1(ADDRB[2]),
        .I2(ADDRB[1]),
        .I3(p_47_in),
        .I4(ADDRB[0]),
        .I5(Q[2]),
        .O(\doutMux[0][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][1]_i_7 
       (.I0(p_48_in),
        .I1(p_49_in),
        .I2(ADDRB[1]),
        .I3(p_50_in),
        .I4(ADDRB[0]),
        .I5(p_51_in),
        .O(\doutMux[0][1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][1]_i_8 
       (.I0(p_52_in),
        .I1(p_53_in),
        .I2(ADDRB[1]),
        .I3(p_75_in),
        .I4(ADDRB[0]),
        .I5(Q[1]),
        .O(\doutMux[0][1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0055C000)) 
    \doutMux[0][2]_i_1__0 
       (.I0(\doutMux[0][2]_i_2__0_n_0 ),
        .I1(\doutMux[0][2]_i_3__0_n_0 ),
        .I2(\din_d_reg[2][28]_0 ),
        .I3(ADDRB[5]),
        .I4(ADDRB[4]),
        .I5(\doutMux[0][2]_i_5_n_0 ),
        .O(\doutMux[0]_37 [2]));
  LUT5 #(
    .INIT(32'h1D1D0C3F)) 
    \doutMux[0][2]_i_2__0 
       (.I0(\doutMux[0][5]_i_2_n_0 ),
        .I1(ADDRB[3]),
        .I2(Q[3]),
        .I3(\doutMux[0][4]_i_2_n_0 ),
        .I4(ADDRB[2]),
        .O(\doutMux[0][2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFECECEFECEC)) 
    \doutMux[0][2]_i_3__0 
       (.I0(\doutMux[0][2]_i_6_n_0 ),
        .I1(ADDRB[3]),
        .I2(ADDRB[2]),
        .I3(ADDRB[1]),
        .I4(\doutMux[0][2]_i_7_n_0 ),
        .I5(\doutMux[0][2]_i_8_n_0 ),
        .O(\doutMux[0][2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FE02)) 
    \doutMux[0][2]_i_5 
       (.I0(\doutMux_reg[0][2]_0 ),
        .I1(ADDRB[3]),
        .I2(ADDRB[2]),
        .I3(p_36_in),
        .I4(ADDRB[4]),
        .I5(ADDRB[5]),
        .O(\doutMux[0][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][2]_i_6 
       (.I0(p_47_in),
        .I1(p_48_in),
        .I2(ADDRB[1]),
        .I3(p_49_in),
        .I4(ADDRB[0]),
        .I5(p_50_in),
        .O(\doutMux[0][2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutMux[0][2]_i_7 
       (.I0(p_53_in),
        .I1(ADDRB[0]),
        .I2(p_75_in),
        .O(\doutMux[0][2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \doutMux[0][2]_i_8 
       (.I0(p_51_in),
        .I1(ADDRB[0]),
        .I2(p_52_in),
        .O(\doutMux[0][2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][2]_i_9 
       (.I0(p_36_in),
        .I1(p_37_in),
        .I2(ADDRB[1]),
        .I3(p_38_in),
        .I4(ADDRB[0]),
        .I5(p_39_in),
        .O(\doutMux_reg[0][2]_0 ));
  LUT6 #(
    .INIT(64'h000000000000FE02)) 
    \doutMux[0][3]_i_1 
       (.I0(\doutMux[0][3]_i_2_n_0 ),
        .I1(ADDRB[3]),
        .I2(ADDRB[2]),
        .I3(p_53_in),
        .I4(ADDRB[4]),
        .I5(ADDRB[5]),
        .O(\doutMux[0]_37 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][3]_i_2 
       (.I0(p_53_in),
        .I1(p_75_in),
        .I2(ADDRB[1]),
        .I3(Q[1]),
        .I4(ADDRB[0]),
        .I5(Q[0]),
        .O(\doutMux[0][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FE02)) 
    \doutMux[0][4]_i_1 
       (.I0(\doutMux[0][4]_i_2_n_0 ),
        .I1(ADDRB[3]),
        .I2(ADDRB[2]),
        .I3(p_49_in),
        .I4(ADDRB[4]),
        .I5(ADDRB[5]),
        .O(\doutMux[0]_37 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][4]_i_2 
       (.I0(p_49_in),
        .I1(p_50_in),
        .I2(ADDRB[1]),
        .I3(p_51_in),
        .I4(ADDRB[0]),
        .I5(p_52_in),
        .O(\doutMux[0][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FE02)) 
    \doutMux[0][5]_i_1 
       (.I0(\doutMux[0][5]_i_2_n_0 ),
        .I1(ADDRB[3]),
        .I2(ADDRB[2]),
        .I3(Q[3]),
        .I4(ADDRB[4]),
        .I5(ADDRB[5]),
        .O(\doutMux[0]_37 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutMux[0][5]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(ADDRB[1]),
        .I3(p_47_in),
        .I4(ADDRB[0]),
        .I5(p_48_in),
        .O(\doutMux[0][5]_i_2_n_0 ));
  FDRE \doutMux_reg[0][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\doutMux[0]_37 [0]),
        .Q(\doutMux_reg[0]_8 [0]),
        .R(rst));
  MUXF7 \doutMux_reg[0][0]_i_10 
       (.I0(\doutMux[0][0]_i_13_n_0 ),
        .I1(\doutMux[0][0]_i_14_n_0 ),
        .O(\doutMux_reg[0][0]_0 ),
        .S(ADDRB[2]));
  MUXF7 \doutMux_reg[0][0]_i_6 
       (.I0(\doutMux[0][0]_i_11_n_0 ),
        .I1(\doutMux[0][0]_i_12_n_0 ),
        .O(\doutMux_reg[0][0]_i_6_n_0 ),
        .S(ADDRB[2]));
  FDRE \doutMux_reg[0][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\doutMux[0]_37 [1]),
        .Q(\doutMux_reg[0]_8 [1]),
        .R(rst));
  FDRE \doutMux_reg[0][2] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\doutMux[0]_37 [2]),
        .Q(\doutMux_reg[0]_8 [2]),
        .R(rst));
  FDRE \doutMux_reg[0][3] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\doutMux[0]_37 [3]),
        .Q(\doutMux_reg[0]_8 [3]),
        .R(rst));
  FDRE \doutMux_reg[0][4] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\doutMux[0]_37 [4]),
        .Q(\doutMux_reg[0]_8 [4]),
        .R(rst));
  FDRE \doutMux_reg[0][5] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\doutMux[0]_37 [5]),
        .Q(\doutMux_reg[0]_8 [5]),
        .R(rst));
  FDRE \doutMux_reg[1][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\doutMux_reg[0]_8 [0]),
        .Q(\doutMux_reg[1]_9 [0]),
        .R(rst));
  FDRE \doutMux_reg[1][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\doutMux_reg[0]_8 [1]),
        .Q(\doutMux_reg[1]_9 [1]),
        .R(rst));
  FDRE \doutMux_reg[1][2] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\doutMux_reg[0]_8 [2]),
        .Q(\doutMux_reg[1]_9 [2]),
        .R(rst));
  FDRE \doutMux_reg[1][3] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\doutMux_reg[0]_8 [3]),
        .Q(\doutMux_reg[1]_9 [3]),
        .R(rst));
  FDRE \doutMux_reg[1][4] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\doutMux_reg[0]_8 [4]),
        .Q(\doutMux_reg[1]_9 [4]),
        .R(rst));
  FDRE \doutMux_reg[1][5] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\doutMux_reg[0]_8 [5]),
        .Q(\doutMux_reg[1]_9 [5]),
        .R(rst));
  LUT2 #(
    .INIT(4'h6)) 
    \edge10x[0]_i_1 
       (.I0(p_0_in110_in),
        .I1(\din_d_reg[0]_6 [0]),
        .O(\edge10x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge10x[1]_i_1 
       (.I0(p_0_in94_in),
        .I1(p_0_in91_in),
        .I2(\din_d_reg[0]_6 [1]),
        .I3(\din_d_reg[0]_6 [0]),
        .O(\edge10x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge10x[2]_i_1 
       (.I0(p_0_in96_in),
        .I1(p_0_in94_in),
        .I2(\din_d_reg[0]_6 [2]),
        .I3(\din_d_reg[0]_6 [1]),
        .O(\edge10x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge10x[3]_i_1 
       (.I0(p_0_in98_in),
        .I1(p_0_in96_in),
        .I2(\din_d_reg[0]_6 [3]),
        .I3(\din_d_reg[0]_6 [2]),
        .O(\edge10x[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge10x[4]_i_1 
       (.I0(p_0_in100_in),
        .I1(p_0_in98_in),
        .I2(\din_d_reg[0]_6 [4]),
        .I3(\din_d_reg[0]_6 [3]),
        .O(\edge10x[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge10x[5]_i_1 
       (.I0(p_0_in102_in),
        .I1(p_0_in100_in),
        .I2(\din_d_reg[0]_6 [5]),
        .I3(\din_d_reg[0]_6 [4]),
        .O(\edge10x[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge10x[6]_i_1 
       (.I0(p_0_in104_in),
        .I1(p_0_in102_in),
        .I2(\din_d_reg[0]_6 [6]),
        .I3(\din_d_reg[0]_6 [5]),
        .O(\edge10x[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge10x[7]_i_1 
       (.I0(p_0_in106_in),
        .I1(p_0_in104_in),
        .I2(\din_d_reg[0]_6 [7]),
        .I3(\din_d_reg[0]_6 [6]),
        .O(\edge10x[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge10x[8]_i_1 
       (.I0(p_0_in108_in),
        .I1(p_0_in106_in),
        .I2(\din_d_reg[0]_6 [8]),
        .I3(\din_d_reg[0]_6 [7]),
        .O(\edge10x[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge10x[9]_i_1 
       (.I0(\din_d_reg[0]_6 [9]),
        .I1(\din_d_reg[0]_6 [8]),
        .I2(p_0_in110_in),
        .I3(p_0_in108_in),
        .O(\edge10x[9]_i_1_n_0 ));
  FDSE \edge10x_reg[0] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge10x[0]_i_1_n_0 ),
        .Q(\edge10x_reg_n_0_[0] ),
        .S(\edge11x[2]_i_1_n_0 ));
  FDRE \edge10x_reg[1] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge10x[1]_i_1_n_0 ),
        .Q(\edge10x_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \edge10x_reg[2] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge10x[2]_i_1_n_0 ),
        .Q(p_0_in31_in),
        .R(1'b0));
  FDRE \edge10x_reg[3] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge10x[3]_i_1_n_0 ),
        .Q(\edge10x_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \edge10x_reg[4] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge10x[4]_i_1_n_0 ),
        .Q(p_0_in37_in),
        .R(1'b0));
  FDRE \edge10x_reg[5] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge10x[5]_i_1_n_0 ),
        .Q(p_0_in40_in),
        .R(1'b0));
  FDRE \edge10x_reg[6] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge10x[6]_i_1_n_0 ),
        .Q(p_0_in43_in),
        .R(1'b0));
  FDRE \edge10x_reg[7] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge10x[7]_i_1_n_0 ),
        .Q(p_0_in46_in),
        .R(1'b0));
  FDRE \edge10x_reg[8] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge10x[8]_i_1_n_0 ),
        .Q(p_0_in49_in),
        .R(1'b0));
  FDRE \edge10x_reg[9] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge10x[9]_i_1_n_0 ),
        .Q(p_0_in52_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6FF66F6F6FF6F6F6)) 
    \edge11x[0]_i_1 
       (.I0(p_0_in110_in),
        .I1(p_0_in108_in),
        .I2(\din_d[0][7]_i_1__0_n_0 ),
        .I3(B_din20b[1]),
        .I4(bitOrderDinLSB),
        .I5(B_din20b[18]),
        .O(\edge11x[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \edge11x[10]_i_1 
       (.I0(B_en),
        .I1(rst),
        .O(edge4x));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge11x[10]_i_2 
       (.I0(\din_d_reg[0]_6 [9]),
        .I1(\din_d_reg[0]_6 [8]),
        .I2(p_0_in108_in),
        .I3(p_0_in106_in),
        .O(\edge11x[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF66F6F6FF6F6F6)) 
    \edge11x[1]_i_1 
       (.I0(\din_d_reg[0]_6 [0]),
        .I1(p_0_in110_in),
        .I2(\din_d[0][8]_i_1__0_n_0 ),
        .I3(B_din20b[0]),
        .I4(bitOrderDinLSB),
        .I5(B_din20b[19]),
        .O(\edge11x[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000047B800000000)) 
    \edge11x[2]_i_1 
       (.I0(B_din20b[0]),
        .I1(bitOrderDinLSB),
        .I2(B_din20b[19]),
        .I3(p_0_in91_in),
        .I4(rst),
        .I5(B_en),
        .O(\edge11x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \edge11x[2]_i_2 
       (.I0(\din_d_reg[0]_6 [0]),
        .I1(\din_d_reg[0]_6 [1]),
        .O(\edge11x[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge11x[3]_i_1 
       (.I0(\din_d_reg[0]_6 [2]),
        .I1(\din_d_reg[0]_6 [1]),
        .I2(p_0_in94_in),
        .I3(p_0_in91_in),
        .O(\edge11x[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge11x[4]_i_1 
       (.I0(\din_d_reg[0]_6 [3]),
        .I1(\din_d_reg[0]_6 [2]),
        .I2(p_0_in96_in),
        .I3(p_0_in94_in),
        .O(\edge11x[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge11x[5]_i_1 
       (.I0(\din_d_reg[0]_6 [4]),
        .I1(\din_d_reg[0]_6 [3]),
        .I2(p_0_in98_in),
        .I3(p_0_in96_in),
        .O(\edge11x[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge11x[6]_i_1 
       (.I0(\din_d_reg[0]_6 [5]),
        .I1(\din_d_reg[0]_6 [4]),
        .I2(p_0_in100_in),
        .I3(p_0_in98_in),
        .O(\edge11x[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge11x[7]_i_1 
       (.I0(\din_d_reg[0]_6 [6]),
        .I1(\din_d_reg[0]_6 [5]),
        .I2(p_0_in102_in),
        .I3(p_0_in100_in),
        .O(\edge11x[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge11x[8]_i_1 
       (.I0(\din_d_reg[0]_6 [7]),
        .I1(\din_d_reg[0]_6 [6]),
        .I2(p_0_in104_in),
        .I3(p_0_in102_in),
        .O(\edge11x[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge11x[9]_i_1 
       (.I0(\din_d_reg[0]_6 [8]),
        .I1(\din_d_reg[0]_6 [7]),
        .I2(p_0_in106_in),
        .I3(p_0_in104_in),
        .O(\edge11x[9]_i_1_n_0 ));
  FDRE \edge11x_reg[0] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge11x[0]_i_1_n_0 ),
        .Q(\edge11x_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \edge11x_reg[10] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge11x[10]_i_2_n_0 ),
        .Q(p_0_in25_in),
        .R(1'b0));
  FDRE \edge11x_reg[1] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge11x[1]_i_1_n_0 ),
        .Q(\edge11x_reg_n_0_[1] ),
        .R(1'b0));
  FDSE \edge11x_reg[2] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge11x[2]_i_2_n_0 ),
        .Q(p_0_in1_in),
        .S(\edge11x[2]_i_1_n_0 ));
  FDRE \edge11x_reg[3] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge11x[3]_i_1_n_0 ),
        .Q(\edge11x_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \edge11x_reg[4] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge11x[4]_i_1_n_0 ),
        .Q(p_0_in7_in),
        .R(1'b0));
  FDRE \edge11x_reg[5] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge11x[5]_i_1_n_0 ),
        .Q(\edge11x_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \edge11x_reg[6] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge11x[6]_i_1_n_0 ),
        .Q(p_0_in13_in),
        .R(1'b0));
  FDRE \edge11x_reg[7] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge11x[7]_i_1_n_0 ),
        .Q(\edge11x_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \edge11x_reg[8] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge11x[8]_i_1_n_0 ),
        .Q(p_0_in19_in),
        .R(1'b0));
  FDRE \edge11x_reg[9] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge11x[9]_i_1_n_0 ),
        .Q(\edge11x_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \edge4x[0]_i_1 
       (.I0(\din_d_reg[0]_6 [5]),
        .I1(\din_d_reg[0]_6 [6]),
        .I2(p_0_in106_in),
        .I3(p_0_in108_in),
        .I4(\edge8x[0]_i_2_n_0 ),
        .O(\edge4x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \edge4x[1]_i_1 
       (.I0(\edge8x[5]_i_1__0_n_0 ),
        .I1(\din_d_reg[0]_6 [2]),
        .I2(\din_d_reg[0]_6 [3]),
        .I3(p_0_in100_in),
        .I4(p_0_in102_in),
        .O(extractEdge[1]));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \edge4x[2]_i_1 
       (.I0(\edge8x[6]_i_1__0_n_0 ),
        .I1(\din_d_reg[0]_6 [3]),
        .I2(\din_d_reg[0]_6 [4]),
        .I3(p_0_in102_in),
        .I4(p_0_in104_in),
        .O(extractEdge[2]));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \edge4x[3]_i_1 
       (.I0(\edge8x[7]_i_1__0_n_0 ),
        .I1(\din_d_reg[0]_6 [4]),
        .I2(\din_d_reg[0]_6 [5]),
        .I3(p_0_in104_in),
        .I4(p_0_in106_in),
        .O(extractEdge[3]));
  FDSE \edge4x_reg[0] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge4x[0]_i_1_n_0 ),
        .Q(\edge4x_reg_n_0_[0] ),
        .S(\edge11x[2]_i_1_n_0 ));
  FDRE \edge4x_reg[1] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(extractEdge[1]),
        .Q(\edge4x_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \edge4x_reg[2] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(extractEdge[2]),
        .Q(\edge4x_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \edge4x_reg[3] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(extractEdge[3]),
        .Q(\edge4x_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBABFEAEFBFBAEFEA)) 
    \edge8x[0]_i_1__0 
       (.I0(\edge8x[0]_i_2_n_0 ),
        .I1(B_din20b[4]),
        .I2(bitOrderDinLSB),
        .I3(B_din20b[15]),
        .I4(B_din20b[3]),
        .I5(B_din20b[16]),
        .O(\edge8x[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge8x[0]_i_2 
       (.I0(p_0_in100_in),
        .I1(p_0_in98_in),
        .I2(\din_d_reg[0]_6 [2]),
        .I3(\din_d_reg[0]_6 [1]),
        .O(\edge8x[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABFEAEFBFBAEFEA)) 
    \edge8x[1]_i_1__0 
       (.I0(\edge8x[1]_i_2_n_0 ),
        .I1(B_din20b[3]),
        .I2(bitOrderDinLSB),
        .I3(B_din20b[16]),
        .I4(B_din20b[2]),
        .I5(B_din20b[17]),
        .O(\edge8x[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge8x[1]_i_2 
       (.I0(p_0_in102_in),
        .I1(p_0_in100_in),
        .I2(\din_d_reg[0]_6 [3]),
        .I3(\din_d_reg[0]_6 [2]),
        .O(\edge8x[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \edge8x[2]_i_1__0 
       (.I0(\edge8x[2]_i_2_n_0 ),
        .I1(\din_d_reg[0]_6 [3]),
        .I2(\din_d_reg[0]_6 [4]),
        .I3(p_0_in102_in),
        .I4(p_0_in104_in),
        .O(\edge8x[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \edge8x[2]_i_2 
       (.I0(B_din20b[18]),
        .I1(B_din20b[1]),
        .I2(B_din20b[17]),
        .I3(bitOrderDinLSB),
        .I4(B_din20b[2]),
        .O(\edge8x[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \edge8x[3]_i_1__0 
       (.I0(\edge8x[3]_i_2_n_0 ),
        .I1(\din_d_reg[0]_6 [4]),
        .I2(\din_d_reg[0]_6 [5]),
        .I3(p_0_in104_in),
        .I4(p_0_in106_in),
        .O(\edge8x[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \edge8x[3]_i_2 
       (.I0(B_din20b[19]),
        .I1(B_din20b[0]),
        .I2(B_din20b[18]),
        .I3(bitOrderDinLSB),
        .I4(B_din20b[1]),
        .O(\edge8x[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \edge8x[4]_i_1__0 
       (.I0(p_0_in108_in),
        .I1(p_0_in106_in),
        .I2(\din_d_reg[0]_6 [6]),
        .I3(\din_d_reg[0]_6 [5]),
        .O(\edge8x[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \edge8x[5]_i_1__0 
       (.I0(p_0_in94_in),
        .I1(p_0_in91_in),
        .I2(p_0_in108_in),
        .I3(p_0_in110_in),
        .I4(\din_d_reg[0]_6 [6]),
        .I5(\din_d_reg[0]_6 [7]),
        .O(\edge8x[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \edge8x[6]_i_1__0 
       (.I0(p_0_in96_in),
        .I1(p_0_in94_in),
        .I2(p_0_in110_in),
        .I3(\din_d_reg[0]_6 [0]),
        .I4(\din_d_reg[0]_6 [7]),
        .I5(\din_d_reg[0]_6 [8]),
        .O(\edge8x[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \edge8x[7]_i_1__0 
       (.I0(p_0_in98_in),
        .I1(p_0_in96_in),
        .I2(\din_d_reg[0]_6 [0]),
        .I3(\din_d_reg[0]_6 [1]),
        .I4(\din_d_reg[0]_6 [8]),
        .I5(\din_d_reg[0]_6 [9]),
        .O(\edge8x[7]_i_1__0_n_0 ));
  FDRE \edge8x_reg[0] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge8x[0]_i_1__0_n_0 ),
        .Q(\edge8x_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \edge8x_reg[1] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge8x[1]_i_1__0_n_0 ),
        .Q(\edge8x_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \edge8x_reg[2] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge8x[2]_i_1__0_n_0 ),
        .Q(p_0_in58_in),
        .R(1'b0));
  FDRE \edge8x_reg[3] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge8x[3]_i_1__0_n_0 ),
        .Q(\edge8x_reg_n_0_[3] ),
        .R(1'b0));
  FDSE \edge8x_reg[4] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge8x[4]_i_1__0_n_0 ),
        .Q(p_0_in64_in),
        .S(\edge11x[2]_i_1_n_0 ));
  FDRE \edge8x_reg[5] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge8x[5]_i_1__0_n_0 ),
        .Q(\edge8x_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \edge8x_reg[6] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge8x[6]_i_1__0_n_0 ),
        .Q(p_0_in70_in),
        .R(1'b0));
  FDRE \edge8x_reg[7] 
       (.C(B_recclk),
        .CE(edge4x),
        .D(\edge8x[7]_i_1__0_n_0 ),
        .Q(\edge8x_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFF707070)) 
    \edge[0]_i_10 
       (.I0(index266_in),
        .I1(\edge8x_reg_n_0_[5] ),
        .I2(\edge[0]_i_13_n_0 ),
        .I3(p_0_in70_in),
        .I4(index269_in),
        .O(\edge[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0FFF0FFF00000DDD)) 
    \edge[0]_i_11 
       (.I0(\edge10x_reg_n_0_[3] ),
        .I1(p_0_in31_in),
        .I2(index239_in),
        .I3(p_0_in40_in),
        .I4(\edge10x_reg_n_0_[1] ),
        .I5(\edge10x_reg_n_0_[0] ),
        .O(\edge[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \edge[0]_i_12 
       (.I0(\edge11x_reg_n_0_[0] ),
        .I1(\edge11x_reg_n_0_[1] ),
        .I2(p_0_in1_in),
        .O(\edge[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hBABB)) 
    \edge[0]_i_13 
       (.I0(\edge8x_reg_n_0_[0] ),
        .I1(\edge8x_reg_n_0_[1] ),
        .I2(p_0_in58_in),
        .I3(\edge8x_reg_n_0_[3] ),
        .O(\edge[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4F4F4FFF4FFF4)) 
    \edge[0]_i_1__0 
       (.I0(\edge[0]_i_2__0_n_0 ),
        .I1(\edge[0]_i_3__0_n_0 ),
        .I2(\edge[0]_i_4_n_0 ),
        .I3(\edge[0]_i_5_n_0 ),
        .I4(\edge[0]_i_6_n_0 ),
        .I5(\edge[0]_i_7_n_0 ),
        .O(\edge[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8FFF)) 
    \edge[0]_i_2__0 
       (.I0(p_0_in25_in),
        .I1(index224_in),
        .I2(ADDRB[4]),
        .I3(ADDRB[5]),
        .O(\edge[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF544454445444)) 
    \edge[0]_i_3__0 
       (.I0(\edge[0]_i_8_n_0 ),
        .I1(\edge[0]_i_9_n_0 ),
        .I2(\edge11x_reg_n_0_[7] ),
        .I3(index215_in),
        .I4(\edge11x_reg_n_0_[9] ),
        .I5(index221_in),
        .O(\edge[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00D500FF00D50000)) 
    \edge[0]_i_4 
       (.I0(\edge[0]_i_10_n_0 ),
        .I1(\edge8x_reg_n_0_[7] ),
        .I2(index272_in),
        .I3(ADDRB[5]),
        .I4(ADDRB[4]),
        .I5(\edge4x_reg_n_0_[0] ),
        .O(\edge[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \edge[0]_i_5 
       (.I0(ADDRB[5]),
        .I1(ADDRB[4]),
        .O(\edge[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \edge[0]_i_6 
       (.I0(index251_in),
        .I1(p_0_in52_in),
        .O(\edge[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF544454445444)) 
    \edge[0]_i_7 
       (.I0(i__carry_i_3__7_n_0),
        .I1(\edge[0]_i_11_n_0 ),
        .I2(p_0_in43_in),
        .I3(index242_in),
        .I4(p_0_in49_in),
        .I5(index248_in),
        .O(\edge[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edge[0]_i_8 
       (.I0(index218_in),
        .I1(p_0_in19_in),
        .O(\edge[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000F444F444F444)) 
    \edge[0]_i_9 
       (.I0(i__carry_i_4__0_n_0),
        .I1(\edge[0]_i_12_n_0 ),
        .I2(index29_in),
        .I3(\edge11x_reg_n_0_[5] ),
        .I4(p_0_in13_in),
        .I5(index212_in),
        .O(\edge[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FF40FFFFFF40)) 
    \edge[1]_i_1__0 
       (.I0(\edge[1]_i_2__0_n_0 ),
        .I1(ADDRB[5]),
        .I2(ADDRB[4]),
        .I3(\edge[1]_i_3_n_0 ),
        .I4(\edge[1]_i_4_n_0 ),
        .I5(\edge[2]_i_6_n_0 ),
        .O(\edge[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00AEAEAE)) 
    \edge[1]_i_2__0 
       (.I0(i__carry_i_3__3_n_0),
        .I1(\edge[1]_i_5_n_0 ),
        .I2(\edge[2]_i_7_n_0 ),
        .I3(p_0_in25_in),
        .I4(index224_in),
        .O(\edge[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h0000F3AA)) 
    \edge[1]_i_3 
       (.I0(\edge4x_reg_n_0_[1] ),
        .I1(\edge[1]_i_6_n_0 ),
        .I2(\edge[3]_i_6_n_0 ),
        .I3(ADDRB[4]),
        .I4(ADDRB[5]),
        .O(\edge[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAFFEAFFEAFF)) 
    \edge[1]_i_4 
       (.I0(i__carry_i_3__7_n_0),
        .I1(index242_in),
        .I2(p_0_in43_in),
        .I3(\edge[1]_i_7_n_0 ),
        .I4(p_0_in40_in),
        .I5(index239_in),
        .O(\edge[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \edge[1]_i_5 
       (.I0(i__carry_i_4__0_n_0),
        .I1(index29_in),
        .I2(\edge11x_reg_n_0_[5] ),
        .I3(\edge11x_reg_n_0_[0] ),
        .I4(\edge11x_reg_n_0_[1] ),
        .O(\edge[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF1FFF1FFF1)) 
    \edge[1]_i_6 
       (.I0(p_0_in58_in),
        .I1(\edge8x_reg_n_0_[3] ),
        .I2(\edge8x_reg_n_0_[0] ),
        .I3(\edge8x_reg_n_0_[1] ),
        .I4(\edge8x_reg_n_0_[5] ),
        .I5(index266_in),
        .O(\edge[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFCFDFCFC)) 
    \edge[1]_i_7 
       (.I0(\edge10x_reg_n_0_[3] ),
        .I1(\edge10x_reg_n_0_[0] ),
        .I2(\edge10x_reg_n_0_[1] ),
        .I3(p_0_in31_in),
        .I4(p_0_in37_in),
        .O(\edge[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFBAFFFFFFBA)) 
    \edge[2]_i_1__0 
       (.I0(\edge[2]_i_2__0_n_0 ),
        .I1(\edge[2]_i_3_n_0 ),
        .I2(\edge4x_reg_n_0_[2] ),
        .I3(\edge[2]_i_4_n_0 ),
        .I4(\edge[2]_i_5_n_0 ),
        .I5(\edge[2]_i_6_n_0 ),
        .O(\edge[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h40004444)) 
    \edge[2]_i_2__0 
       (.I0(ADDRB[5]),
        .I1(ADDRB[4]),
        .I2(index272_in),
        .I3(\edge8x_reg_n_0_[7] ),
        .I4(i__carry_i_3__8_n_0),
        .O(\edge[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \edge[2]_i_3 
       (.I0(ADDRB[5]),
        .I1(ADDRB[4]),
        .O(\edge[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFF8)) 
    \edge[2]_i_4 
       (.I0(\edge11x_reg_n_0_[5] ),
        .I1(index29_in),
        .I2(\edge[2]_i_7_n_0 ),
        .I3(i__carry_i_4__0_n_0),
        .I4(\edge[0]_i_2__0_n_0 ),
        .I5(i__carry_i_3__3_n_0),
        .O(\edge[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \edge[2]_i_5 
       (.I0(p_0_in40_in),
        .I1(index239_in),
        .I2(p_0_in43_in),
        .I3(index242_in),
        .I4(i__carry_i_5_n_0),
        .I5(i__carry_i_3__7_n_0),
        .O(\edge[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF8FFF8FFF8F)) 
    \edge[2]_i_6 
       (.I0(p_0_in49_in),
        .I1(index248_in),
        .I2(ADDRB[5]),
        .I3(ADDRB[4]),
        .I4(index251_in),
        .I5(p_0_in52_in),
        .O(\edge[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \edge[2]_i_7 
       (.I0(p_0_in13_in),
        .I1(index212_in),
        .I2(\edge11x_reg_n_0_[7] ),
        .I3(index215_in),
        .O(\edge[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFDCCFDCCFDCCCDCC)) 
    \edge[3]_i_1__0 
       (.I0(\edge[3]_i_2__0_n_0 ),
        .I1(\edge[3]_i_3__0_n_0 ),
        .I2(ADDRB[4]),
        .I3(ADDRB[5]),
        .I4(\edge[3]_i_4_n_0 ),
        .I5(\edge[3]_i_5_n_0 ),
        .O(\edge[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000770777077707)) 
    \edge[3]_i_2__0 
       (.I0(p_0_in52_in),
        .I1(index251_in),
        .I2(i__carry_i_3__4_n_0),
        .I3(i__carry_i_3__7_n_0),
        .I4(index248_in),
        .I5(p_0_in49_in),
        .O(\edge[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h030A000A)) 
    \edge[3]_i_3__0 
       (.I0(\edge4x_reg_n_0_[3] ),
        .I1(\edge[3]_i_6_n_0 ),
        .I2(ADDRB[5]),
        .I3(ADDRB[4]),
        .I4(\edge[3]_i_7_n_0 ),
        .O(\edge[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABBBABBBABBB)) 
    \edge[3]_i_4 
       (.I0(i__carry_i_3__3_n_0),
        .I1(i__carry_i_3__0_n_0),
        .I2(p_0_in13_in),
        .I3(index212_in),
        .I4(\edge11x_reg_n_0_[7] ),
        .I5(index215_in),
        .O(\edge[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edge[3]_i_5 
       (.I0(index224_in),
        .I1(p_0_in25_in),
        .O(\edge[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \edge[3]_i_6 
       (.I0(p_0_in70_in),
        .I1(index269_in),
        .I2(\edge8x_reg_n_0_[7] ),
        .I3(index272_in),
        .O(\edge[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \edge[3]_i_7 
       (.I0(i__carry_i_3__9_n_0),
        .I1(\edge8x_reg_n_0_[5] ),
        .I2(index266_in),
        .O(\edge[3]_i_7_n_0 ));
  FDRE \edge_reg[0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\edge[0]_i_1__0_n_0 ),
        .Q(bankSel_d_reg_0[0]),
        .R(rst));
  FDRE \edge_reg[1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\edge[1]_i_1__0_n_0 ),
        .Q(bankSel_d_reg_0[1]),
        .R(rst));
  FDRE \edge_reg[2] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\edge[2]_i_1__0_n_0 ),
        .Q(bankSel_d_reg_0[2]),
        .R(rst));
  FDRE \edge_reg[3] 
       (.C(B_recclk),
        .CE(B_en),
        .D(\edge[3]_i_1__0_n_0 ),
        .Q(bankSel_d_reg_0[3]),
        .R(rst));
  LUT5 #(
    .INIT(32'h00000777)) 
    i__carry_i_1__10
       (.I0(index215_in),
        .I1(\edge11x_reg_n_0_[7] ),
        .I2(index212_in),
        .I3(p_0_in13_in),
        .I4(i__carry_i_3__0_n_0),
        .O(i__carry_i_1__10_n_0));
  LUT6 #(
    .INIT(64'hAAAAABBBABBBABBB)) 
    i__carry_i_1__11
       (.I0(i__carry_i_3__3_n_0),
        .I1(i__carry_i_3__0_n_0),
        .I2(p_0_in13_in),
        .I3(index212_in),
        .I4(\edge11x_reg_n_0_[7] ),
        .I5(index215_in),
        .O(i__carry_i_1__11_n_0));
  LUT5 #(
    .INIT(32'h00000777)) 
    i__carry_i_1__12
       (.I0(index242_in),
        .I1(p_0_in43_in),
        .I2(index239_in),
        .I3(p_0_in40_in),
        .I4(i__carry_i_3__5_n_0),
        .O(i__carry_i_1__12_n_0));
  LUT3 #(
    .INIT(8'h2A)) 
    i__carry_i_1__13
       (.I0(i__carry_i_3__9_n_0),
        .I1(\edge8x_reg_n_0_[5] ),
        .I2(index266_in),
        .O(i__carry_i_1__13_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    i__carry_i_1__14
       (.I0(i__carry_i_3__6_n_0),
        .I1(\edge10x_reg_n_0_[3] ),
        .I2(\edge10x_reg_n_0_[0] ),
        .I3(\edge10x_reg_n_0_[1] ),
        .I4(p_0_in31_in),
        .I5(p_0_in37_in),
        .O(i__carry_i_1__14_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    i__carry_i_1__15
       (.I0(p_0_in64_in),
        .I1(p_0_in58_in),
        .I2(\edge8x_reg_n_0_[3] ),
        .I3(\edge8x_reg_n_0_[0] ),
        .I4(\edge8x_reg_n_0_[1] ),
        .O(i__carry_i_1__15_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    i__carry_i_1__2
       (.I0(\edge11x_reg_n_0_[3] ),
        .I1(\edge11x_reg_n_0_[0] ),
        .I2(\edge11x_reg_n_0_[1] ),
        .I3(p_0_in1_in),
        .I4(p_0_in7_in),
        .O(i__carry_i_1__2_n_0));
  LUT5 #(
    .INIT(32'h00070707)) 
    i__carry_i_1__3
       (.I0(p_0_in13_in),
        .I1(index212_in),
        .I2(i__carry_i_3__1_n_0),
        .I3(index29_in),
        .I4(\edge11x_reg_n_0_[5] ),
        .O(i__carry_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    i__carry_i_1__4
       (.I0(p_0_in7_in),
        .I1(p_0_in1_in),
        .I2(\edge11x_reg_n_0_[1] ),
        .I3(\edge11x_reg_n_0_[0] ),
        .I4(\edge11x_reg_n_0_[3] ),
        .I5(i__carry_i_3__2_n_0),
        .O(i__carry_i_1__4_n_0));
  LUT3 #(
    .INIT(8'hF8)) 
    i__carry_i_1__5
       (.I0(p_0_in19_in),
        .I1(index218_in),
        .I2(i__carry_i_3_n_0),
        .O(i__carry_i_1__5_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    i__carry_i_1__6
       (.I0(\edge10x_reg_n_0_[3] ),
        .I1(\edge10x_reg_n_0_[0] ),
        .I2(\edge10x_reg_n_0_[1] ),
        .I3(p_0_in31_in),
        .I4(p_0_in37_in),
        .O(i__carry_i_1__6_n_0));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    i__carry_i_1__7
       (.I0(p_0_in49_in),
        .I1(index248_in),
        .I2(index245_in),
        .I3(p_0_in46_in),
        .I4(i__carry_i_3__4_n_0),
        .O(i__carry_i_1__7_n_0));
  LUT6 #(
    .INIT(64'h0000000000151515)) 
    i__carry_i_1__8
       (.I0(i__carry_i_3__5_n_0),
        .I1(p_0_in40_in),
        .I2(index239_in),
        .I3(p_0_in43_in),
        .I4(index242_in),
        .I5(i__carry_i_3__7_n_0),
        .O(i__carry_i_1__8_n_0));
  LUT5 #(
    .INIT(32'h00707070)) 
    i__carry_i_1__9
       (.I0(index266_in),
        .I1(\edge8x_reg_n_0_[5] ),
        .I2(i__carry_i_3__9_n_0),
        .I3(p_0_in70_in),
        .I4(index269_in),
        .O(i__carry_i_1__9_n_0));
  LUT5 #(
    .INIT(32'h000C000D)) 
    i__carry_i_2__10
       (.I0(p_0_in37_in),
        .I1(p_0_in31_in),
        .I2(\edge10x_reg_n_0_[1] ),
        .I3(\edge10x_reg_n_0_[0] ),
        .I4(\edge10x_reg_n_0_[3] ),
        .O(i__carry_i_2__10_n_0));
  LUT6 #(
    .INIT(64'hAA00AA8AAA00AA02)) 
    i__carry_i_2__11
       (.I0(i__carry_i_3__8_n_0),
        .I1(p_0_in58_in),
        .I2(\edge8x_reg_n_0_[3] ),
        .I3(\edge8x_reg_n_0_[0] ),
        .I4(\edge8x_reg_n_0_[1] ),
        .I5(i__carry_i_4__4_n_0),
        .O(i__carry_i_2__11_n_0));
  LUT6 #(
    .INIT(64'h5500550055005501)) 
    i__carry_i_2__12
       (.I0(i__carry_i_4__4_n_0),
        .I1(p_0_in58_in),
        .I2(\edge8x_reg_n_0_[3] ),
        .I3(\edge8x_reg_n_0_[0] ),
        .I4(\edge8x_reg_n_0_[1] ),
        .I5(p_0_in64_in),
        .O(i__carry_i_2__12_n_0));
  LUT5 #(
    .INIT(32'hCCCCCCCD)) 
    i__carry_i_2__13
       (.I0(p_0_in64_in),
        .I1(\edge8x_reg_n_0_[0] ),
        .I2(\edge8x_reg_n_0_[1] ),
        .I3(p_0_in58_in),
        .I4(\edge8x_reg_n_0_[3] ),
        .O(i__carry_i_2__13_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    i__carry_i_2__14
       (.I0(i__carry_i_4__1_n_0),
        .I1(p_0_in1_in),
        .I2(\edge11x_reg_n_0_[1] ),
        .I3(\edge11x_reg_n_0_[0] ),
        .I4(i__carry_i_3__2_n_0),
        .I5(i__carry_i_4__0_n_0),
        .O(i__carry_i_2__14_n_0));
  LUT6 #(
    .INIT(64'h0005000000050001)) 
    i__carry_i_2__15
       (.I0(i__carry_i_3__6_n_0),
        .I1(\edge10x_reg_n_0_[3] ),
        .I2(\edge10x_reg_n_0_[0] ),
        .I3(\edge10x_reg_n_0_[1] ),
        .I4(p_0_in31_in),
        .I5(p_0_in37_in),
        .O(i__carry_i_2__15_n_0));
  LUT5 #(
    .INIT(32'h00707070)) 
    i__carry_i_2__2
       (.I0(index215_in),
        .I1(\edge11x_reg_n_0_[7] ),
        .I2(i__carry_i_4_n_0),
        .I3(p_0_in19_in),
        .I4(index218_in),
        .O(i__carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h0070)) 
    i__carry_i_2__3
       (.I0(index215_in),
        .I1(\edge11x_reg_n_0_[7] ),
        .I2(i__carry_i_4_n_0),
        .I3(i__carry_i_3__3_n_0),
        .O(i__carry_i_2__3_n_0));
  LUT3 #(
    .INIT(8'h2A)) 
    i__carry_i_2__4
       (.I0(i__carry_i_4_n_0),
        .I1(\edge11x_reg_n_0_[7] ),
        .I2(index215_in),
        .O(i__carry_i_2__4_n_0));
  LUT6 #(
    .INIT(64'h0000000000010101)) 
    i__carry_i_2__5
       (.I0(p_0_in1_in),
        .I1(\edge11x_reg_n_0_[1] ),
        .I2(\edge11x_reg_n_0_[0] ),
        .I3(\edge11x_reg_n_0_[5] ),
        .I4(index29_in),
        .I5(i__carry_i_4__0_n_0),
        .O(i__carry_i_2__5_n_0));
  LUT5 #(
    .INIT(32'h00020003)) 
    i__carry_i_2__6
       (.I0(\edge11x_reg_n_0_[3] ),
        .I1(\edge11x_reg_n_0_[0] ),
        .I2(\edge11x_reg_n_0_[1] ),
        .I3(p_0_in1_in),
        .I4(p_0_in7_in),
        .O(i__carry_i_2__6_n_0));
  LUT5 #(
    .INIT(32'h02220000)) 
    i__carry_i_2__7
       (.I0(\edge[0]_i_7_n_0 ),
        .I1(\edge[2]_i_5_n_0 ),
        .I2(p_0_in49_in),
        .I3(index248_in),
        .I4(\edge[1]_i_4_n_0 ),
        .O(i__carry_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h0444)) 
    i__carry_i_2__8
       (.I0(i__carry_i_4__3_n_0),
        .I1(i__carry_i_4__2_n_0),
        .I2(p_0_in46_in),
        .I3(index245_in),
        .O(i__carry_i_2__8_n_0));
  LUT6 #(
    .INIT(64'h00000000002A2A2A)) 
    i__carry_i_2__9
       (.I0(i__carry_i_4__2_n_0),
        .I1(p_0_in40_in),
        .I2(index239_in),
        .I3(p_0_in43_in),
        .I4(index242_in),
        .I5(i__carry_i_5_n_0),
        .O(i__carry_i_2__9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00000777)) 
    i__carry_i_3
       (.I0(index215_in),
        .I1(\edge11x_reg_n_0_[7] ),
        .I2(index212_in),
        .I3(p_0_in13_in),
        .I4(i__carry_i_3__0_n_0),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hF8)) 
    i__carry_i_3__0
       (.I0(\edge11x_reg_n_0_[5] ),
        .I1(index29_in),
        .I2(i__carry_i_3__1_n_0),
        .O(i__carry_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i__carry_i_3__1
       (.I0(p_0_in7_in),
        .I1(p_0_in1_in),
        .I2(\edge11x_reg_n_0_[1] ),
        .I3(\edge11x_reg_n_0_[0] ),
        .I4(\edge11x_reg_n_0_[3] ),
        .O(i__carry_i_3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_3__2
       (.I0(index29_in),
        .I1(\edge11x_reg_n_0_[5] ),
        .O(i__carry_i_3__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    i__carry_i_3__3
       (.I0(p_0_in19_in),
        .I1(index218_in),
        .I2(\edge11x_reg_n_0_[9] ),
        .I3(index221_in),
        .O(i__carry_i_3__3_n_0));
  LUT5 #(
    .INIT(32'h00000777)) 
    i__carry_i_3__4
       (.I0(index242_in),
        .I1(p_0_in43_in),
        .I2(index239_in),
        .I3(p_0_in40_in),
        .I4(i__carry_i_3__5_n_0),
        .O(i__carry_i_3__4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i__carry_i_3__5
       (.I0(p_0_in37_in),
        .I1(p_0_in31_in),
        .I2(\edge10x_reg_n_0_[1] ),
        .I3(\edge10x_reg_n_0_[0] ),
        .I4(\edge10x_reg_n_0_[3] ),
        .O(i__carry_i_3__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_3__6
       (.I0(index239_in),
        .I1(p_0_in40_in),
        .O(i__carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_3__7
       (.I0(index245_in),
        .I1(p_0_in46_in),
        .O(i__carry_i_3__7_n_0));
  LUT5 #(
    .INIT(32'h00707070)) 
    i__carry_i_3__8
       (.I0(index266_in),
        .I1(\edge8x_reg_n_0_[5] ),
        .I2(i__carry_i_4__5_n_0),
        .I3(p_0_in70_in),
        .I4(index269_in),
        .O(i__carry_i_3__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    i__carry_i_3__9
       (.I0(p_0_in64_in),
        .I1(p_0_in58_in),
        .I2(\edge8x_reg_n_0_[3] ),
        .I3(\edge8x_reg_n_0_[0] ),
        .I4(\edge8x_reg_n_0_[1] ),
        .O(i__carry_i_3__9_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    i__carry_i_4
       (.I0(i__carry_i_4__1_n_0),
        .I1(p_0_in1_in),
        .I2(\edge11x_reg_n_0_[1] ),
        .I3(\edge11x_reg_n_0_[0] ),
        .I4(i__carry_i_3__2_n_0),
        .I5(i__carry_i_4__0_n_0),
        .O(i__carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    i__carry_i_4__0
       (.I0(p_0_in7_in),
        .I1(p_0_in1_in),
        .I2(\edge11x_reg_n_0_[1] ),
        .I3(\edge11x_reg_n_0_[0] ),
        .I4(\edge11x_reg_n_0_[3] ),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_4__1
       (.I0(index212_in),
        .I1(p_0_in13_in),
        .O(i__carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h0005000000050001)) 
    i__carry_i_4__2
       (.I0(i__carry_i_3__6_n_0),
        .I1(\edge10x_reg_n_0_[3] ),
        .I2(\edge10x_reg_n_0_[0] ),
        .I3(\edge10x_reg_n_0_[1] ),
        .I4(p_0_in31_in),
        .I5(p_0_in37_in),
        .O(i__carry_i_4__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    i__carry_i_4__3
       (.I0(i__carry_i_5_n_0),
        .I1(index242_in),
        .I2(p_0_in43_in),
        .I3(index239_in),
        .I4(p_0_in40_in),
        .O(i__carry_i_4__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_4__4
       (.I0(index266_in),
        .I1(\edge8x_reg_n_0_[5] ),
        .O(i__carry_i_4__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    i__carry_i_4__5
       (.I0(p_0_in58_in),
        .I1(\edge8x_reg_n_0_[3] ),
        .I2(\edge8x_reg_n_0_[0] ),
        .I3(\edge8x_reg_n_0_[1] ),
        .I4(p_0_in64_in),
        .O(i__carry_i_4__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    i__carry_i_5
       (.I0(p_0_in37_in),
        .I1(p_0_in31_in),
        .I2(\edge10x_reg_n_0_[1] ),
        .I3(\edge10x_reg_n_0_[0] ),
        .I4(\edge10x_reg_n_0_[3] ),
        .O(i__carry_i_5_n_0));
  CARRY4 \index2_inferred__13/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__13/i__carry_CO_UNCONNECTED [3:2],index239_in,\index2_inferred__13/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__13/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__6_n_0,i__carry_i_2__10_n_0}));
  CARRY4 \index2_inferred__14/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__14/i__carry_CO_UNCONNECTED [3:2],index242_in,\index2_inferred__14/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__14/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__14_n_0,i__carry_i_2__15_n_0}));
  CARRY4 \index2_inferred__15/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__15/i__carry_CO_UNCONNECTED [3:2],index245_in,\index2_inferred__15/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__15/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__12_n_0,i__carry_i_2__9_n_0}));
  CARRY4 \index2_inferred__16/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__16/i__carry_CO_UNCONNECTED [3:2],index248_in,\index2_inferred__16/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__16/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__8_n_0,i__carry_i_2__8_n_0}));
  CARRY4 \index2_inferred__17/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__17/i__carry_CO_UNCONNECTED [3:2],index251_in,\index2_inferred__17/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__17/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__7_n_0,i__carry_i_2__7_n_0}));
  CARRY4 \index2_inferred__22/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__22/i__carry_CO_UNCONNECTED [3:2],index266_in,\index2_inferred__22/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__22/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__15_n_0,i__carry_i_2__13_n_0}));
  CARRY4 \index2_inferred__23/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__23/i__carry_CO_UNCONNECTED [3:2],index269_in,\index2_inferred__23/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__23/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__13_n_0,i__carry_i_2__12_n_0}));
  CARRY4 \index2_inferred__24/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__24/i__carry_CO_UNCONNECTED [3:2],index272_in,\index2_inferred__24/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__24/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__9_n_0,i__carry_i_2__11_n_0}));
  CARRY4 \index2_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__3/i__carry_CO_UNCONNECTED [3:2],index29_in,\index2_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__3/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__2_n_0,i__carry_i_2__6_n_0}));
  CARRY4 \index2_inferred__4/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__4/i__carry_CO_UNCONNECTED [3:2],index212_in,\index2_inferred__4/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__4/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__4_n_0,i__carry_i_2__5_n_0}));
  CARRY4 \index2_inferred__5/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__5/i__carry_CO_UNCONNECTED [3:2],index215_in,\index2_inferred__5/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__5/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__3_n_0,i__carry_i_2__14_n_0}));
  CARRY4 \index2_inferred__6/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__6/i__carry_CO_UNCONNECTED [3:2],index218_in,\index2_inferred__6/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__6/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__10_n_0,i__carry_i_2__4_n_0}));
  CARRY4 \index2_inferred__7/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__7/i__carry_CO_UNCONNECTED [3:2],index221_in,\index2_inferred__7/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__7/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__5_n_0,i__carry_i_2__2_n_0}));
  CARRY4 \index2_inferred__8/i__carry 
       (.CI(1'b0),
        .CO({\NLW_index2_inferred__8/i__carry_CO_UNCONNECTED [3:2],index224_in,\index2_inferred__8/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_index2_inferred__8/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__11_n_0,i__carry_i_2__3_n_0}));
  FDRE \we_d_reg[0][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[0]),
        .Q(\we_d_reg_n_0_[0][0] ),
        .R(rst));
  FDRE \we_d_reg[0][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[1]),
        .Q(\we_d_reg_n_0_[0][1] ),
        .R(rst));
  FDRE \we_d_reg[1][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[2]),
        .Q(\we_d_reg_n_0_[1][0] ),
        .R(rst));
  FDRE \we_d_reg[1][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[3]),
        .Q(\we_d_reg_n_0_[1][1] ),
        .R(rst));
  FDRE \we_d_reg[2][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[4]),
        .Q(\we_d_reg_n_0_[2][0] ),
        .R(rst));
  FDRE \we_d_reg[2][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[5]),
        .Q(\we_d_reg_n_0_[2][1] ),
        .R(rst));
  FDRE \we_d_reg[3][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[6]),
        .Q(\we_d_reg_n_0_[3][0] ),
        .R(rst));
  FDRE \we_d_reg[3][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[7]),
        .Q(\we_d_reg_n_0_[3][1] ),
        .R(rst));
  FDRE \we_d_reg[4][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[8]),
        .Q(\we_d_reg_n_0_[4][0] ),
        .R(rst));
  FDRE \we_d_reg[4][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[9]),
        .Q(\we_d_reg_n_0_[4][1] ),
        .R(rst));
  FDRE \we_d_reg[5][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[10]),
        .Q(\we_d_reg_n_0_[5][0] ),
        .R(rst));
  FDRE \we_d_reg[5][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[11]),
        .Q(\we_d_reg_n_0_[5][1] ),
        .R(rst));
  FDRE \we_d_reg[6][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[12]),
        .Q(\we_d_reg_n_0_[6][0] ),
        .R(rst));
  FDRE \we_d_reg[6][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[13]),
        .Q(\we_d_reg_n_0_[6][1] ),
        .R(rst));
  FDRE \we_d_reg[7][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[14]),
        .Q(\we_d_reg_n_0_[7][0] ),
        .R(rst));
  FDRE \we_d_reg[7][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[15]),
        .Q(\we_d_reg_n_0_[7][1] ),
        .R(rst));
  FDRE \we_d_reg[8][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[16]),
        .Q(\we_d_reg_n_0_[8][0] ),
        .R(rst));
  FDRE \we_d_reg[8][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[17]),
        .Q(\we_d_reg_n_0_[8][1] ),
        .R(rst));
  FDRE \we_d_reg[9][0] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[18]),
        .Q(\we_d_reg_n_0_[9][0] ),
        .R(rst));
  FDRE \we_d_reg[9][1] 
       (.C(B_recclk),
        .CE(B_en),
        .D(DOB[19]),
        .Q(\we_d_reg_n_0_[9][1] ),
        .R(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_os48_1011x20bTo10b_top2
   (A_dout20bEn,
    B_dout20bEn,
    B_dout10bEn,
    A_dout10bEn,
    A_dout10b,
    A_dout20b,
    B_dout10b,
    B_dout20b,
    B_en,
    rst,
    A_en,
    A_recclk,
    B_recclk,
    B_din20b,
    bitOrderDinLSB,
    B_mode,
    A_din20b,
    bitOrderDoutLSB);
  output A_dout20bEn;
  output B_dout20bEn;
  output B_dout10bEn;
  output A_dout10bEn;
  output [9:0]A_dout10b;
  output [19:0]A_dout20b;
  output [9:0]B_dout10b;
  output [19:0]B_dout20b;
  input B_en;
  input rst;
  input A_en;
  input A_recclk;
  input B_recclk;
  input [19:0]B_din20b;
  input bitOrderDinLSB;
  input [1:0]B_mode;
  input [19:0]A_din20b;
  input bitOrderDoutLSB;

  wire [19:0]A_din20b;
  wire [9:0]A_dout10b;
  wire A_dout10bEn;
  wire [19:0]A_dout20b;
  wire A_dout20bEn;
  wire A_dout20bEn0;
  wire A_dout20bEn_i;
  wire A_dout20b_i;
  wire \A_dout20b_i_reg_n_0_[0] ;
  wire \A_dout20b_i_reg_n_0_[10] ;
  wire \A_dout20b_i_reg_n_0_[11] ;
  wire \A_dout20b_i_reg_n_0_[12] ;
  wire \A_dout20b_i_reg_n_0_[13] ;
  wire \A_dout20b_i_reg_n_0_[14] ;
  wire \A_dout20b_i_reg_n_0_[15] ;
  wire \A_dout20b_i_reg_n_0_[16] ;
  wire \A_dout20b_i_reg_n_0_[17] ;
  wire \A_dout20b_i_reg_n_0_[18] ;
  wire \A_dout20b_i_reg_n_0_[19] ;
  wire \A_dout20b_i_reg_n_0_[1] ;
  wire \A_dout20b_i_reg_n_0_[2] ;
  wire \A_dout20b_i_reg_n_0_[3] ;
  wire \A_dout20b_i_reg_n_0_[4] ;
  wire \A_dout20b_i_reg_n_0_[5] ;
  wire \A_dout20b_i_reg_n_0_[6] ;
  wire \A_dout20b_i_reg_n_0_[7] ;
  wire \A_dout20b_i_reg_n_0_[8] ;
  wire \A_dout20b_i_reg_n_0_[9] ;
  wire [9:0]A_dout_i;
  wire [3:0]A_edge;
  wire A_en;
  wire A_recclk;
  wire [3:0]A_valid;
  wire B_bankSel;
  wire [3:0]\B_bitSel[0]_22 ;
  wire [3:0]\B_bitSel[1]_23 ;
  wire B_byteRdy;
  wire [3:0]B_dSel;
  wire [19:0]B_din20b;
  wire [9:0]B_dout10b;
  wire B_dout10bEn;
  wire [19:0]B_dout20b;
  wire B_dout20bEn;
  wire B_dout20bEn0;
  wire B_dout20bEn_i;
  wire \B_dout20b_i_reg_n_0_[0] ;
  wire \B_dout20b_i_reg_n_0_[10] ;
  wire \B_dout20b_i_reg_n_0_[11] ;
  wire \B_dout20b_i_reg_n_0_[12] ;
  wire \B_dout20b_i_reg_n_0_[13] ;
  wire \B_dout20b_i_reg_n_0_[14] ;
  wire \B_dout20b_i_reg_n_0_[15] ;
  wire \B_dout20b_i_reg_n_0_[16] ;
  wire \B_dout20b_i_reg_n_0_[17] ;
  wire \B_dout20b_i_reg_n_0_[18] ;
  wire \B_dout20b_i_reg_n_0_[19] ;
  wire \B_dout20b_i_reg_n_0_[1] ;
  wire \B_dout20b_i_reg_n_0_[2] ;
  wire \B_dout20b_i_reg_n_0_[3] ;
  wire \B_dout20b_i_reg_n_0_[4] ;
  wire \B_dout20b_i_reg_n_0_[5] ;
  wire \B_dout20b_i_reg_n_0_[6] ;
  wire \B_dout20b_i_reg_n_0_[7] ;
  wire \B_dout20b_i_reg_n_0_[8] ;
  wire \B_dout20b_i_reg_n_0_[9] ;
  wire [9:0]B_dout_i;
  wire [3:0]B_edge;
  wire B_en;
  wire [1:0]B_mode;
  wire B_recclk;
  wire [3:0]B_valid;
  wire [1:0]\B_we[0]_12 ;
  wire [1:0]\B_we[1]_13 ;
  wire [1:0]\B_we[2]_14 ;
  wire [1:0]\B_we[3]_15 ;
  wire [1:0]\B_we[4]_16 ;
  wire [1:0]\B_we[5]_17 ;
  wire [1:0]\B_we[6]_18 ;
  wire [1:0]\B_we[7]_19 ;
  wire [1:0]\B_we[8]_20 ;
  wire [1:0]\B_we[9]_21 ;
  wire C_DATAA_n_13;
  wire C_DATAB_n_14;
  wire C_DATAB_n_19;
  wire C_DATAB_n_20;
  wire C_DATAB_n_21;
  wire C_DECISION_n_16;
  wire C_DECISION_n_17;
  wire C_DECISION_n_18;
  wire bankSel;
  wire bitOrderDinLSB;
  wire bitOrderDoutLSB;
  wire [3:0]\bitSel[0]_34 ;
  wire [3:0]\bitSel[1]_35 ;
  wire byteRdy;
  wire [3:0]dSel;
  wire p_24_in;
  wire p_25_in;
  wire p_34_in;
  wire p_35_in;
  wire p_45_in;
  wire p_46_in;
  wire rst;
  wire [1:0]\we[0]_24 ;
  wire [1:0]\we[1]_25 ;
  wire [1:0]\we[2]_26 ;
  wire [1:0]\we[3]_27 ;
  wire [1:0]\we[4]_28 ;
  wire [1:0]\we[5]_29 ;
  wire [1:0]\we[6]_30 ;
  wire [1:0]\we[7]_31 ;
  wire [1:0]\we[8]_32 ;
  wire [1:0]\we[9]_33 ;

  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout10b[0]_INST_0 
       (.I0(A_dout_i[9]),
        .I1(bitOrderDoutLSB),
        .I2(A_dout_i[0]),
        .O(A_dout10b[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout10b[1]_INST_0 
       (.I0(A_dout_i[8]),
        .I1(bitOrderDoutLSB),
        .I2(A_dout_i[1]),
        .O(A_dout10b[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout10b[2]_INST_0 
       (.I0(A_dout_i[7]),
        .I1(bitOrderDoutLSB),
        .I2(A_dout_i[2]),
        .O(A_dout10b[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout10b[3]_INST_0 
       (.I0(A_dout_i[6]),
        .I1(bitOrderDoutLSB),
        .I2(A_dout_i[3]),
        .O(A_dout10b[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout10b[4]_INST_0 
       (.I0(A_dout_i[5]),
        .I1(bitOrderDoutLSB),
        .I2(A_dout_i[4]),
        .O(A_dout10b[4]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout10b[5]_INST_0 
       (.I0(A_dout_i[4]),
        .I1(bitOrderDoutLSB),
        .I2(A_dout_i[5]),
        .O(A_dout10b[5]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout10b[6]_INST_0 
       (.I0(A_dout_i[3]),
        .I1(bitOrderDoutLSB),
        .I2(A_dout_i[6]),
        .O(A_dout10b[6]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout10b[7]_INST_0 
       (.I0(A_dout_i[2]),
        .I1(bitOrderDoutLSB),
        .I2(A_dout_i[7]),
        .O(A_dout10b[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout10b[8]_INST_0 
       (.I0(A_dout_i[1]),
        .I1(bitOrderDoutLSB),
        .I2(A_dout_i[8]),
        .O(A_dout10b[8]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout10b[9]_INST_0 
       (.I0(A_dout_i[0]),
        .I1(bitOrderDoutLSB),
        .I2(A_dout_i[9]),
        .O(A_dout10b[9]));
  FDCE A_dout20bEn_i_reg
       (.C(A_recclk),
        .CE(1'b1),
        .CLR(rst),
        .D(C_DATAA_n_13),
        .Q(A_dout20bEn_i));
  FDCE A_dout20bEn_reg
       (.C(A_recclk),
        .CE(1'b1),
        .CLR(rst),
        .D(A_dout20bEn0),
        .Q(A_dout20bEn));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[0]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[19] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[0] ),
        .O(A_dout20b[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[10]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[9] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[10] ),
        .O(A_dout20b[10]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[11]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[8] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[11] ),
        .O(A_dout20b[11]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[12]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[7] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[12] ),
        .O(A_dout20b[12]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[13]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[6] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[13] ),
        .O(A_dout20b[13]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[14]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[5] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[14] ),
        .O(A_dout20b[14]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[15]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[4] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[15] ),
        .O(A_dout20b[15]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[16]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[3] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[16] ),
        .O(A_dout20b[16]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[17]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[2] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[17] ),
        .O(A_dout20b[17]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[18]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[1] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[18] ),
        .O(A_dout20b[18]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[19]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[0] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[19] ),
        .O(A_dout20b[19]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[1]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[18] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[1] ),
        .O(A_dout20b[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[2]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[17] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[2] ),
        .O(A_dout20b[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[3]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[16] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[3] ),
        .O(A_dout20b[3]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[4]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[15] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[4] ),
        .O(A_dout20b[4]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[5]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[14] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[5] ),
        .O(A_dout20b[5]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[6]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[13] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[6] ),
        .O(A_dout20b[6]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[7]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[12] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[7] ),
        .O(A_dout20b[7]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[8]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[11] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[8] ),
        .O(A_dout20b[8]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_dout20b[9]_INST_0 
       (.I0(\A_dout20b_i_reg_n_0_[10] ),
        .I1(bitOrderDoutLSB),
        .I2(\A_dout20b_i_reg_n_0_[9] ),
        .O(A_dout20b[9]));
  FDCE \A_dout20b_i_reg[0] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(A_dout_i[0]),
        .Q(\A_dout20b_i_reg_n_0_[0] ));
  FDCE \A_dout20b_i_reg[10] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(\A_dout20b_i_reg_n_0_[0] ),
        .Q(\A_dout20b_i_reg_n_0_[10] ));
  FDCE \A_dout20b_i_reg[11] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(\A_dout20b_i_reg_n_0_[1] ),
        .Q(\A_dout20b_i_reg_n_0_[11] ));
  FDCE \A_dout20b_i_reg[12] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(\A_dout20b_i_reg_n_0_[2] ),
        .Q(\A_dout20b_i_reg_n_0_[12] ));
  FDCE \A_dout20b_i_reg[13] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(\A_dout20b_i_reg_n_0_[3] ),
        .Q(\A_dout20b_i_reg_n_0_[13] ));
  FDCE \A_dout20b_i_reg[14] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(\A_dout20b_i_reg_n_0_[4] ),
        .Q(\A_dout20b_i_reg_n_0_[14] ));
  FDCE \A_dout20b_i_reg[15] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(\A_dout20b_i_reg_n_0_[5] ),
        .Q(\A_dout20b_i_reg_n_0_[15] ));
  FDCE \A_dout20b_i_reg[16] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(\A_dout20b_i_reg_n_0_[6] ),
        .Q(\A_dout20b_i_reg_n_0_[16] ));
  FDCE \A_dout20b_i_reg[17] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(\A_dout20b_i_reg_n_0_[7] ),
        .Q(\A_dout20b_i_reg_n_0_[17] ));
  FDCE \A_dout20b_i_reg[18] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(\A_dout20b_i_reg_n_0_[8] ),
        .Q(\A_dout20b_i_reg_n_0_[18] ));
  FDCE \A_dout20b_i_reg[19] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(\A_dout20b_i_reg_n_0_[9] ),
        .Q(\A_dout20b_i_reg_n_0_[19] ));
  FDCE \A_dout20b_i_reg[1] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(A_dout_i[1]),
        .Q(\A_dout20b_i_reg_n_0_[1] ));
  FDCE \A_dout20b_i_reg[2] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(A_dout_i[2]),
        .Q(\A_dout20b_i_reg_n_0_[2] ));
  FDCE \A_dout20b_i_reg[3] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(A_dout_i[3]),
        .Q(\A_dout20b_i_reg_n_0_[3] ));
  FDCE \A_dout20b_i_reg[4] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(A_dout_i[4]),
        .Q(\A_dout20b_i_reg_n_0_[4] ));
  FDCE \A_dout20b_i_reg[5] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(A_dout_i[5]),
        .Q(\A_dout20b_i_reg_n_0_[5] ));
  FDCE \A_dout20b_i_reg[6] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(A_dout_i[6]),
        .Q(\A_dout20b_i_reg_n_0_[6] ));
  FDCE \A_dout20b_i_reg[7] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(A_dout_i[7]),
        .Q(\A_dout20b_i_reg_n_0_[7] ));
  FDCE \A_dout20b_i_reg[8] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(A_dout_i[8]),
        .Q(\A_dout20b_i_reg_n_0_[8] ));
  FDCE \A_dout20b_i_reg[9] 
       (.C(A_recclk),
        .CE(A_dout20b_i),
        .CLR(rst),
        .D(A_dout_i[9]),
        .Q(\A_dout20b_i_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout10b[0]_INST_0 
       (.I0(B_dout_i[9]),
        .I1(bitOrderDoutLSB),
        .I2(B_dout_i[0]),
        .O(B_dout10b[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout10b[1]_INST_0 
       (.I0(B_dout_i[8]),
        .I1(bitOrderDoutLSB),
        .I2(B_dout_i[1]),
        .O(B_dout10b[1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout10b[2]_INST_0 
       (.I0(B_dout_i[7]),
        .I1(bitOrderDoutLSB),
        .I2(B_dout_i[2]),
        .O(B_dout10b[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout10b[3]_INST_0 
       (.I0(B_dout_i[6]),
        .I1(bitOrderDoutLSB),
        .I2(B_dout_i[3]),
        .O(B_dout10b[3]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout10b[4]_INST_0 
       (.I0(B_dout_i[5]),
        .I1(bitOrderDoutLSB),
        .I2(B_dout_i[4]),
        .O(B_dout10b[4]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout10b[5]_INST_0 
       (.I0(B_dout_i[4]),
        .I1(bitOrderDoutLSB),
        .I2(B_dout_i[5]),
        .O(B_dout10b[5]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout10b[6]_INST_0 
       (.I0(B_dout_i[3]),
        .I1(bitOrderDoutLSB),
        .I2(B_dout_i[6]),
        .O(B_dout10b[6]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout10b[7]_INST_0 
       (.I0(B_dout_i[2]),
        .I1(bitOrderDoutLSB),
        .I2(B_dout_i[7]),
        .O(B_dout10b[7]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout10b[8]_INST_0 
       (.I0(B_dout_i[1]),
        .I1(bitOrderDoutLSB),
        .I2(B_dout_i[8]),
        .O(B_dout10b[8]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout10b[9]_INST_0 
       (.I0(B_dout_i[0]),
        .I1(bitOrderDoutLSB),
        .I2(B_dout_i[9]),
        .O(B_dout10b[9]));
  FDCE B_dout20bEn_i_reg
       (.C(B_recclk),
        .CE(1'b1),
        .CLR(rst),
        .D(C_DATAB_n_21),
        .Q(B_dout20bEn_i));
  FDCE B_dout20bEn_reg
       (.C(B_recclk),
        .CE(1'b1),
        .CLR(rst),
        .D(B_dout20bEn0),
        .Q(B_dout20bEn));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[0]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[19] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[0] ),
        .O(B_dout20b[0]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[10]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[9] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[10] ),
        .O(B_dout20b[10]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[11]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[8] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[11] ),
        .O(B_dout20b[11]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[12]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[7] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[12] ),
        .O(B_dout20b[12]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[13]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[6] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[13] ),
        .O(B_dout20b[13]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[14]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[5] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[14] ),
        .O(B_dout20b[14]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[15]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[4] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[15] ),
        .O(B_dout20b[15]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[16]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[3] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[16] ),
        .O(B_dout20b[16]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[17]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[2] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[17] ),
        .O(B_dout20b[17]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[18]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[1] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[18] ),
        .O(B_dout20b[18]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[19]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[0] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[19] ),
        .O(B_dout20b[19]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[1]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[18] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[1] ),
        .O(B_dout20b[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[2]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[17] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[2] ),
        .O(B_dout20b[2]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[3]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[16] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[3] ),
        .O(B_dout20b[3]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[4]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[15] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[4] ),
        .O(B_dout20b[4]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[5]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[14] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[5] ),
        .O(B_dout20b[5]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[6]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[13] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[6] ),
        .O(B_dout20b[6]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[7]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[12] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[7] ),
        .O(B_dout20b[7]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[8]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[11] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[8] ),
        .O(B_dout20b[8]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \B_dout20b[9]_INST_0 
       (.I0(\B_dout20b_i_reg_n_0_[10] ),
        .I1(bitOrderDoutLSB),
        .I2(\B_dout20b_i_reg_n_0_[9] ),
        .O(B_dout20b[9]));
  FDCE \B_dout20b_i_reg[0] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(B_dout_i[0]),
        .Q(\B_dout20b_i_reg_n_0_[0] ));
  FDCE \B_dout20b_i_reg[10] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(\B_dout20b_i_reg_n_0_[0] ),
        .Q(\B_dout20b_i_reg_n_0_[10] ));
  FDCE \B_dout20b_i_reg[11] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(\B_dout20b_i_reg_n_0_[1] ),
        .Q(\B_dout20b_i_reg_n_0_[11] ));
  FDCE \B_dout20b_i_reg[12] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(\B_dout20b_i_reg_n_0_[2] ),
        .Q(\B_dout20b_i_reg_n_0_[12] ));
  FDCE \B_dout20b_i_reg[13] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(\B_dout20b_i_reg_n_0_[3] ),
        .Q(\B_dout20b_i_reg_n_0_[13] ));
  FDCE \B_dout20b_i_reg[14] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(\B_dout20b_i_reg_n_0_[4] ),
        .Q(\B_dout20b_i_reg_n_0_[14] ));
  FDCE \B_dout20b_i_reg[15] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(\B_dout20b_i_reg_n_0_[5] ),
        .Q(\B_dout20b_i_reg_n_0_[15] ));
  FDCE \B_dout20b_i_reg[16] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(\B_dout20b_i_reg_n_0_[6] ),
        .Q(\B_dout20b_i_reg_n_0_[16] ));
  FDCE \B_dout20b_i_reg[17] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(\B_dout20b_i_reg_n_0_[7] ),
        .Q(\B_dout20b_i_reg_n_0_[17] ));
  FDCE \B_dout20b_i_reg[18] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(\B_dout20b_i_reg_n_0_[8] ),
        .Q(\B_dout20b_i_reg_n_0_[18] ));
  FDCE \B_dout20b_i_reg[19] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(\B_dout20b_i_reg_n_0_[9] ),
        .Q(\B_dout20b_i_reg_n_0_[19] ));
  FDCE \B_dout20b_i_reg[1] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(B_dout_i[1]),
        .Q(\B_dout20b_i_reg_n_0_[1] ));
  FDCE \B_dout20b_i_reg[2] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(B_dout_i[2]),
        .Q(\B_dout20b_i_reg_n_0_[2] ));
  FDCE \B_dout20b_i_reg[3] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(B_dout_i[3]),
        .Q(\B_dout20b_i_reg_n_0_[3] ));
  FDCE \B_dout20b_i_reg[4] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(B_dout_i[4]),
        .Q(\B_dout20b_i_reg_n_0_[4] ));
  FDCE \B_dout20b_i_reg[5] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(B_dout_i[5]),
        .Q(\B_dout20b_i_reg_n_0_[5] ));
  FDCE \B_dout20b_i_reg[6] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(B_dout_i[6]),
        .Q(\B_dout20b_i_reg_n_0_[6] ));
  FDCE \B_dout20b_i_reg[7] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(B_dout_i[7]),
        .Q(\B_dout20b_i_reg_n_0_[7] ));
  FDCE \B_dout20b_i_reg[8] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(B_dout_i[8]),
        .Q(\B_dout20b_i_reg_n_0_[8] ));
  FDCE \B_dout20b_i_reg[9] 
       (.C(B_recclk),
        .CE(B_dout10bEn),
        .CLR(rst),
        .D(B_dout_i[9]),
        .Q(\B_dout20b_i_reg_n_0_[9] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_os48_1011x20bTo10b C_DATAA
       (.A_din20b(A_din20b),
        .A_dout10bEn(A_dout10bEn),
        .A_dout20bEn0(A_dout20bEn0),
        .A_dout20bEn_i(A_dout20bEn_i),
        .A_dout20bEn_i_reg(C_DATAA_n_13),
        .A_en(A_en),
        .A_recclk(A_recclk),
        .D(A_dout_i),
        .DOA({bankSel,byteRdy,\bitSel[1]_35 ,\bitSel[0]_34 ,\we[9]_33 ,\we[8]_32 ,\we[7]_31 ,\we[6]_30 ,\we[5]_29 ,\we[4]_28 ,\we[3]_27 ,\we[2]_26 ,\we[1]_25 ,\we[0]_24 }),
        .E(A_dout20b_i),
        .Q(A_edge),
        .bitOrderDinLSB(bitOrderDinLSB),
        .\edge_reg[3]_0 (dSel),
        .rst(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_os48_1011x20bTo10b_0 C_DATAB
       (.ADDRB({B_mode,B_dSel}),
        .B_din20b(B_din20b),
        .B_dout20bEn0(B_dout20bEn0),
        .B_dout20bEn_i(B_dout20bEn_i),
        .B_dout20bEn_i_reg(C_DATAB_n_21),
        .B_en(B_en),
        .B_recclk(B_recclk),
        .D(B_dout_i),
        .DOB({B_bankSel,B_byteRdy,\B_bitSel[1]_23 ,\B_bitSel[0]_22 ,\B_we[9]_21 ,\B_we[8]_20 ,\B_we[7]_19 ,\B_we[6]_18 ,\B_we[5]_17 ,\B_we[4]_16 ,\B_we[3]_15 ,\B_we[2]_14 ,\B_we[1]_13 ,\B_we[0]_12 }),
        .E(B_dout10bEn),
        .Q({p_45_in,p_46_in,p_34_in,p_35_in}),
        .bankSel_d_reg_0(B_edge),
        .bitOrderDinLSB(bitOrderDinLSB),
        .\din_d_reg[2][18]_0 (C_DECISION_n_17),
        .\din_d_reg[2][28]_0 (C_DECISION_n_16),
        .\din_d_reg[2][9]_0 (C_DECISION_n_18),
        .\doutMux_reg[0][0]_0 (C_DATAB_n_20),
        .\doutMux_reg[0][1]_0 (C_DATAB_n_19),
        .\doutMux_reg[0][2]_0 (C_DATAB_n_14),
        .p_24_in(p_24_in),
        .p_25_in(p_25_in),
        .rst(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_osDeci20b_48_1011x_BRAM C_DECISION
       (.ADDRB({B_mode,B_edge}),
        .A_en(A_en),
        .A_recclk(A_recclk),
        .B_en(B_en),
        .B_recclk(B_recclk),
        .DOA({A_valid,dSel}),
        .DOB({B_valid,B_dSel}),
        .Q(A_edge),
        .\din_d_reg[2][13] (C_DATAB_n_19),
        .\din_d_reg[2][17] (C_DATAB_n_14),
        .\din_d_reg[2][29] ({p_45_in,p_46_in,p_34_in,p_35_in}),
        .\doutMux_reg[0][0] (C_DECISION_n_18),
        .\doutMux_reg[0][1] (C_DECISION_n_17),
        .\doutMux_reg[0][2] (C_DECISION_n_16),
        .\edge_reg[3] (C_DATAB_n_20),
        .p_24_in(p_24_in),
        .p_25_in(p_25_in),
        .rst(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sipoCtl10b_BRAM_v2 C_FIFOCTL
       (.A_en(A_en),
        .A_recclk(A_recclk),
        .B_en(B_en),
        .B_recclk(B_recclk),
        .DOA({bankSel,byteRdy,\bitSel[1]_35 ,\bitSel[0]_34 ,\we[9]_33 ,\we[8]_32 ,\we[7]_31 ,\we[6]_30 ,\we[5]_29 ,\we[4]_28 ,\we[3]_27 ,\we[2]_26 ,\we[1]_25 ,\we[0]_24 }),
        .DOB({B_bankSel,B_byteRdy,\B_bitSel[1]_23 ,\B_bitSel[0]_22 ,\B_we[9]_21 ,\B_we[8]_20 ,\B_we[7]_19 ,\B_we[6]_18 ,\B_we[5]_17 ,\B_we[4]_16 ,\B_we[3]_15 ,\B_we[2]_14 ,\B_we[1]_13 ,\B_we[0]_12 }),
        .\edge_reg[3] (A_valid),
        .\edge_reg[3]_0 (B_valid),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_osDeci20b_48_1011x_BRAM
   (DOA,
    DOB,
    \doutMux_reg[0][2] ,
    \doutMux_reg[0][1] ,
    \doutMux_reg[0][0] ,
    A_en,
    A_recclk,
    rst,
    B_en,
    B_recclk,
    Q,
    ADDRB,
    \din_d_reg[2][29] ,
    \din_d_reg[2][17] ,
    \din_d_reg[2][13] ,
    p_24_in,
    p_25_in,
    \edge_reg[3] );
  output [7:0]DOA;
  output [7:0]DOB;
  output \doutMux_reg[0][2] ;
  output \doutMux_reg[0][1] ;
  output \doutMux_reg[0][0] ;
  input A_en;
  input A_recclk;
  input rst;
  input B_en;
  input B_recclk;
  input [3:0]Q;
  input [5:0]ADDRB;
  input [3:0]\din_d_reg[2][29] ;
  input \din_d_reg[2][17] ;
  input \din_d_reg[2][13] ;
  input p_24_in;
  input p_25_in;
  input \edge_reg[3] ;

  wire [5:0]ADDRB;
  wire [8:8]A_ad;
  wire A_en;
  wire A_recclk;
  wire [8:8]B_ad;
  wire B_en;
  wire B_recclk;
  wire [7:0]DOA;
  wire [7:0]DOB;
  wire [3:0]Q;
  wire \din_d_reg[2][13] ;
  wire \din_d_reg[2][17] ;
  wire [3:0]\din_d_reg[2][29] ;
  wire \doutMux[0][0]_i_9_n_0 ;
  wire \doutMux[0][1]_i_9_n_0 ;
  wire \doutMux_reg[0][0] ;
  wire \doutMux_reg[0][1] ;
  wire \doutMux_reg[0][2] ;
  wire \edge_reg[3] ;
  wire p_24_in;
  wire p_25_in;
  wire rst;
  wire [15:8]NLW_C_BRAMOSDECI5_DIADI_UNCONNECTED;
  wire [15:8]NLW_C_BRAMOSDECI5_DIBDI_UNCONNECTED;
  wire [1:1]NLW_C_BRAMOSDECI5_DIPADIP_UNCONNECTED;
  wire [1:1]NLW_C_BRAMOSDECI5_DIPBDIP_UNCONNECTED;
  wire [15:8]NLW_C_BRAMOSDECI5_DOADO_UNCONNECTED;
  wire [15:8]NLW_C_BRAMOSDECI5_DOBDO_UNCONNECTED;
  wire [1:1]NLW_C_BRAMOSDECI5_DOPADOP_UNCONNECTED;
  wire [1:1]NLW_C_BRAMOSDECI5_DOPBDOP_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "RAMB16_S9_S9" *) 
  (* XILINX_TRANSFORM_PINMAP = "ADDRA[0]:ADDRARDADDR[3] ADDRA[10]:ADDRARDADDR[13] ADDRA[1]:ADDRARDADDR[4] ADDRA[2]:ADDRARDADDR[5] ADDRA[3]:ADDRARDADDR[6] ADDRA[4]:ADDRARDADDR[7] ADDRA[5]:ADDRARDADDR[8] ADDRA[6]:ADDRARDADDR[9] ADDRA[7]:ADDRARDADDR[10] ADDRA[8]:ADDRARDADDR[11] ADDRA[9]:ADDRARDADDR[12] ADDRB[0]:ADDRBWRADDR[3] ADDRB[10]:ADDRBWRADDR[13] ADDRB[1]:ADDRBWRADDR[4] ADDRB[2]:ADDRBWRADDR[5] ADDRB[3]:ADDRBWRADDR[6] ADDRB[4]:ADDRBWRADDR[7] ADDRB[5]:ADDRBWRADDR[8] ADDRB[6]:ADDRBWRADDR[9] ADDRB[7]:ADDRBWRADDR[10] ADDRB[8]:ADDRBWRADDR[11] ADDRB[9]:ADDRBWRADDR[12] CLKA:CLKARDCLK CLKB:CLKBWRCLK DIA[0]:DIADI[0] DIA[1]:DIADI[1] DIA[2]:DIADI[2] DIA[3]:DIADI[3] DIA[4]:DIADI[4] DIA[5]:DIADI[5] DIA[6]:DIADI[6] DIA[7]:DIADI[7] DIB[0]:DIBDI[0] DIB[1]:DIBDI[1] DIB[2]:DIBDI[2] DIB[3]:DIBDI[3] DIB[4]:DIBDI[4] DIB[5]:DIBDI[5] DIB[6]:DIBDI[6] DIB[7]:DIBDI[7] DIPA[0]:DIPADIP[0] DIPB[0]:DIPBDIP[0] DOA[0]:DOADO[0] DOA[1]:DOADO[1] DOA[2]:DOADO[2] DOA[3]:DOADO[3] DOA[4]:DOADO[4] DOA[5]:DOADO[5] DOA[6]:DOADO[6] DOA[7]:DOADO[7] DOB[0]:DOBDO[0] DOB[1]:DOBDO[1] DOB[2]:DOBDO[2] DOB[3]:DOBDO[3] DOB[4]:DOBDO[4] DOB[5]:DOBDO[5] DOB[6]:DOBDO[6] DOB[7]:DOBDO[7] DOPA[0]:DOPADOP[0] DOPB[0]:DOPBDOP[0] ENA:ENARDEN ENB:ENBWREN SSRA:RSTRAMARSTRAM SSRB:RSTRAMB WEA:WEA[0] WEB:WEBWE[0]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h00000000000000000000000000000000000000000000000011000050000C0202),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FCFFEFEFFFBB),
    .INITP_02(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000),
    .INITP_04(256'h000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000),
    .INITP_06(256'h00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000),
    .INIT_00(256'h5151505051515050515150505353515150435043504352505043504350435250),
    .INIT_01(256'h5353536153535361525252535252525352525252515151515260526051525152),
    .INIT_02(256'h5151515151515151515151515151515151515151515151515151515151515151),
    .INIT_03(256'h5151515151515151515151515151515151515151515151515151515151515151),
    .INIT_04(256'h5151515151515151515151515151515151515151515151515151515151515151),
    .INIT_05(256'h5151515151515151515151515151515151515151515151515151515151515151),
    .INIT_06(256'h5151515151515151515151515151515151515151515151515151515151515151),
    .INIT_07(256'h5151515151515151515151515151515151515151515151515151515151515151),
    .INIT_08(256'h5151514352525251515151435252525150505151505051515042515050425150),
    .INIT_09(256'h5360536053605360536053605153515352525252525250505353535353535252),
    .INIT_0A(256'h5151515151515151515151515151515151515151515151515151515151515151),
    .INIT_0B(256'h5151515151515151515151515151515151515151515151515151515151515151),
    .INIT_0C(256'h5151515151515151515151515151515151515151515151515151515151515151),
    .INIT_0D(256'h5151515151515151515151515151515151515151515151515151515151515151),
    .INIT_0E(256'h5151515151515151515151515151515151515151515151515151515151515151),
    .INIT_0F(256'h5151515151515151515151515151515151515151515151515151515151515151),
    .INIT_10(256'h2525252525252525242426262626252424242424242424242323232525252524),
    .INIT_11(256'h2727272727272727303030302726262626262626262626262527272727262525),
    .INIT_12(256'h3131313131313131323231303030323230303030303030303131313027272731),
    .INIT_13(256'h3333333333333333333232323434343432323232323232323332313131333333),
    .INIT_14(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_15(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_16(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_17(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_18(256'h2525252525252525242426262626252424242424242424242323232525252524),
    .INIT_19(256'h2727272727272727303030302726262626262626262626262527272727262525),
    .INIT_1A(256'h3131313131313131323231303030323230303030303030303131313027272731),
    .INIT_1B(256'h3333333333333333333232323434343432323232323232323332313131333333),
    .INIT_1C(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_1D(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_1E(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_1F(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_20(256'h2121212121212222222120202020222220202020202021212121201919191921),
    .INIT_21(256'h2323232323232423222222222424242422222222222223232221212121232323),
    .INIT_22(256'h2525252525252424242426262626262524242424242424232323232525252525),
    .INIT_23(256'h2727272727272626282828282827262626262626262625252527272727272625),
    .INIT_24(256'h2929292929293030303030292828282828282828282827292929292928272727),
    .INIT_25(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_26(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_27(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_28(256'h2121212121212222222120202020222220202020202021212121201919191921),
    .INIT_29(256'h2323232323232423222222222424242422222222222223232221212121232323),
    .INIT_2A(256'h2525252525252424242426262626262524242424242424232323232525252525),
    .INIT_2B(256'h2727272727272626282828282827262626262626262625252527272727272625),
    .INIT_2C(256'h2929292929293030303030292828282828282828282827292929292928272727),
    .INIT_2D(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_2E(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_2F(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_30(256'h1A1A1A1A1A20202020202019191919191919191919181A1A1A1A1A1A18181818),
    .INIT_31(256'h21212121212222222220202020202222202020202021212121211A1A1A1A1A21),
    .INIT_32(256'h2323232323242422222222222424242422222222222323232121212121232323),
    .INIT_33(256'h2525252525242424242426262626262624242424242523232323232525252525),
    .INIT_34(256'h2727272727262626282828282828262626262626262525252527272727272725),
    .INIT_35(256'h2525252525252525252525252525252528282828282727292929292929272727),
    .INIT_36(256'h2525252525252525252525252525252525252525252525252525252525252525),
    .INIT_37(256'h2525252525252525252525252525252525252525252525252525252525252525),
    .INIT_38(256'h1A1A1A1A1A20202020202019191919191919191919181A1A1A1A1A1A18181818),
    .INIT_39(256'h21212121212222222220202020202222202020202021212121211A1A1A1A1A21),
    .INIT_3A(256'h2323232323242422222222222424242422222222222323232121212121232323),
    .INIT_3B(256'h2525252525242424242426262626262624242424242523232323232525252525),
    .INIT_3C(256'h2727272727262626282828282828262626262626262525252527272727272725),
    .INIT_3D(256'h2525252525252525252525252525252528282828282727292929292929272727),
    .INIT_3E(256'h2525252525252525252525252525252525252525252525252525252525252525),
    .INIT_3F(256'h2525252525252525252525252525252525252525252525252525252525252525),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    C_BRAMOSDECI5
       (.ADDRARDADDR({1'b0,1'b1,A_ad,DOA[3:0],Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({ADDRB[5:4],B_ad,DOB[3:0],ADDRB[3:0],1'b1,1'b1,1'b1}),
        .CLKARDCLK(A_recclk),
        .CLKBWRCLK(B_recclk),
        .DIADI({NLW_C_BRAMOSDECI5_DIADI_UNCONNECTED[15:8],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({NLW_C_BRAMOSDECI5_DIBDI_UNCONNECTED[15:8],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({NLW_C_BRAMOSDECI5_DIPADIP_UNCONNECTED[1],1'b0}),
        .DIPBDIP({NLW_C_BRAMOSDECI5_DIPBDIP_UNCONNECTED[1],1'b0}),
        .DOADO({NLW_C_BRAMOSDECI5_DOADO_UNCONNECTED[15:8],DOA}),
        .DOBDO({NLW_C_BRAMOSDECI5_DOBDO_UNCONNECTED[15:8],DOB}),
        .DOPADOP({NLW_C_BRAMOSDECI5_DOPADOP_UNCONNECTED[1],A_ad}),
        .DOPBDOP({NLW_C_BRAMOSDECI5_DOPBDOP_UNCONNECTED[1],B_ad}),
        .ENARDEN(A_en),
        .ENBWREN(B_en),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rst),
        .RSTRAMB(rst),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \doutMux[0][0]_i_4 
       (.I0(\doutMux[0][0]_i_9_n_0 ),
        .I1(p_24_in),
        .I2(DOB[0]),
        .I3(p_25_in),
        .I4(DOB[3]),
        .I5(\edge_reg[3] ),
        .O(\doutMux_reg[0][0] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \doutMux[0][0]_i_9 
       (.I0(DOB[2]),
        .I1(DOB[1]),
        .O(\doutMux[0][0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutMux[0][1]_i_4 
       (.I0(\doutMux[0][1]_i_9_n_0 ),
        .I1(DOB[3]),
        .I2(\din_d_reg[2][17] ),
        .I3(DOB[2]),
        .I4(\din_d_reg[2][13] ),
        .O(\doutMux_reg[0][1] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \doutMux[0][1]_i_9 
       (.I0(\din_d_reg[2][29] [0]),
        .I1(DOB[2]),
        .I2(DOB[0]),
        .I3(DOB[1]),
        .I4(\din_d_reg[2][29] [1]),
        .O(\doutMux[0][1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5F5F5F5F5F5DD)) 
    \doutMux[0][2]_i_4 
       (.I0(DOB[3]),
        .I1(\din_d_reg[2][29] [2]),
        .I2(\din_d_reg[2][29] [3]),
        .I3(DOB[2]),
        .I4(DOB[0]),
        .I5(DOB[1]),
        .O(\doutMux_reg[0][2] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sipoCtl10b_BRAM_v2
   (DOA,
    DOB,
    A_en,
    A_recclk,
    rst,
    B_en,
    B_recclk,
    \edge_reg[3] ,
    \edge_reg[3]_0 );
  output [29:0]DOA;
  output [29:0]DOB;
  input A_en;
  input A_recclk;
  input rst;
  input B_en;
  input B_recclk;
  input [3:0]\edge_reg[3] ;
  input [3:0]\edge_reg[3]_0 ;

  wire [12:9]ADDRA;
  wire [12:9]ADDRB;
  wire A_en;
  wire A_recclk;
  wire B_en;
  wire B_recclk;
  wire [29:0]DOA;
  wire [29:0]DOB;
  wire [3:0]\edge_reg[3] ;
  wire [3:0]\edge_reg[3]_0 ;
  wire rst;
  wire NLW_C_BRAMSIPO_0TO9_CASCADEOUTA_UNCONNECTED;
  wire NLW_C_BRAMSIPO_0TO9_CASCADEOUTB_UNCONNECTED;
  wire NLW_C_BRAMSIPO_0TO9_DBITERR_UNCONNECTED;
  wire NLW_C_BRAMSIPO_0TO9_INJECTDBITERR_UNCONNECTED;
  wire NLW_C_BRAMSIPO_0TO9_INJECTSBITERR_UNCONNECTED;
  wire NLW_C_BRAMSIPO_0TO9_SBITERR_UNCONNECTED;
  wire [29:28]NLW_C_BRAMSIPO_0TO9_DOADO_UNCONNECTED;
  wire [29:28]NLW_C_BRAMSIPO_0TO9_DOBDO_UNCONNECTED;
  wire [7:0]NLW_C_BRAMSIPO_0TO9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_C_BRAMSIPO_0TO9_RDADDRECC_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "RAMB36" *) 
  (* XILINX_TRANSFORM_PINMAP = "ADDRA[0]:ADDRARDADDR[0] ADDRA[10]:ADDRARDADDR[10] ADDRA[11]:ADDRARDADDR[11] ADDRA[12]:ADDRARDADDR[12] ADDRA[13]:ADDRARDADDR[13] ADDRA[14]:ADDRARDADDR[14] ADDRA[1]:ADDRARDADDR[1] ADDRA[2]:ADDRARDADDR[2] ADDRA[3]:ADDRARDADDR[3] ADDRA[4]:ADDRARDADDR[4] ADDRA[5]:ADDRARDADDR[5] ADDRA[6]:ADDRARDADDR[6] ADDRA[7]:ADDRARDADDR[7] ADDRA[8]:ADDRARDADDR[8] ADDRA[9]:ADDRARDADDR[9] ADDRB[0]:ADDRBWRADDR[0] ADDRB[10]:ADDRBWRADDR[10] ADDRB[11]:ADDRBWRADDR[11] ADDRB[12]:ADDRBWRADDR[12] ADDRB[13]:ADDRBWRADDR[13] ADDRB[14]:ADDRBWRADDR[14] ADDRB[1]:ADDRBWRADDR[1] ADDRB[2]:ADDRBWRADDR[2] ADDRB[3]:ADDRBWRADDR[3] ADDRB[4]:ADDRBWRADDR[4] ADDRB[5]:ADDRBWRADDR[5] ADDRB[6]:ADDRBWRADDR[6] ADDRB[7]:ADDRBWRADDR[7] ADDRB[8]:ADDRBWRADDR[8] ADDRB[9]:ADDRBWRADDR[9] CASCADEINLATA:CASCADEINA CASCADEINLATB:CASCADEINB CASCADEOUTLATA:CASCADEOUTA CASCADEOUTLATB:CASCADEOUTB CASCADEOUTREGA:CASCADEOUTA CASCADEOUTREGB:CASCADEOUTB CLKA:CLKARDCLK CLKB:CLKBWRCLK DIA[0]:DIADI[0] DIA[10]:DIADI[10] DIA[11]:DIADI[11] DIA[12]:DIADI[12] DIA[13]:DIADI[13] DIA[14]:DIADI[14] DIA[15]:DIADI[15] DIA[16]:DIADI[16] DIA[17]:DIADI[17] DIA[18]:DIADI[18] DIA[19]:DIADI[19] DIA[1]:DIADI[1] DIA[20]:DIADI[20] DIA[21]:DIADI[21] DIA[22]:DIADI[22] DIA[23]:DIADI[23] DIA[24]:DIADI[24] DIA[25]:DIADI[25] DIA[26]:DIADI[26] DIA[27]:DIADI[27] DIA[28]:DIADI[28] DIA[29]:DIADI[29] DIA[2]:DIADI[2] DIA[30]:DIADI[30] DIA[31]:DIADI[31] DIA[3]:DIADI[3] DIA[4]:DIADI[4] DIA[5]:DIADI[5] DIA[6]:DIADI[6] DIA[7]:DIADI[7] DIA[8]:DIADI[8] DIA[9]:DIADI[9] DIB[0]:DIBDI[0] DIB[10]:DIBDI[10] DIB[11]:DIBDI[11] DIB[12]:DIBDI[12] DIB[13]:DIBDI[13] DIB[14]:DIBDI[14] DIB[15]:DIBDI[15] DIB[16]:DIBDI[16] DIB[17]:DIBDI[17] DIB[18]:DIBDI[18] DIB[19]:DIBDI[19] DIB[1]:DIBDI[1] DIB[20]:DIBDI[20] DIB[21]:DIBDI[21] DIB[22]:DIBDI[22] DIB[23]:DIBDI[23] DIB[24]:DIBDI[24] DIB[25]:DIBDI[25] DIB[26]:DIBDI[26] DIB[27]:DIBDI[27] DIB[28]:DIBDI[28] DIB[29]:DIBDI[29] DIB[2]:DIBDI[2] DIB[30]:DIBDI[30] DIB[31]:DIBDI[31] DIB[3]:DIBDI[3] DIB[4]:DIBDI[4] DIB[5]:DIBDI[5] DIB[6]:DIBDI[6] DIB[7]:DIBDI[7] DIB[8]:DIBDI[8] DIB[9]:DIBDI[9] DIPA[0]:DIPADIP[0] DIPA[1]:DIPADIP[1] DIPA[2]:DIPADIP[2] DIPA[3]:DIPADIP[3] DIPB[0]:DIPBDIP[0] DIPB[1]:DIPBDIP[1] DIPB[2]:DIPBDIP[2] DIPB[3]:DIPBDIP[3] DOA[0]:DOADO[0] DOA[10]:DOADO[10] DOA[11]:DOADO[11] DOA[12]:DOADO[12] DOA[13]:DOADO[13] DOA[14]:DOADO[14] DOA[15]:DOADO[15] DOA[16]:DOADO[16] DOA[17]:DOADO[17] DOA[18]:DOADO[18] DOA[19]:DOADO[19] DOA[1]:DOADO[1] DOA[20]:DOADO[20] DOA[21]:DOADO[21] DOA[22]:DOADO[22] DOA[23]:DOADO[23] DOA[24]:DOADO[24] DOA[25]:DOADO[25] DOA[26]:DOADO[26] DOA[27]:DOADO[27] DOA[28]:DOADO[28] DOA[29]:DOADO[29] DOA[2]:DOADO[2] DOA[30]:DOADO[30] DOA[31]:DOADO[31] DOA[3]:DOADO[3] DOA[4]:DOADO[4] DOA[5]:DOADO[5] DOA[6]:DOADO[6] DOA[7]:DOADO[7] DOA[8]:DOADO[8] DOA[9]:DOADO[9] DOB[0]:DOBDO[0] DOB[10]:DOBDO[10] DOB[11]:DOBDO[11] DOB[12]:DOBDO[12] DOB[13]:DOBDO[13] DOB[14]:DOBDO[14] DOB[15]:DOBDO[15] DOB[16]:DOBDO[16] DOB[17]:DOBDO[17] DOB[18]:DOBDO[18] DOB[19]:DOBDO[19] DOB[1]:DOBDO[1] DOB[20]:DOBDO[20] DOB[21]:DOBDO[21] DOB[22]:DOBDO[22] DOB[23]:DOBDO[23] DOB[24]:DOBDO[24] DOB[25]:DOBDO[25] DOB[26]:DOBDO[26] DOB[27]:DOBDO[27] DOB[28]:DOBDO[28] DOB[29]:DOBDO[29] DOB[2]:DOBDO[2] DOB[30]:DOBDO[30] DOB[31]:DOBDO[31] DOB[3]:DOBDO[3] DOB[4]:DOBDO[4] DOB[5]:DOBDO[5] DOB[6]:DOBDO[6] DOB[7]:DOBDO[7] DOB[8]:DOBDO[8] DOB[9]:DOBDO[9] DOPA[0]:DOPADOP[0] DOPA[1]:DOPADOP[1] DOPA[2]:DOPADOP[2] DOPA[3]:DOPADOP[3] DOPB[0]:DOPBDOP[0] DOPB[1]:DOPBDOP[1] DOPB[2]:DOPBDOP[2] DOPB[3]:DOPBDOP[3] ENA:ENARDEN ENB:ENBWREN REGCEA:REGCEAREGCE WEB[0]:WEBWE[0] WEB[1]:WEBWE[1] WEB[2]:WEBWE[2] WEB[3]:WEBWE[3] SSRA:RSTRAMARSTRAM SSRB:RSTRAMB" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000034567890123000002345678901200000123456789010000001234567890),
    .INITP_01(256'h0000078901234567000006789012345600000567890123450000045678901234),
    .INITP_02(256'h0000000000000000000000000000000000000901234567890000089012345678),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000034567890123000002345678901200000123456789010000001234567890),
    .INITP_05(256'h0000078901234567000006789012345600000567890123450000045678901234),
    .INITP_06(256'h0000000000000000000000000000000000000901234567890000089012345678),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hC1655502C0555402C9455002C8354002C7250002C6140002C500000204900000),
    .INIT_01(256'h0000000000000000000000000000000000000000C4955556C3855552C2755542),
    .INIT_02(256'hC055540AC945500AC835400AC725000AC614000AC500000A0490000803800000),
    .INIT_03(256'h0000000000000000000000000000000000000000C385555AC275554AC165550A),
    .INIT_04(256'hC945502AC835402AC725002AC614002AC500002A049000280380002002700000),
    .INIT_05(256'h0000000000000000000000000000000000000000C275556AC165552AC055542A),
    .INIT_06(256'hC83540AAC72500AAC61400AAC50000AA049000A8038000A00270008001600000),
    .INIT_07(256'h0000000000000000000000000000000000000000C16555AAC05554AAC94550AA),
    .INIT_08(256'hC72502AAC61402AAC50002AA049002A8038002A0027002800160020000500000),
    .INIT_09(256'h0000000000000000000000000000000000000000C05556AAC94552AAC83542AA),
    .INIT_0A(256'hC6140AAAC5000AAA04900AA803800AA002700A8001600A000050080009400000),
    .INIT_0B(256'h0000000000000000000000000000000000000000C9455AAAC8354AAAC7250AAA),
    .INIT_0C(256'hC5002AAA04902AA803802AA002702A8001602A00005028000940200008300000),
    .INIT_0D(256'h0000000000000000000000000000000000000000C8356AAAC7252AAAC6142AAA),
    .INIT_0E(256'h0490AAA80380AAA00270AA800160AA000050A8000940A0000830800007200000),
    .INIT_0F(256'h0000000000000000000000000000000000000000C725AAAAC614AAAAC500AAAA),
    .INIT_10(256'h0382AAA00272AA800162AA000052A8000942A000083280000722000006100000),
    .INIT_11(256'h0000000000000000000000000000000000000000C616AAAAC502AAAA0492AAA8),
    .INIT_12(256'h027AAA80016AAA00005AA800094AA000083A8000072A00000618000005000000),
    .INIT_13(256'h0000000000000000000000000000000000000000C50AAAAA049AAAA8038AAAA0),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h416AAA01405AA801494AA001483A8001472A0001461800014500000184900000),
    .INIT_21(256'h0000000000000000000000000000000000000000449AAAA9438AAAA1427AAA81),
    .INIT_22(256'h405AA805494AA005483A8005472A000546180005450000058490000483800000),
    .INIT_23(256'h0000000000000000000000000000000000000000438AAAA5427AAA85416AAA05),
    .INIT_24(256'h494AA015483A8015472A00154618001545000015849000148380001082700000),
    .INIT_25(256'h0000000000000000000000000000000000000000427AAA95416AAA15405AA815),
    .INIT_26(256'h483A8055472A0055461800554500005584900054838000508270004081600000),
    .INIT_27(256'h0000000000000000000000000000000000000000416AAA55405AA855494AA055),
    .INIT_28(256'h472A015546180155450001558490015483800150827001408160010080500000),
    .INIT_29(256'h0000000000000000000000000000000000000000405AA955494AA155483A8155),
    .INIT_2A(256'h4618055545000555849005548380055082700540816005008050040089400000),
    .INIT_2B(256'h0000000000000000000000000000000000000000494AA555483A8555472A0555),
    .INIT_2C(256'h4500155584901554838015508270154081601500805014008940100088300000),
    .INIT_2D(256'h0000000000000000000000000000000000000000483A9555472A155546181555),
    .INIT_2E(256'h8490555483805550827055408160550080505400894050008830400087200000),
    .INIT_2F(256'h0000000000000000000000000000000000000000472A55554618555545005555),
    .INIT_30(256'h8381555082715540816155008051540089415000883140008721000086100000),
    .INIT_31(256'h0000000000000000000000000000000000000000461955554501555584915554),
    .INIT_32(256'h8275554081655500805554008945500088354000872500008614000085000000),
    .INIT_33(256'h0000000000000000000000000000000000000000450555558495555483855550),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    C_BRAMSIPO_0TO9
       (.ADDRARDADDR({1'b1,1'b0,DOA[29],ADDRA,\edge_reg[3] ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b0,DOB[29],ADDRB,\edge_reg[3]_0 ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_C_BRAMSIPO_0TO9_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_C_BRAMSIPO_0TO9_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(A_recclk),
        .CLKBWRCLK(B_recclk),
        .DBITERR(NLW_C_BRAMSIPO_0TO9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({DOA[29:28],NLW_C_BRAMSIPO_0TO9_DOADO_UNCONNECTED[29:28],DOA[27:0]}),
        .DOBDO({DOB[29:28],NLW_C_BRAMSIPO_0TO9_DOBDO_UNCONNECTED[29:28],DOB[27:0]}),
        .DOPADOP(ADDRA),
        .DOPBDOP(ADDRB),
        .ECCPARITY(NLW_C_BRAMSIPO_0TO9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(A_en),
        .ENBWREN(B_en),
        .INJECTDBITERR(NLW_C_BRAMSIPO_0TO9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_C_BRAMSIPO_0TO9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_C_BRAMSIPO_0TO9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(rst),
        .RSTRAMB(rst),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_C_BRAMSIPO_0TO9_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
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
