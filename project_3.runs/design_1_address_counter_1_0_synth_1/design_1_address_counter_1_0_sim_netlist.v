// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed May 23 17:57:04 2018
// Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_address_counter_1_0_sim_netlist.v
// Design      : design_1_address_counter_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_counter
   (address,
    tc,
    rst,
    clk);
  output [13:0]address;
  output tc;
  input rst;
  input clk;

  wire \addr[13]_i_1_n_0 ;
  wire \addr[3]_i_2_n_0 ;
  wire \addr_reg[11]_i_1_n_0 ;
  wire \addr_reg[11]_i_1_n_1 ;
  wire \addr_reg[11]_i_1_n_2 ;
  wire \addr_reg[11]_i_1_n_3 ;
  wire \addr_reg[11]_i_1_n_4 ;
  wire \addr_reg[11]_i_1_n_5 ;
  wire \addr_reg[11]_i_1_n_6 ;
  wire \addr_reg[11]_i_1_n_7 ;
  wire \addr_reg[13]_i_3_n_3 ;
  wire \addr_reg[13]_i_3_n_6 ;
  wire \addr_reg[13]_i_3_n_7 ;
  wire \addr_reg[3]_i_1_n_0 ;
  wire \addr_reg[3]_i_1_n_1 ;
  wire \addr_reg[3]_i_1_n_2 ;
  wire \addr_reg[3]_i_1_n_3 ;
  wire \addr_reg[3]_i_1_n_4 ;
  wire \addr_reg[3]_i_1_n_5 ;
  wire \addr_reg[3]_i_1_n_6 ;
  wire \addr_reg[3]_i_1_n_7 ;
  wire \addr_reg[7]_i_1_n_0 ;
  wire \addr_reg[7]_i_1_n_1 ;
  wire \addr_reg[7]_i_1_n_2 ;
  wire \addr_reg[7]_i_1_n_3 ;
  wire \addr_reg[7]_i_1_n_4 ;
  wire \addr_reg[7]_i_1_n_5 ;
  wire \addr_reg[7]_i_1_n_6 ;
  wire \addr_reg[7]_i_1_n_7 ;
  wire [13:0]address;
  wire clk;
  wire i_tc_i_1_n_0;
  wire i_tc_i_2_n_0;
  wire i_tc_i_3_n_0;
  wire i_tc_i_4_n_0;
  wire i_tc_i_5_n_0;
  wire i_tc_i_6_n_0;
  wire i_tc_i_7_n_0;
  wire \rep_count[0]_i_1_n_0 ;
  wire \rep_count[0]_i_3_n_0 ;
  wire [15:0]rep_count_reg;
  wire \rep_count_reg[0]_i_2_n_0 ;
  wire \rep_count_reg[0]_i_2_n_1 ;
  wire \rep_count_reg[0]_i_2_n_2 ;
  wire \rep_count_reg[0]_i_2_n_3 ;
  wire \rep_count_reg[0]_i_2_n_4 ;
  wire \rep_count_reg[0]_i_2_n_5 ;
  wire \rep_count_reg[0]_i_2_n_6 ;
  wire \rep_count_reg[0]_i_2_n_7 ;
  wire \rep_count_reg[12]_i_1_n_1 ;
  wire \rep_count_reg[12]_i_1_n_2 ;
  wire \rep_count_reg[12]_i_1_n_3 ;
  wire \rep_count_reg[12]_i_1_n_4 ;
  wire \rep_count_reg[12]_i_1_n_5 ;
  wire \rep_count_reg[12]_i_1_n_6 ;
  wire \rep_count_reg[12]_i_1_n_7 ;
  wire \rep_count_reg[4]_i_1_n_0 ;
  wire \rep_count_reg[4]_i_1_n_1 ;
  wire \rep_count_reg[4]_i_1_n_2 ;
  wire \rep_count_reg[4]_i_1_n_3 ;
  wire \rep_count_reg[4]_i_1_n_4 ;
  wire \rep_count_reg[4]_i_1_n_5 ;
  wire \rep_count_reg[4]_i_1_n_6 ;
  wire \rep_count_reg[4]_i_1_n_7 ;
  wire \rep_count_reg[8]_i_1_n_0 ;
  wire \rep_count_reg[8]_i_1_n_1 ;
  wire \rep_count_reg[8]_i_1_n_2 ;
  wire \rep_count_reg[8]_i_1_n_3 ;
  wire \rep_count_reg[8]_i_1_n_4 ;
  wire \rep_count_reg[8]_i_1_n_5 ;
  wire \rep_count_reg[8]_i_1_n_6 ;
  wire \rep_count_reg[8]_i_1_n_7 ;
  wire rst;
  wire sel;
  wire tc;
  wire [3:1]\NLW_addr_reg[13]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_addr_reg[13]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_rep_count_reg[12]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \addr[13]_i_1 
       (.I0(i_tc_i_4_n_0),
        .I1(address[0]),
        .I2(address[1]),
        .I3(i_tc_i_3_n_0),
        .I4(rst),
        .O(\addr[13]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr[13]_i_2 
       (.I0(tc),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \addr[3]_i_2 
       (.I0(address[0]),
        .O(\addr[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\addr_reg[3]_i_1_n_7 ),
        .Q(address[0]),
        .R(\addr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[10] 
       (.C(clk),
        .CE(sel),
        .D(\addr_reg[11]_i_1_n_5 ),
        .Q(address[10]),
        .R(\addr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[11] 
       (.C(clk),
        .CE(sel),
        .D(\addr_reg[11]_i_1_n_4 ),
        .Q(address[11]),
        .R(\addr[13]_i_1_n_0 ));
  CARRY4 \addr_reg[11]_i_1 
       (.CI(\addr_reg[7]_i_1_n_0 ),
        .CO({\addr_reg[11]_i_1_n_0 ,\addr_reg[11]_i_1_n_1 ,\addr_reg[11]_i_1_n_2 ,\addr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[11]_i_1_n_4 ,\addr_reg[11]_i_1_n_5 ,\addr_reg[11]_i_1_n_6 ,\addr_reg[11]_i_1_n_7 }),
        .S(address[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[12] 
       (.C(clk),
        .CE(sel),
        .D(\addr_reg[13]_i_3_n_7 ),
        .Q(address[12]),
        .R(\addr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[13] 
       (.C(clk),
        .CE(sel),
        .D(\addr_reg[13]_i_3_n_6 ),
        .Q(address[13]),
        .R(\addr[13]_i_1_n_0 ));
  CARRY4 \addr_reg[13]_i_3 
       (.CI(\addr_reg[11]_i_1_n_0 ),
        .CO({\NLW_addr_reg[13]_i_3_CO_UNCONNECTED [3:1],\addr_reg[13]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addr_reg[13]_i_3_O_UNCONNECTED [3:2],\addr_reg[13]_i_3_n_6 ,\addr_reg[13]_i_3_n_7 }),
        .S({1'b0,1'b0,address[13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(\addr_reg[3]_i_1_n_6 ),
        .Q(address[1]),
        .R(\addr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(\addr_reg[3]_i_1_n_5 ),
        .Q(address[2]),
        .R(\addr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(\addr_reg[3]_i_1_n_4 ),
        .Q(address[3]),
        .R(\addr[13]_i_1_n_0 ));
  CARRY4 \addr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\addr_reg[3]_i_1_n_0 ,\addr_reg[3]_i_1_n_1 ,\addr_reg[3]_i_1_n_2 ,\addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\addr_reg[3]_i_1_n_4 ,\addr_reg[3]_i_1_n_5 ,\addr_reg[3]_i_1_n_6 ,\addr_reg[3]_i_1_n_7 }),
        .S({address[3:1],\addr[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(\addr_reg[7]_i_1_n_7 ),
        .Q(address[4]),
        .R(\addr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(\addr_reg[7]_i_1_n_6 ),
        .Q(address[5]),
        .R(\addr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(\addr_reg[7]_i_1_n_5 ),
        .Q(address[6]),
        .R(\addr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(\addr_reg[7]_i_1_n_4 ),
        .Q(address[7]),
        .R(\addr[13]_i_1_n_0 ));
  CARRY4 \addr_reg[7]_i_1 
       (.CI(\addr_reg[3]_i_1_n_0 ),
        .CO({\addr_reg[7]_i_1_n_0 ,\addr_reg[7]_i_1_n_1 ,\addr_reg[7]_i_1_n_2 ,\addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[7]_i_1_n_4 ,\addr_reg[7]_i_1_n_5 ,\addr_reg[7]_i_1_n_6 ,\addr_reg[7]_i_1_n_7 }),
        .S(address[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(\addr_reg[11]_i_1_n_7 ),
        .Q(address[8]),
        .R(\addr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[9] 
       (.C(clk),
        .CE(sel),
        .D(\addr_reg[11]_i_1_n_6 ),
        .Q(address[9]),
        .R(\addr[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAAAAAAA)) 
    i_tc_i_1
       (.I0(tc),
        .I1(i_tc_i_2_n_0),
        .I2(i_tc_i_3_n_0),
        .I3(i_tc_i_4_n_0),
        .I4(i_tc_i_5_n_0),
        .I5(rst),
        .O(i_tc_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    i_tc_i_2
       (.I0(rep_count_reg[2]),
        .I1(rep_count_reg[3]),
        .I2(rep_count_reg[0]),
        .I3(rep_count_reg[1]),
        .I4(rep_count_reg[5]),
        .I5(rep_count_reg[4]),
        .O(i_tc_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    i_tc_i_3
       (.I0(address[4]),
        .I1(address[5]),
        .I2(address[2]),
        .I3(address[3]),
        .I4(address[7]),
        .I5(address[6]),
        .O(i_tc_i_3_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    i_tc_i_4
       (.I0(address[11]),
        .I1(address[10]),
        .I2(address[8]),
        .I3(address[9]),
        .I4(address[13]),
        .I5(address[12]),
        .O(i_tc_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    i_tc_i_5
       (.I0(i_tc_i_6_n_0),
        .I1(rep_count_reg[13]),
        .I2(rep_count_reg[12]),
        .I3(rep_count_reg[15]),
        .I4(rep_count_reg[14]),
        .I5(i_tc_i_7_n_0),
        .O(i_tc_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i_tc_i_6
       (.I0(address[0]),
        .I1(address[1]),
        .O(i_tc_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    i_tc_i_7
       (.I0(rep_count_reg[8]),
        .I1(rep_count_reg[9]),
        .I2(rep_count_reg[6]),
        .I3(rep_count_reg[7]),
        .I4(rep_count_reg[11]),
        .I5(rep_count_reg[10]),
        .O(i_tc_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    i_tc_reg
       (.C(clk),
        .CE(1'b1),
        .D(i_tc_i_1_n_0),
        .Q(tc),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \rep_count[0]_i_1 
       (.I0(i_tc_i_4_n_0),
        .I1(address[0]),
        .I2(address[1]),
        .I3(i_tc_i_3_n_0),
        .O(\rep_count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rep_count[0]_i_3 
       (.I0(rep_count_reg[0]),
        .O(\rep_count[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[0] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[0]_i_2_n_7 ),
        .Q(rep_count_reg[0]),
        .R(rst));
  CARRY4 \rep_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\rep_count_reg[0]_i_2_n_0 ,\rep_count_reg[0]_i_2_n_1 ,\rep_count_reg[0]_i_2_n_2 ,\rep_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rep_count_reg[0]_i_2_n_4 ,\rep_count_reg[0]_i_2_n_5 ,\rep_count_reg[0]_i_2_n_6 ,\rep_count_reg[0]_i_2_n_7 }),
        .S({rep_count_reg[3:1],\rep_count[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[10] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[8]_i_1_n_5 ),
        .Q(rep_count_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[11] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[8]_i_1_n_4 ),
        .Q(rep_count_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[12] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[12]_i_1_n_7 ),
        .Q(rep_count_reg[12]),
        .R(rst));
  CARRY4 \rep_count_reg[12]_i_1 
       (.CI(\rep_count_reg[8]_i_1_n_0 ),
        .CO({\NLW_rep_count_reg[12]_i_1_CO_UNCONNECTED [3],\rep_count_reg[12]_i_1_n_1 ,\rep_count_reg[12]_i_1_n_2 ,\rep_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rep_count_reg[12]_i_1_n_4 ,\rep_count_reg[12]_i_1_n_5 ,\rep_count_reg[12]_i_1_n_6 ,\rep_count_reg[12]_i_1_n_7 }),
        .S(rep_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[13] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[12]_i_1_n_6 ),
        .Q(rep_count_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[14] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[12]_i_1_n_5 ),
        .Q(rep_count_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[15] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[12]_i_1_n_4 ),
        .Q(rep_count_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[1] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[0]_i_2_n_6 ),
        .Q(rep_count_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[2] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[0]_i_2_n_5 ),
        .Q(rep_count_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[3] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[0]_i_2_n_4 ),
        .Q(rep_count_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[4] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[4]_i_1_n_7 ),
        .Q(rep_count_reg[4]),
        .R(rst));
  CARRY4 \rep_count_reg[4]_i_1 
       (.CI(\rep_count_reg[0]_i_2_n_0 ),
        .CO({\rep_count_reg[4]_i_1_n_0 ,\rep_count_reg[4]_i_1_n_1 ,\rep_count_reg[4]_i_1_n_2 ,\rep_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rep_count_reg[4]_i_1_n_4 ,\rep_count_reg[4]_i_1_n_5 ,\rep_count_reg[4]_i_1_n_6 ,\rep_count_reg[4]_i_1_n_7 }),
        .S(rep_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[5] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[4]_i_1_n_6 ),
        .Q(rep_count_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[6] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[4]_i_1_n_5 ),
        .Q(rep_count_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[7] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[4]_i_1_n_4 ),
        .Q(rep_count_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[8] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[8]_i_1_n_7 ),
        .Q(rep_count_reg[8]),
        .R(rst));
  CARRY4 \rep_count_reg[8]_i_1 
       (.CI(\rep_count_reg[4]_i_1_n_0 ),
        .CO({\rep_count_reg[8]_i_1_n_0 ,\rep_count_reg[8]_i_1_n_1 ,\rep_count_reg[8]_i_1_n_2 ,\rep_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rep_count_reg[8]_i_1_n_4 ,\rep_count_reg[8]_i_1_n_5 ,\rep_count_reg[8]_i_1_n_6 ,\rep_count_reg[8]_i_1_n_7 }),
        .S(rep_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \rep_count_reg[9] 
       (.C(clk),
        .CE(\rep_count[0]_i_1_n_0 ),
        .D(\rep_count_reg[8]_i_1_n_6 ),
        .Q(rep_count_reg[9]),
        .R(rst));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_address_counter_1_0,address_counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "address_counter,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    clk,
    tc,
    address);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_second_clk" *) input clk;
  output tc;
  output [13:0]address;

  wire [13:0]address;
  wire clk;
  wire rst;
  wire tc;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_counter U0
       (.address(address),
        .clk(clk),
        .rst(rst),
        .tc(tc));
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
