-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed May 23 17:59:12 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_fifo_filled_lock_0_0/design_1_fifo_filled_lock_0_0_sim_netlist.vhdl
-- Design      : design_1_fifo_filled_lock_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fifo_filled_lock_0_0_fifo_filled_lock is
  port (
    test : out STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fifo_filled_lock_0_0_fifo_filled_lock : entity is "fifo_filled_lock";
end design_1_fifo_filled_lock_0_0_fifo_filled_lock;

architecture STRUCTURE of design_1_fifo_filled_lock_0_0_fifo_filled_lock is
  signal temp_i_1_n_0 : STD_LOGIC;
  signal temp_i_2_n_0 : STD_LOGIC;
  signal temp_i_3_n_0 : STD_LOGIC;
  signal temp_i_4_n_0 : STD_LOGIC;
  signal \^test\ : STD_LOGIC;
begin
  test <= \^test\;
temp_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => \^test\,
      I1 => temp_i_2_n_0,
      I2 => temp_i_3_n_0,
      I3 => temp_i_4_n_0,
      I4 => rst,
      O => temp_i_1_n_0
    );
temp_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => data_in(12),
      I1 => data_in(13),
      I2 => data_in(11),
      I3 => data_in(10),
      I4 => data_in(15),
      I5 => data_in(14),
      O => temp_i_2_n_0
    );
temp_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(0),
      I2 => data_in(3),
      I3 => data_in(2),
      O => temp_i_3_n_0
    );
temp_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => data_in(6),
      I1 => data_in(7),
      I2 => data_in(4),
      I3 => data_in(5),
      I4 => data_in(9),
      I5 => data_in(8),
      O => temp_i_4_n_0
    );
temp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => temp_i_1_n_0,
      Q => \^test\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fifo_filled_lock_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    test : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_fifo_filled_lock_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_fifo_filled_lock_0_0 : entity is "design_1_fifo_filled_lock_0_0,fifo_filled_lock,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_fifo_filled_lock_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_fifo_filled_lock_0_0 : entity is "fifo_filled_lock,Vivado 2018.1";
end design_1_fifo_filled_lock_0_0;

architecture STRUCTURE of design_1_fifo_filled_lock_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_second_clk";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.design_1_fifo_filled_lock_0_0_fifo_filled_lock
     port map (
      clk => clk,
      data_in(15 downto 0) => data_in(15 downto 0),
      rst => rst,
      test => test
    );
end STRUCTURE;
