-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed May 23 17:59:12 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_fifo_filled_lock_0_0/design_1_fifo_filled_lock_0_0_stub.vhdl
-- Design      : design_1_fifo_filled_lock_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_fifo_filled_lock_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    test : out STD_LOGIC
  );

end design_1_fifo_filled_lock_0_0;

architecture stub of design_1_fifo_filled_lock_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,data_in[15:0],test";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_filled_lock,Vivado 2018.1";
begin
end;
