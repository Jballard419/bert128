-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Fri Apr 27 13:17:00 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_FIFO_enabler_0_0/design_1_FIFO_enabler_0_0_sim_netlist.vhdl
-- Design      : design_1_FIFO_enabler_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FIFO_enabler_0_0_FIFO_enabler is
  port (
    wr_en : out STD_LOGIC;
    d_write : in STD_LOGIC;
    isreading : in STD_LOGIC;
    tc : in STD_LOGIC;
    gpio : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FIFO_enabler_0_0_FIFO_enabler : entity is "FIFO_enabler";
end design_1_FIFO_enabler_0_0_FIFO_enabler;

architecture STRUCTURE of design_1_FIFO_enabler_0_0_FIFO_enabler is
begin
\wr_en__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => d_write,
      I1 => isreading,
      I2 => tc,
      I3 => gpio,
      O => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FIFO_enabler_0_0 is
  port (
    d_write : in STD_LOGIC;
    tc : in STD_LOGIC;
    gpio : in STD_LOGIC;
    isreading : in STD_LOGIC;
    wr_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_FIFO_enabler_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_FIFO_enabler_0_0 : entity is "design_1_FIFO_enabler_0_0,FIFO_enabler,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_FIFO_enabler_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_FIFO_enabler_0_0 : entity is "FIFO_enabler,Vivado 2018.1";
end design_1_FIFO_enabler_0_0;

architecture STRUCTURE of design_1_FIFO_enabler_0_0 is
begin
U0: entity work.design_1_FIFO_enabler_0_0_FIFO_enabler
     port map (
      d_write => d_write,
      gpio => gpio,
      isreading => isreading,
      tc => tc,
      wr_en => wr_en
    );
end STRUCTURE;
