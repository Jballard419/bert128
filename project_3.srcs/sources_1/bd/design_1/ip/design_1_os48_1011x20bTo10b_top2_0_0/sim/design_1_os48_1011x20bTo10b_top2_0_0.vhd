-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:os48_1011x20bTo10b_top2:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_os48_1011x20bTo10b_top2_0_0 IS
  PORT (
    rst : IN STD_LOGIC;
    bitOrderDinLSB : IN STD_LOGIC;
    bitOrderDoutLSB : IN STD_LOGIC;
    A_recclk : IN STD_LOGIC;
    A_en : IN STD_LOGIC;
    A_din20b : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    A_dout10bEn : OUT STD_LOGIC;
    A_dout10b : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    A_dout20bEn : OUT STD_LOGIC;
    A_dout20b : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
    B_recclk : IN STD_LOGIC;
    B_en : IN STD_LOGIC;
    B_mode : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    B_din20b : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    B_dout10bEn : OUT STD_LOGIC;
    B_dout10b : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    B_dout20bEn : OUT STD_LOGIC;
    B_dout20b : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
  );
END design_1_os48_1011x20bTo10b_top2_0_0;

ARCHITECTURE design_1_os48_1011x20bTo10b_top2_0_0_arch OF design_1_os48_1011x20bTo10b_top2_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_os48_1011x20bTo10b_top2_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT os48_1011x20bTo10b_top2 IS
    PORT (
      rst : IN STD_LOGIC;
      bitOrderDinLSB : IN STD_LOGIC;
      bitOrderDoutLSB : IN STD_LOGIC;
      A_recclk : IN STD_LOGIC;
      A_en : IN STD_LOGIC;
      A_din20b : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      A_dout10bEn : OUT STD_LOGIC;
      A_dout10b : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      A_dout20bEn : OUT STD_LOGIC;
      A_dout20b : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
      B_recclk : IN STD_LOGIC;
      B_en : IN STD_LOGIC;
      B_mode : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      B_din20b : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      B_dout10bEn : OUT STD_LOGIC;
      B_dout10b : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      B_dout20bEn : OUT STD_LOGIC;
      B_dout20b : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
    );
  END COMPONENT os48_1011x20bTo10b_top2;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
BEGIN
  U0 : os48_1011x20bTo10b_top2
    PORT MAP (
      rst => rst,
      bitOrderDinLSB => bitOrderDinLSB,
      bitOrderDoutLSB => bitOrderDoutLSB,
      A_recclk => A_recclk,
      A_en => A_en,
      A_din20b => A_din20b,
      A_dout10bEn => A_dout10bEn,
      A_dout10b => A_dout10b,
      A_dout20bEn => A_dout20bEn,
      A_dout20b => A_dout20b,
      B_recclk => B_recclk,
      B_en => B_en,
      B_mode => B_mode,
      B_din20b => B_din20b,
      B_dout10bEn => B_dout10bEn,
      B_dout10b => B_dout10b,
      B_dout20bEn => B_dout20bEn,
      B_dout20b => B_dout20b
    );
END design_1_os48_1011x20bTo10b_top2_0_0_arch;
