-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Mon May 14 15:14:01 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_os48_1011x20bTo10b_top2_0_0/design_1_os48_1011x20bTo10b_top2_0_0_stub.vhdl
-- Design      : design_1_os48_1011x20bTo10b_top2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_os48_1011x20bTo10b_top2_0_0 is
  Port ( 
    rst : in STD_LOGIC;
    bitOrderDinLSB : in STD_LOGIC;
    bitOrderDoutLSB : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    A_en : in STD_LOGIC;
    A_din20b : in STD_LOGIC_VECTOR ( 19 downto 0 );
    A_dout10bEn : out STD_LOGIC;
    A_dout10b : out STD_LOGIC_VECTOR ( 9 downto 0 );
    A_dout20bEn : out STD_LOGIC;
    A_dout20b : out STD_LOGIC_VECTOR ( 19 downto 0 );
    B_recclk : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    B_din20b : in STD_LOGIC_VECTOR ( 19 downto 0 );
    B_dout10bEn : out STD_LOGIC;
    B_dout10b : out STD_LOGIC_VECTOR ( 9 downto 0 );
    B_dout20bEn : out STD_LOGIC;
    B_dout20b : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );

end design_1_os48_1011x20bTo10b_top2_0_0;

architecture stub of design_1_os48_1011x20bTo10b_top2_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,bitOrderDinLSB,bitOrderDoutLSB,A_recclk,A_en,A_din20b[19:0],A_dout10bEn,A_dout10b[9:0],A_dout20bEn,A_dout20b[19:0],B_recclk,B_en,B_mode[1:0],B_din20b[19:0],B_dout10bEn,B_dout10b[9:0],B_dout20bEn,B_dout20b[19:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "os48_1011x20bTo10b_top2,Vivado 2018.1";
begin
end;
