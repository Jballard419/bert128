// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed May 23 17:57:05 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_b10_to_2b_0_0_sim_netlist.v
// Design      : design_1_b10_to_2b_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_b10_to_2b
   (out_2,
    out_ready,
    new_set,
    clk,
    input_10);
  output [1:0]out_2;
  output [0:0]out_ready;
  input new_set;
  input clk;
  input [9:0]input_10;

  wire clk;
  wire \cout[0]_i_3_n_0 ;
  wire [1:0]cout_reg;
  wire \cout_reg[0]_i_2_n_0 ;
  wire \cout_reg[0]_i_2_n_1 ;
  wire \cout_reg[0]_i_2_n_2 ;
  wire \cout_reg[0]_i_2_n_3 ;
  wire \cout_reg[0]_i_2_n_4 ;
  wire \cout_reg[0]_i_2_n_5 ;
  wire \cout_reg[0]_i_2_n_6 ;
  wire \cout_reg[0]_i_2_n_7 ;
  wire \cout_reg[12]_i_1_n_0 ;
  wire \cout_reg[12]_i_1_n_1 ;
  wire \cout_reg[12]_i_1_n_2 ;
  wire \cout_reg[12]_i_1_n_3 ;
  wire \cout_reg[12]_i_1_n_4 ;
  wire \cout_reg[12]_i_1_n_5 ;
  wire \cout_reg[12]_i_1_n_6 ;
  wire \cout_reg[12]_i_1_n_7 ;
  wire \cout_reg[16]_i_1_n_0 ;
  wire \cout_reg[16]_i_1_n_1 ;
  wire \cout_reg[16]_i_1_n_2 ;
  wire \cout_reg[16]_i_1_n_3 ;
  wire \cout_reg[16]_i_1_n_4 ;
  wire \cout_reg[16]_i_1_n_5 ;
  wire \cout_reg[16]_i_1_n_6 ;
  wire \cout_reg[16]_i_1_n_7 ;
  wire \cout_reg[20]_i_1_n_0 ;
  wire \cout_reg[20]_i_1_n_1 ;
  wire \cout_reg[20]_i_1_n_2 ;
  wire \cout_reg[20]_i_1_n_3 ;
  wire \cout_reg[20]_i_1_n_4 ;
  wire \cout_reg[20]_i_1_n_5 ;
  wire \cout_reg[20]_i_1_n_6 ;
  wire \cout_reg[20]_i_1_n_7 ;
  wire \cout_reg[24]_i_1_n_0 ;
  wire \cout_reg[24]_i_1_n_1 ;
  wire \cout_reg[24]_i_1_n_2 ;
  wire \cout_reg[24]_i_1_n_3 ;
  wire \cout_reg[24]_i_1_n_4 ;
  wire \cout_reg[24]_i_1_n_5 ;
  wire \cout_reg[24]_i_1_n_6 ;
  wire \cout_reg[24]_i_1_n_7 ;
  wire \cout_reg[28]_i_1_n_1 ;
  wire \cout_reg[28]_i_1_n_2 ;
  wire \cout_reg[28]_i_1_n_3 ;
  wire \cout_reg[28]_i_1_n_4 ;
  wire \cout_reg[28]_i_1_n_5 ;
  wire \cout_reg[28]_i_1_n_6 ;
  wire \cout_reg[28]_i_1_n_7 ;
  wire \cout_reg[4]_i_1_n_0 ;
  wire \cout_reg[4]_i_1_n_1 ;
  wire \cout_reg[4]_i_1_n_2 ;
  wire \cout_reg[4]_i_1_n_3 ;
  wire \cout_reg[4]_i_1_n_4 ;
  wire \cout_reg[4]_i_1_n_5 ;
  wire \cout_reg[4]_i_1_n_6 ;
  wire \cout_reg[4]_i_1_n_7 ;
  wire \cout_reg[8]_i_1_n_0 ;
  wire \cout_reg[8]_i_1_n_1 ;
  wire \cout_reg[8]_i_1_n_2 ;
  wire \cout_reg[8]_i_1_n_3 ;
  wire \cout_reg[8]_i_1_n_4 ;
  wire \cout_reg[8]_i_1_n_5 ;
  wire \cout_reg[8]_i_1_n_6 ;
  wire \cout_reg[8]_i_1_n_7 ;
  wire [31:2]cout_reg__0;
  wire [9:0]input_10;
  wire new_set;
  wire [1:0]out_2;
  wire \out_2[0]_INST_0_i_1_n_0 ;
  wire \out_2[1]_INST_0_i_1_n_0 ;
  wire \out_2[1]_INST_0_i_2_n_0 ;
  wire \out_2[1]_INST_0_i_3_n_0 ;
  wire \out_2[1]_INST_0_i_4_n_0 ;
  wire \out_2[1]_INST_0_i_5_n_0 ;
  wire \out_2[1]_INST_0_i_6_n_0 ;
  wire \out_2[1]_INST_0_i_7_n_0 ;
  wire \out_2[1]_INST_0_i_8_n_0 ;
  wire [0:0]out_ready;
  wire \out_ready[1]_i_1_n_0 ;
  wire \out_ready[1]_i_2_n_0 ;
  wire [1:1]out_ready_0;
  wire [3:3]\NLW_cout_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \cout[0]_i_1 
       (.I0(cout_reg__0[2]),
        .I1(\out_2[1]_INST_0_i_3_n_0 ),
        .I2(\out_2[1]_INST_0_i_2_n_0 ),
        .I3(\out_2[1]_INST_0_i_1_n_0 ),
        .I4(cout_reg[1]),
        .I5(cout_reg[0]),
        .O(out_ready_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cout[0]_i_3 
       (.I0(cout_reg[0]),
        .O(\cout[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[0] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[0]_i_2_n_7 ),
        .Q(cout_reg[0]),
        .R(new_set));
  CARRY4 \cout_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cout_reg[0]_i_2_n_0 ,\cout_reg[0]_i_2_n_1 ,\cout_reg[0]_i_2_n_2 ,\cout_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cout_reg[0]_i_2_n_4 ,\cout_reg[0]_i_2_n_5 ,\cout_reg[0]_i_2_n_6 ,\cout_reg[0]_i_2_n_7 }),
        .S({cout_reg__0[3:2],cout_reg[1],\cout[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[10] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[8]_i_1_n_5 ),
        .Q(cout_reg__0[10]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[11] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[8]_i_1_n_4 ),
        .Q(cout_reg__0[11]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[12] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[12]_i_1_n_7 ),
        .Q(cout_reg__0[12]),
        .R(new_set));
  CARRY4 \cout_reg[12]_i_1 
       (.CI(\cout_reg[8]_i_1_n_0 ),
        .CO({\cout_reg[12]_i_1_n_0 ,\cout_reg[12]_i_1_n_1 ,\cout_reg[12]_i_1_n_2 ,\cout_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cout_reg[12]_i_1_n_4 ,\cout_reg[12]_i_1_n_5 ,\cout_reg[12]_i_1_n_6 ,\cout_reg[12]_i_1_n_7 }),
        .S(cout_reg__0[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[13] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[12]_i_1_n_6 ),
        .Q(cout_reg__0[13]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[14] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[12]_i_1_n_5 ),
        .Q(cout_reg__0[14]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[15] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[12]_i_1_n_4 ),
        .Q(cout_reg__0[15]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[16] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[16]_i_1_n_7 ),
        .Q(cout_reg__0[16]),
        .R(new_set));
  CARRY4 \cout_reg[16]_i_1 
       (.CI(\cout_reg[12]_i_1_n_0 ),
        .CO({\cout_reg[16]_i_1_n_0 ,\cout_reg[16]_i_1_n_1 ,\cout_reg[16]_i_1_n_2 ,\cout_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cout_reg[16]_i_1_n_4 ,\cout_reg[16]_i_1_n_5 ,\cout_reg[16]_i_1_n_6 ,\cout_reg[16]_i_1_n_7 }),
        .S(cout_reg__0[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[17] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[16]_i_1_n_6 ),
        .Q(cout_reg__0[17]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[18] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[16]_i_1_n_5 ),
        .Q(cout_reg__0[18]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[19] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[16]_i_1_n_4 ),
        .Q(cout_reg__0[19]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[1] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[0]_i_2_n_6 ),
        .Q(cout_reg[1]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[20] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[20]_i_1_n_7 ),
        .Q(cout_reg__0[20]),
        .R(new_set));
  CARRY4 \cout_reg[20]_i_1 
       (.CI(\cout_reg[16]_i_1_n_0 ),
        .CO({\cout_reg[20]_i_1_n_0 ,\cout_reg[20]_i_1_n_1 ,\cout_reg[20]_i_1_n_2 ,\cout_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cout_reg[20]_i_1_n_4 ,\cout_reg[20]_i_1_n_5 ,\cout_reg[20]_i_1_n_6 ,\cout_reg[20]_i_1_n_7 }),
        .S(cout_reg__0[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[21] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[20]_i_1_n_6 ),
        .Q(cout_reg__0[21]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[22] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[20]_i_1_n_5 ),
        .Q(cout_reg__0[22]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[23] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[20]_i_1_n_4 ),
        .Q(cout_reg__0[23]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[24] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[24]_i_1_n_7 ),
        .Q(cout_reg__0[24]),
        .R(new_set));
  CARRY4 \cout_reg[24]_i_1 
       (.CI(\cout_reg[20]_i_1_n_0 ),
        .CO({\cout_reg[24]_i_1_n_0 ,\cout_reg[24]_i_1_n_1 ,\cout_reg[24]_i_1_n_2 ,\cout_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cout_reg[24]_i_1_n_4 ,\cout_reg[24]_i_1_n_5 ,\cout_reg[24]_i_1_n_6 ,\cout_reg[24]_i_1_n_7 }),
        .S(cout_reg__0[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[25] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[24]_i_1_n_6 ),
        .Q(cout_reg__0[25]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[26] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[24]_i_1_n_5 ),
        .Q(cout_reg__0[26]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[27] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[24]_i_1_n_4 ),
        .Q(cout_reg__0[27]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[28] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[28]_i_1_n_7 ),
        .Q(cout_reg__0[28]),
        .R(new_set));
  CARRY4 \cout_reg[28]_i_1 
       (.CI(\cout_reg[24]_i_1_n_0 ),
        .CO({\NLW_cout_reg[28]_i_1_CO_UNCONNECTED [3],\cout_reg[28]_i_1_n_1 ,\cout_reg[28]_i_1_n_2 ,\cout_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cout_reg[28]_i_1_n_4 ,\cout_reg[28]_i_1_n_5 ,\cout_reg[28]_i_1_n_6 ,\cout_reg[28]_i_1_n_7 }),
        .S(cout_reg__0[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[29] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[28]_i_1_n_6 ),
        .Q(cout_reg__0[29]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[2] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[0]_i_2_n_5 ),
        .Q(cout_reg__0[2]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[30] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[28]_i_1_n_5 ),
        .Q(cout_reg__0[30]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[31] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[28]_i_1_n_4 ),
        .Q(cout_reg__0[31]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[3] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[0]_i_2_n_4 ),
        .Q(cout_reg__0[3]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[4] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[4]_i_1_n_7 ),
        .Q(cout_reg__0[4]),
        .R(new_set));
  CARRY4 \cout_reg[4]_i_1 
       (.CI(\cout_reg[0]_i_2_n_0 ),
        .CO({\cout_reg[4]_i_1_n_0 ,\cout_reg[4]_i_1_n_1 ,\cout_reg[4]_i_1_n_2 ,\cout_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cout_reg[4]_i_1_n_4 ,\cout_reg[4]_i_1_n_5 ,\cout_reg[4]_i_1_n_6 ,\cout_reg[4]_i_1_n_7 }),
        .S(cout_reg__0[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[5] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[4]_i_1_n_6 ),
        .Q(cout_reg__0[5]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[6] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[4]_i_1_n_5 ),
        .Q(cout_reg__0[6]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[7] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[4]_i_1_n_4 ),
        .Q(cout_reg__0[7]),
        .R(new_set));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[8] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[8]_i_1_n_7 ),
        .Q(cout_reg__0[8]),
        .R(new_set));
  CARRY4 \cout_reg[8]_i_1 
       (.CI(\cout_reg[4]_i_1_n_0 ),
        .CO({\cout_reg[8]_i_1_n_0 ,\cout_reg[8]_i_1_n_1 ,\cout_reg[8]_i_1_n_2 ,\cout_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cout_reg[8]_i_1_n_4 ,\cout_reg[8]_i_1_n_5 ,\cout_reg[8]_i_1_n_6 ,\cout_reg[8]_i_1_n_7 }),
        .S(cout_reg__0[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cout_reg[9] 
       (.C(clk),
        .CE(out_ready_0),
        .D(\cout_reg[8]_i_1_n_6 ),
        .Q(cout_reg__0[9]),
        .R(new_set));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \out_2[0]_INST_0 
       (.I0(input_10[8]),
        .I1(\out_2[1]_INST_0_i_1_n_0 ),
        .I2(\out_2[1]_INST_0_i_2_n_0 ),
        .I3(\out_2[1]_INST_0_i_3_n_0 ),
        .I4(cout_reg__0[2]),
        .I5(\out_2[0]_INST_0_i_1_n_0 ),
        .O(out_2[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_2[0]_INST_0_i_1 
       (.I0(input_10[6]),
        .I1(input_10[2]),
        .I2(cout_reg[0]),
        .I3(input_10[4]),
        .I4(cout_reg[1]),
        .I5(input_10[0]),
        .O(\out_2[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \out_2[1]_INST_0 
       (.I0(input_10[9]),
        .I1(\out_2[1]_INST_0_i_1_n_0 ),
        .I2(\out_2[1]_INST_0_i_2_n_0 ),
        .I3(\out_2[1]_INST_0_i_3_n_0 ),
        .I4(cout_reg__0[2]),
        .I5(\out_2[1]_INST_0_i_4_n_0 ),
        .O(out_2[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out_2[1]_INST_0_i_1 
       (.I0(\out_2[1]_INST_0_i_5_n_0 ),
        .I1(cout_reg__0[23]),
        .I2(cout_reg__0[22]),
        .I3(cout_reg__0[25]),
        .I4(cout_reg__0[24]),
        .I5(\out_2[1]_INST_0_i_6_n_0 ),
        .O(\out_2[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \out_2[1]_INST_0_i_2 
       (.I0(cout_reg__0[8]),
        .I1(cout_reg__0[9]),
        .I2(cout_reg__0[6]),
        .I3(cout_reg__0[7]),
        .I4(\out_2[1]_INST_0_i_7_n_0 ),
        .O(\out_2[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \out_2[1]_INST_0_i_3 
       (.I0(cout_reg__0[16]),
        .I1(cout_reg__0[17]),
        .I2(cout_reg__0[14]),
        .I3(cout_reg__0[15]),
        .I4(\out_2[1]_INST_0_i_8_n_0 ),
        .O(\out_2[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_2[1]_INST_0_i_4 
       (.I0(input_10[7]),
        .I1(input_10[3]),
        .I2(cout_reg[0]),
        .I3(input_10[5]),
        .I4(cout_reg[1]),
        .I5(input_10[1]),
        .O(\out_2[1]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_2[1]_INST_0_i_5 
       (.I0(cout_reg__0[27]),
        .I1(cout_reg__0[26]),
        .I2(cout_reg__0[29]),
        .I3(cout_reg__0[28]),
        .O(\out_2[1]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \out_2[1]_INST_0_i_6 
       (.I0(cout_reg__0[3]),
        .I1(cout_reg__0[30]),
        .I2(cout_reg__0[31]),
        .I3(cout_reg__0[5]),
        .I4(cout_reg__0[4]),
        .O(\out_2[1]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_2[1]_INST_0_i_7 
       (.I0(cout_reg__0[11]),
        .I1(cout_reg__0[10]),
        .I2(cout_reg__0[13]),
        .I3(cout_reg__0[12]),
        .O(\out_2[1]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_2[1]_INST_0_i_8 
       (.I0(cout_reg__0[19]),
        .I1(cout_reg__0[18]),
        .I2(cout_reg__0[21]),
        .I3(cout_reg__0[20]),
        .O(\out_2[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \out_ready[1]_i_1 
       (.I0(\out_ready[1]_i_2_n_0 ),
        .I1(\out_2[1]_INST_0_i_1_n_0 ),
        .I2(\out_2[1]_INST_0_i_2_n_0 ),
        .I3(\out_2[1]_INST_0_i_3_n_0 ),
        .I4(cout_reg__0[2]),
        .I5(new_set),
        .O(\out_ready[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out_ready[1]_i_2 
       (.I0(cout_reg[0]),
        .I1(cout_reg[1]),
        .O(\out_ready[1]_i_2_n_0 ));
  FDRE \out_ready_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_ready[1]_i_1_n_0 ),
        .Q(out_ready),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_b10_to_2b_0_0,b10_to_2b,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "b10_to_2b,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (input_10,
    clk,
    new_set,
    out_2,
    out_ready);
  input [9:0]input_10;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_second_clk" *) input clk;
  input new_set;
  output [1:0]out_2;
  output [1:0]out_ready;

  wire clk;
  wire [9:0]input_10;
  wire new_set;
  wire [1:0]out_2;
  wire [0:0]\^out_ready ;

  assign out_ready[1] = \^out_ready [0];
  assign out_ready[0] = \^out_ready [0];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_b10_to_2b U0
       (.clk(clk),
        .input_10(input_10),
        .new_set(new_set),
        .out_2(out_2),
        .out_ready(\^out_ready ));
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
