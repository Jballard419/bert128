--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
--Date        : Wed May 23 17:53:59 2018
--Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    clk_out : out STD_LOGIC;
    in_n : in STD_LOGIC;
    in_p : in STD_LOGIC;
    out_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    rs232_uart_rxd : in STD_LOGIC;
    rs232_uart_txd : out STD_LOGIC;
    sys_diff_clock_clk_n : in STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_diff_clock_clk_n : in STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC;
    clk_out : out STD_LOGIC;
    reset : in STD_LOGIC;
    out_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    in_p : in STD_LOGIC;
    in_n : in STD_LOGIC;
    rs232_uart_rxd : in STD_LOGIC;
    rs232_uart_txd : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      clk_out => clk_out,
      in_n => in_n,
      in_p => in_p,
      out_n(0) => out_n(0),
      out_p(0) => out_p(0),
      reset => reset,
      rs232_uart_rxd => rs232_uart_rxd,
      rs232_uart_txd => rs232_uart_txd,
      sys_diff_clock_clk_n => sys_diff_clock_clk_n,
      sys_diff_clock_clk_p => sys_diff_clock_clk_p
    );
end STRUCTURE;
