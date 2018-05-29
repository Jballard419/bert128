-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Fri Apr 27 13:17:00 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_FIFO_enabler_0_0/design_1_FIFO_enabler_0_0_stub.vhdl
-- Design      : design_1_FIFO_enabler_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_FIFO_enabler_0_0 is
  Port ( 
    d_write : in STD_LOGIC;
    tc : in STD_LOGIC;
    gpio : in STD_LOGIC;
    isreading : in STD_LOGIC;
    wr_en : out STD_LOGIC
  );

end design_1_FIFO_enabler_0_0;

architecture stub of design_1_FIFO_enabler_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "d_write,tc,gpio,isreading,wr_en";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "FIFO_enabler,Vivado 2018.1";
begin
end;
