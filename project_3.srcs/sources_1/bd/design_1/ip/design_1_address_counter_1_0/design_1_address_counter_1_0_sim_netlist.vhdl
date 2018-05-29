-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed May 23 17:57:06 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_address_counter_1_0/design_1_address_counter_1_0_sim_netlist.vhdl
-- Design      : design_1_address_counter_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_address_counter_1_0_address_counter is
  port (
    address : out STD_LOGIC_VECTOR ( 13 downto 0 );
    tc : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_address_counter_1_0_address_counter : entity is "address_counter";
end design_1_address_counter_1_0_address_counter;

architecture STRUCTURE of design_1_address_counter_1_0_address_counter is
  signal \addr[13]_i_1_n_0\ : STD_LOGIC;
  signal \addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \addr_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[13]_i_3_n_3\ : STD_LOGIC;
  signal \addr_reg[13]_i_3_n_6\ : STD_LOGIC;
  signal \addr_reg[13]_i_3_n_7\ : STD_LOGIC;
  signal \addr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^address\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal i_tc_i_1_n_0 : STD_LOGIC;
  signal i_tc_i_2_n_0 : STD_LOGIC;
  signal i_tc_i_3_n_0 : STD_LOGIC;
  signal i_tc_i_4_n_0 : STD_LOGIC;
  signal i_tc_i_5_n_0 : STD_LOGIC;
  signal i_tc_i_6_n_0 : STD_LOGIC;
  signal i_tc_i_7_n_0 : STD_LOGIC;
  signal \rep_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \rep_count[0]_i_3_n_0\ : STD_LOGIC;
  signal rep_count_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rep_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \rep_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \rep_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \rep_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \rep_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \rep_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \rep_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \rep_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \rep_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \rep_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \rep_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \rep_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \rep_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \rep_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \rep_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \rep_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rep_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \rep_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \rep_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \rep_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \rep_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \rep_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \rep_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \rep_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rep_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \rep_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \rep_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \rep_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \rep_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \rep_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \rep_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \^tc\ : STD_LOGIC;
  signal \NLW_addr_reg[13]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_addr_reg[13]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rep_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  address(13 downto 0) <= \^address\(13 downto 0);
  tc <= \^tc\;
\addr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => i_tc_i_4_n_0,
      I1 => \^address\(0),
      I2 => \^address\(1),
      I3 => i_tc_i_3_n_0,
      I4 => rst,
      O => \addr[13]_i_1_n_0\
    );
\addr[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tc\,
      O => sel
    );
\addr[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^address\(0),
      O => \addr[3]_i_2_n_0\
    );
\addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \addr_reg[3]_i_1_n_7\,
      Q => \^address\(0),
      R => \addr[13]_i_1_n_0\
    );
\addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \addr_reg[11]_i_1_n_5\,
      Q => \^address\(10),
      R => \addr[13]_i_1_n_0\
    );
\addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \addr_reg[11]_i_1_n_4\,
      Q => \^address\(11),
      R => \addr[13]_i_1_n_0\
    );
\addr_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_reg[7]_i_1_n_0\,
      CO(3) => \addr_reg[11]_i_1_n_0\,
      CO(2) => \addr_reg[11]_i_1_n_1\,
      CO(1) => \addr_reg[11]_i_1_n_2\,
      CO(0) => \addr_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \addr_reg[11]_i_1_n_4\,
      O(2) => \addr_reg[11]_i_1_n_5\,
      O(1) => \addr_reg[11]_i_1_n_6\,
      O(0) => \addr_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^address\(11 downto 8)
    );
\addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \addr_reg[13]_i_3_n_7\,
      Q => \^address\(12),
      R => \addr[13]_i_1_n_0\
    );
\addr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \addr_reg[13]_i_3_n_6\,
      Q => \^address\(13),
      R => \addr[13]_i_1_n_0\
    );
\addr_reg[13]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_reg[11]_i_1_n_0\,
      CO(3 downto 1) => \NLW_addr_reg[13]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \addr_reg[13]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_addr_reg[13]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1) => \addr_reg[13]_i_3_n_6\,
      O(0) => \addr_reg[13]_i_3_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \^address\(13 downto 12)
    );
\addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \addr_reg[3]_i_1_n_6\,
      Q => \^address\(1),
      R => \addr[13]_i_1_n_0\
    );
\addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \addr_reg[3]_i_1_n_5\,
      Q => \^address\(2),
      R => \addr[13]_i_1_n_0\
    );
\addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \addr_reg[3]_i_1_n_4\,
      Q => \^address\(3),
      R => \addr[13]_i_1_n_0\
    );
\addr_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \addr_reg[3]_i_1_n_0\,
      CO(2) => \addr_reg[3]_i_1_n_1\,
      CO(1) => \addr_reg[3]_i_1_n_2\,
      CO(0) => \addr_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \addr_reg[3]_i_1_n_4\,
      O(2) => \addr_reg[3]_i_1_n_5\,
      O(1) => \addr_reg[3]_i_1_n_6\,
      O(0) => \addr_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^address\(3 downto 1),
      S(0) => \addr[3]_i_2_n_0\
    );
\addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \addr_reg[7]_i_1_n_7\,
      Q => \^address\(4),
      R => \addr[13]_i_1_n_0\
    );
\addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \addr_reg[7]_i_1_n_6\,
      Q => \^address\(5),
      R => \addr[13]_i_1_n_0\
    );
\addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \addr_reg[7]_i_1_n_5\,
      Q => \^address\(6),
      R => \addr[13]_i_1_n_0\
    );
\addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \addr_reg[7]_i_1_n_4\,
      Q => \^address\(7),
      R => \addr[13]_i_1_n_0\
    );
\addr_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_reg[3]_i_1_n_0\,
      CO(3) => \addr_reg[7]_i_1_n_0\,
      CO(2) => \addr_reg[7]_i_1_n_1\,
      CO(1) => \addr_reg[7]_i_1_n_2\,
      CO(0) => \addr_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \addr_reg[7]_i_1_n_4\,
      O(2) => \addr_reg[7]_i_1_n_5\,
      O(1) => \addr_reg[7]_i_1_n_6\,
      O(0) => \addr_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^address\(7 downto 4)
    );
\addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \addr_reg[11]_i_1_n_7\,
      Q => \^address\(8),
      R => \addr[13]_i_1_n_0\
    );
\addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \addr_reg[11]_i_1_n_6\,
      Q => \^address\(9),
      R => \addr[13]_i_1_n_0\
    );
i_tc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAAAAAAA"
    )
        port map (
      I0 => \^tc\,
      I1 => i_tc_i_2_n_0,
      I2 => i_tc_i_3_n_0,
      I3 => i_tc_i_4_n_0,
      I4 => i_tc_i_5_n_0,
      I5 => rst,
      O => i_tc_i_1_n_0
    );
i_tc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => rep_count_reg(2),
      I1 => rep_count_reg(3),
      I2 => rep_count_reg(0),
      I3 => rep_count_reg(1),
      I4 => rep_count_reg(5),
      I5 => rep_count_reg(4),
      O => i_tc_i_2_n_0
    );
i_tc_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \^address\(4),
      I1 => \^address\(5),
      I2 => \^address\(2),
      I3 => \^address\(3),
      I4 => \^address\(7),
      I5 => \^address\(6),
      O => i_tc_i_3_n_0
    );
i_tc_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \^address\(11),
      I1 => \^address\(10),
      I2 => \^address\(8),
      I3 => \^address\(9),
      I4 => \^address\(13),
      I5 => \^address\(12),
      O => i_tc_i_4_n_0
    );
i_tc_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => i_tc_i_6_n_0,
      I1 => rep_count_reg(13),
      I2 => rep_count_reg(12),
      I3 => rep_count_reg(15),
      I4 => rep_count_reg(14),
      I5 => i_tc_i_7_n_0,
      O => i_tc_i_5_n_0
    );
i_tc_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^address\(0),
      I1 => \^address\(1),
      O => i_tc_i_6_n_0
    );
i_tc_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => rep_count_reg(8),
      I1 => rep_count_reg(9),
      I2 => rep_count_reg(6),
      I3 => rep_count_reg(7),
      I4 => rep_count_reg(11),
      I5 => rep_count_reg(10),
      O => i_tc_i_7_n_0
    );
i_tc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i_tc_i_1_n_0,
      Q => \^tc\,
      R => '0'
    );
\rep_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => i_tc_i_4_n_0,
      I1 => \^address\(0),
      I2 => \^address\(1),
      I3 => i_tc_i_3_n_0,
      O => \rep_count[0]_i_1_n_0\
    );
\rep_count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rep_count_reg(0),
      O => \rep_count[0]_i_3_n_0\
    );
\rep_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[0]_i_2_n_7\,
      Q => rep_count_reg(0),
      R => rst
    );
