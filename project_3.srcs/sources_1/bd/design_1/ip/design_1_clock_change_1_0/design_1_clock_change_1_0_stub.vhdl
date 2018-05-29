-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed May 23 17:59:08 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_clock_change_1_0/design_1_clock_change_1_0_stub.vhdl
-- Design      : design_1_clock_change_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_clock_change_1_0 is
  Port ( 
    i : in STD_LOGIC;
    o : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );

end design_1_clock_change_1_0;

architecture stub of design_1_clock_change_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i,o,rst,clk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "clock_change,Vivado 2018.1";
begin
end;
