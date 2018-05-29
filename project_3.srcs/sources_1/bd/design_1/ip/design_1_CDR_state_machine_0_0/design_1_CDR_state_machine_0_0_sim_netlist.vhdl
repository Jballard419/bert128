-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed May 23 17:57:07 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_CDR_state_machine_0_0/design_1_CDR_state_machine_0_0_sim_netlist.vhdl
-- Design      : design_1_CDR_state_machine_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CDR_state_machine_0_0_CDR_state_machine is
  port (
    d_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    d_write : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    d_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dv : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CDR_state_machine_0_0_CDR_state_machine : entity is "CDR_state_machine";
end design_1_CDR_state_machine_0_0_CDR_state_machine;

architecture STRUCTURE of design_1_CDR_state_machine_0_0_CDR_state_machine is
  signal \^d_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal en_i_1_n_0 : STD_LOGIC;
  signal held : STD_LOGIC;
  signal held_i_1_n_0 : STD_LOGIC;
  signal \output[0]_i_1_n_0\ : STD_LOGIC;
  signal \output[1]_i_1_n_0\ : STD_LOGIC;
  signal s : STD_LOGIC;
  signal s_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of en_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_i_1 : label is "soft_lutpair0";
begin
  d_out(1 downto 0) <= \^d_out\(1 downto 0);
en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => s,
      I1 => dv(0),
      I2 => dv(1),
      O => en_i_1_n_0
    );
en_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => en_i_1_n_0,
      Q => d_write
    );
held_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFF0C00A0000C00"
    )
        port map (
      I0 => d_in(1),
      I1 => d_in(0),
      I2 => dv(1),
      I3 => dv(0),
      I4 => s,
      I5 => held,
      O => held_i_1_n_0
    );
held_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => held_i_1_n_0,
      Q => held
    );
\output[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFC000AA00C000"
    )
        port map (
      I0 => d_in(0),
      I1 => dv(1),
      I2 => d_in(1),
      I3 => dv(0),
      I4 => s,
      I5 => \^d_out\(0),
      O => \output[0]_i_1_n_0\
    );
\output[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFC0FFAA00C0FF"
    )
        port map (
      I0 => held,
      I1 => d_in(0),
      I2 => dv(1),
      I3 => dv(0),
      I4 => s,
      I5 => \^d_out\(1),
      O => \output[1]_i_1_n_0\
    );
\output_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \output[0]_i_1_n_0\,
      Q => \^d_out\(0)
    );
\output_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \output[1]_i_1_n_0\,
      Q => \^d_out\(1)
    );
s_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => dv(1),
      I1 => dv(0),
      I2 => s,
      O => s_i_1_n_0
    );
s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => s_i_1_n_0,
      Q => s
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CDR_state_machine_0_0 is
  port (
    d_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    dv : in STD_LOGIC_VECTOR ( 1 downto 0 );
    d_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    d_write : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_CDR_state_machine_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_CDR_state_machine_0_0 : entity is "design_1_CDR_state_machine_0_0,CDR_state_machine,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_CDR_state_machine_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_CDR_state_machine_0_0 : entity is "CDR_state_machine,Vivado 2018.1";
end design_1_CDR_state_machine_0_0;

architecture STRUCTURE of design_1_CDR_state_machine_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_second_clk";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.design_1_CDR_state_machine_0_0_CDR_state_machine
     port map (
      clk => clk,
      d_in(1 downto 0) => d_in(1 downto 0),
      d_out(1 downto 0) => d_out(1 downto 0),
      d_write => d_write,
      dv(1 downto 0) => dv(1 downto 0),
      rst => rst
    );
end STRUCTURE;
