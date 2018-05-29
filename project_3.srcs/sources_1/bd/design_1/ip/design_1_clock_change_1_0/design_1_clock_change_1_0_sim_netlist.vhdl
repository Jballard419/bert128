-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed May 23 17:59:08 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_clock_change_1_0/design_1_clock_change_1_0_sim_netlist.vhdl
-- Design      : design_1_clock_change_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clock_change_1_0_clock_change is
  port (
    o : out STD_LOGIC;
    rst : in STD_LOGIC;
    i : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_clock_change_1_0_clock_change : entity is "clock_change";
end design_1_clock_change_1_0_clock_change;

architecture STRUCTURE of design_1_clock_change_1_0_clock_change is
  signal x : STD_LOGIC;
  signal y : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of FDRE_inst : label is "PRIMITIVE";
  attribute box_type of FDRE_inst2 : label is "PRIMITIVE";
  attribute box_type of FDRE_inst3 : label is "PRIMITIVE";
begin
FDRE_inst: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i,
      Q => x,
      R => rst
    );
FDRE_inst2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => x,
      Q => y,
      R => rst
    );
FDRE_inst3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => y,
      Q => o,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clock_change_1_0 is
  port (
    i : in STD_LOGIC;
    o : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_clock_change_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_clock_change_1_0 : entity is "design_1_clock_change_1_0,clock_change,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_clock_change_1_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_clock_change_1_0 : entity is "clock_change,Vivado 2018.1";
end design_1_clock_change_1_0;

architecture STRUCTURE of design_1_clock_change_1_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_second_clk";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH";
begin
U0: entity work.design_1_clock_change_1_0_clock_change
     port map (
      clk => clk,
      i => i,
      o => o,
      rst => rst
    );
end STRUCTURE;
