-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed May 23 17:57:06 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_serial_pipeline_delay_0_1_sim_netlist.vhdl
-- Design      : design_1_serial_pipeline_delay_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_pipeline_delay is
  port (
    delayout : out STD_LOGIC;
    delayin : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_pipeline_delay;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_pipeline_delay is
  signal \temp_reg[19]_srl19_n_0\ : STD_LOGIC;
  signal \temp_reg_n_0_[0]\ : STD_LOGIC;
  signal \NLW_temp_reg[19]_srl19_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_reg[19]_srl19\ : label is "\U0/temp_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_reg[19]_srl19\ : label is "\U0/temp_reg[19]_srl19 ";
begin
\temp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => delayin,
      Q => \temp_reg_n_0_[0]\,
      R => '0'
    );
\temp_reg[19]_srl19\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"10010",
      CE => '1',
      CLK => clk,
      D => \temp_reg_n_0_[0]\,
      Q => \temp_reg[19]_srl19_n_0\,
      Q31 => \NLW_temp_reg[19]_srl19_Q31_UNCONNECTED\
    );
\temp_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \temp_reg[19]_srl19_n_0\,
      Q => delayout,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    delayin : in STD_LOGIC;
    delayout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_serial_pipeline_delay_0_1,serial_pipeline_delay,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "serial_pipeline_delay,Vivado 2018.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_second_clk";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial_pipeline_delay
     port map (
      clk => clk,
      delayin => delayin,
      delayout => delayout
    );
end STRUCTURE;