\rep_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rep_count_reg[0]_i_2_n_0\,
      CO(2) => \rep_count_reg[0]_i_2_n_1\,
      CO(1) => \rep_count_reg[0]_i_2_n_2\,
      CO(0) => \rep_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \rep_count_reg[0]_i_2_n_4\,
      O(2) => \rep_count_reg[0]_i_2_n_5\,
      O(1) => \rep_count_reg[0]_i_2_n_6\,
      O(0) => \rep_count_reg[0]_i_2_n_7\,
      S(3 downto 1) => rep_count_reg(3 downto 1),
      S(0) => \rep_count[0]_i_3_n_0\
    );
\rep_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[8]_i_1_n_5\,
      Q => rep_count_reg(10),
      R => rst
    );
\rep_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[8]_i_1_n_4\,
      Q => rep_count_reg(11),
      R => rst
    );
\rep_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[12]_i_1_n_7\,
      Q => rep_count_reg(12),
      R => rst
    );
\rep_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rep_count_reg[8]_i_1_n_0\,
      CO(3) => \NLW_rep_count_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \rep_count_reg[12]_i_1_n_1\,
      CO(1) => \rep_count_reg[12]_i_1_n_2\,
      CO(0) => \rep_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rep_count_reg[12]_i_1_n_4\,
      O(2) => \rep_count_reg[12]_i_1_n_5\,
      O(1) => \rep_count_reg[12]_i_1_n_6\,
      O(0) => \rep_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => rep_count_reg(15 downto 12)
    );
\rep_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[12]_i_1_n_6\,
      Q => rep_count_reg(13),
      R => rst
    );
\rep_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[12]_i_1_n_5\,
      Q => rep_count_reg(14),
      R => rst
    );
\rep_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[12]_i_1_n_4\,
      Q => rep_count_reg(15),
      R => rst
    );
\rep_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[0]_i_2_n_6\,
      Q => rep_count_reg(1),
      R => rst
    );
\rep_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[0]_i_2_n_5\,
      Q => rep_count_reg(2),
      R => rst
    );
\rep_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[0]_i_2_n_4\,
      Q => rep_count_reg(3),
      R => rst
    );
\rep_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[4]_i_1_n_7\,
      Q => rep_count_reg(4),
      R => rst
    );
\rep_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rep_count_reg[0]_i_2_n_0\,
      CO(3) => \rep_count_reg[4]_i_1_n_0\,
      CO(2) => \rep_count_reg[4]_i_1_n_1\,
      CO(1) => \rep_count_reg[4]_i_1_n_2\,
      CO(0) => \rep_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rep_count_reg[4]_i_1_n_4\,
      O(2) => \rep_count_reg[4]_i_1_n_5\,
      O(1) => \rep_count_reg[4]_i_1_n_6\,
      O(0) => \rep_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => rep_count_reg(7 downto 4)
    );
\rep_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[4]_i_1_n_6\,
      Q => rep_count_reg(5),
      R => rst
    );
\rep_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[4]_i_1_n_5\,
      Q => rep_count_reg(6),
      R => rst
    );
\rep_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[4]_i_1_n_4\,
      Q => rep_count_reg(7),
      R => rst
    );
\rep_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[8]_i_1_n_7\,
      Q => rep_count_reg(8),
      R => rst
    );
\rep_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rep_count_reg[4]_i_1_n_0\,
      CO(3) => \rep_count_reg[8]_i_1_n_0\,
      CO(2) => \rep_count_reg[8]_i_1_n_1\,
      CO(1) => \rep_count_reg[8]_i_1_n_2\,
      CO(0) => \rep_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rep_count_reg[8]_i_1_n_4\,
      O(2) => \rep_count_reg[8]_i_1_n_5\,
      O(1) => \rep_count_reg[8]_i_1_n_6\,
      O(0) => \rep_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => rep_count_reg(11 downto 8)
    );
\rep_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rep_count[0]_i_1_n_0\,
      D => \rep_count_reg[8]_i_1_n_6\,
      Q => rep_count_reg(9),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_address_counter_1_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    tc : out STD_LOGIC;
    address : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_address_counter_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_address_counter_1_0 : entity is "design_1_address_counter_1_0,address_counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_address_counter_1_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_address_counter_1_0 : entity is "address_counter,Vivado 2018.1";
end design_1_address_counter_1_0;

architecture STRUCTURE of design_1_address_counter_1_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_second_clk";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.design_1_address_counter_1_0_address_counter
     port map (
      address(13 downto 0) => address(13 downto 0),
      clk => clk,
      rst => rst,
      tc => tc
    );
end STRUCTURE;
