-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed May 23 17:57:05 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_b10_to_2b_0_0_sim_netlist.vhdl
-- Design      : design_1_b10_to_2b_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_b10_to_2b is
  port (
    out_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_ready : out STD_LOGIC_VECTOR ( 0 to 0 );
    new_set : in STD_LOGIC;
    clk : in STD_LOGIC;
    input_10 : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_b10_to_2b;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_b10_to_2b is
  signal \cout[0]_i_3_n_0\ : STD_LOGIC;
  signal cout_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cout_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cout_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \cout_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \cout_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \cout_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cout_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cout_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cout_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cout_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cout_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cout_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cout_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cout_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cout_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cout_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cout_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cout_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cout_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cout_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cout_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cout_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cout_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cout_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cout_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cout_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cout_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cout_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cout_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cout_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cout_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cout_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cout_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cout_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cout_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cout_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cout_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cout_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cout_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cout_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cout_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cout_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \cout_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \cout_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cout_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \cout_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \cout_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cout_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cout_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cout_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cout_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cout_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cout_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cout_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cout_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cout_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cout_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cout_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cout_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cout_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cout_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cout_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cout_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cout_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \cout_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \out_2[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_2[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \out_2[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \out_2[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \out_2[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \out_2[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \out_2[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \out_2[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \out_2[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \out_ready[1]_i_1_n_0\ : STD_LOGIC;
  signal \out_ready[1]_i_2_n_0\ : STD_LOGIC;
  signal out_ready_0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \NLW_cout_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\cout[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \cout_reg__0\(2),
      I1 => \out_2[1]_INST_0_i_3_n_0\,
      I2 => \out_2[1]_INST_0_i_2_n_0\,
      I3 => \out_2[1]_INST_0_i_1_n_0\,
      I4 => cout_reg(1),
      I5 => cout_reg(0),
      O => out_ready_0(1)
    );
\cout[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cout_reg(0),
      O => \cout[0]_i_3_n_0\
    );
\cout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[0]_i_2_n_7\,
      Q => cout_reg(0),
      R => new_set
    );
\cout_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cout_reg[0]_i_2_n_0\,
      CO(2) => \cout_reg[0]_i_2_n_1\,
      CO(1) => \cout_reg[0]_i_2_n_2\,
      CO(0) => \cout_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cout_reg[0]_i_2_n_4\,
      O(2) => \cout_reg[0]_i_2_n_5\,
      O(1) => \cout_reg[0]_i_2_n_6\,
      O(0) => \cout_reg[0]_i_2_n_7\,
      S(3 downto 2) => \cout_reg__0\(3 downto 2),
      S(1) => cout_reg(1),
      S(0) => \cout[0]_i_3_n_0\
    );
\cout_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[8]_i_1_n_5\,
      Q => \cout_reg__0\(10),
      R => new_set
    );
\cout_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[8]_i_1_n_4\,
      Q => \cout_reg__0\(11),
      R => new_set
    );
\cout_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[12]_i_1_n_7\,
      Q => \cout_reg__0\(12),
      R => new_set
    );
\cout_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cout_reg[8]_i_1_n_0\,
      CO(3) => \cout_reg[12]_i_1_n_0\,
      CO(2) => \cout_reg[12]_i_1_n_1\,
      CO(1) => \cout_reg[12]_i_1_n_2\,
      CO(0) => \cout_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cout_reg[12]_i_1_n_4\,
      O(2) => \cout_reg[12]_i_1_n_5\,
      O(1) => \cout_reg[12]_i_1_n_6\,
      O(0) => \cout_reg[12]_i_1_n_7\,
      S(3 downto 0) => \cout_reg__0\(15 downto 12)
    );
\cout_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[12]_i_1_n_6\,
      Q => \cout_reg__0\(13),
      R => new_set
    );
\cout_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[12]_i_1_n_5\,
      Q => \cout_reg__0\(14),
      R => new_set
    );
\cout_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[12]_i_1_n_4\,
      Q => \cout_reg__0\(15),
      R => new_set
    );
\cout_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[16]_i_1_n_7\,
      Q => \cout_reg__0\(16),
      R => new_set
    );
\cout_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cout_reg[12]_i_1_n_0\,
      CO(3) => \cout_reg[16]_i_1_n_0\,
      CO(2) => \cout_reg[16]_i_1_n_1\,
      CO(1) => \cout_reg[16]_i_1_n_2\,
      CO(0) => \cout_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cout_reg[16]_i_1_n_4\,
      O(2) => \cout_reg[16]_i_1_n_5\,
      O(1) => \cout_reg[16]_i_1_n_6\,
      O(0) => \cout_reg[16]_i_1_n_7\,
      S(3 downto 0) => \cout_reg__0\(19 downto 16)
    );
\cout_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[16]_i_1_n_6\,
      Q => \cout_reg__0\(17),
      R => new_set
    );
\cout_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[16]_i_1_n_5\,
      Q => \cout_reg__0\(18),
      R => new_set
    );
\cout_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[16]_i_1_n_4\,
      Q => \cout_reg__0\(19),
      R => new_set
    );
\cout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[0]_i_2_n_6\,
      Q => cout_reg(1),
      R => new_set
    );
\cout_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[20]_i_1_n_7\,
      Q => \cout_reg__0\(20),
      R => new_set
    );
\cout_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cout_reg[16]_i_1_n_0\,
      CO(3) => \cout_reg[20]_i_1_n_0\,
      CO(2) => \cout_reg[20]_i_1_n_1\,
      CO(1) => \cout_reg[20]_i_1_n_2\,
      CO(0) => \cout_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cout_reg[20]_i_1_n_4\,
      O(2) => \cout_reg[20]_i_1_n_5\,
      O(1) => \cout_reg[20]_i_1_n_6\,
      O(0) => \cout_reg[20]_i_1_n_7\,
      S(3 downto 0) => \cout_reg__0\(23 downto 20)
    );
\cout_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[20]_i_1_n_6\,
      Q => \cout_reg__0\(21),
      R => new_set
    );
\cout_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[20]_i_1_n_5\,
      Q => \cout_reg__0\(22),
      R => new_set
    );
\cout_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[20]_i_1_n_4\,
      Q => \cout_reg__0\(23),
      R => new_set
    );
\cout_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[24]_i_1_n_7\,
      Q => \cout_reg__0\(24),
      R => new_set
    );
\cout_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cout_reg[20]_i_1_n_0\,
      CO(3) => \cout_reg[24]_i_1_n_0\,
      CO(2) => \cout_reg[24]_i_1_n_1\,
      CO(1) => \cout_reg[24]_i_1_n_2\,
      CO(0) => \cout_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cout_reg[24]_i_1_n_4\,
      O(2) => \cout_reg[24]_i_1_n_5\,
      O(1) => \cout_reg[24]_i_1_n_6\,
      O(0) => \cout_reg[24]_i_1_n_7\,
      S(3 downto 0) => \cout_reg__0\(27 downto 24)
    );
\cout_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[24]_i_1_n_6\,
      Q => \cout_reg__0\(25),
      R => new_set
    );
\cout_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[24]_i_1_n_5\,
      Q => \cout_reg__0\(26),
      R => new_set
    );
\cout_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[24]_i_1_n_4\,
      Q => \cout_reg__0\(27),
      R => new_set
    );
\cout_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[28]_i_1_n_7\,
      Q => \cout_reg__0\(28),
      R => new_set
    );
\cout_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cout_reg[24]_i_1_n_0\,
      CO(3) => \NLW_cout_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cout_reg[28]_i_1_n_1\,
      CO(1) => \cout_reg[28]_i_1_n_2\,
      CO(0) => \cout_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cout_reg[28]_i_1_n_4\,
      O(2) => \cout_reg[28]_i_1_n_5\,
      O(1) => \cout_reg[28]_i_1_n_6\,
      O(0) => \cout_reg[28]_i_1_n_7\,
      S(3 downto 0) => \cout_reg__0\(31 downto 28)
    );
\cout_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[28]_i_1_n_6\,
      Q => \cout_reg__0\(29),
      R => new_set
    );
\cout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[0]_i_2_n_5\,
      Q => \cout_reg__0\(2),
      R => new_set
    );
\cout_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[28]_i_1_n_5\,
      Q => \cout_reg__0\(30),
      R => new_set
    );
\cout_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[28]_i_1_n_4\,
      Q => \cout_reg__0\(31),
      R => new_set
    );
\cout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[0]_i_2_n_4\,
      Q => \cout_reg__0\(3),
      R => new_set
    );
\cout_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[4]_i_1_n_7\,
      Q => \cout_reg__0\(4),
      R => new_set
    );
\cout_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cout_reg[0]_i_2_n_0\,
      CO(3) => \cout_reg[4]_i_1_n_0\,
      CO(2) => \cout_reg[4]_i_1_n_1\,
      CO(1) => \cout_reg[4]_i_1_n_2\,
      CO(0) => \cout_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cout_reg[4]_i_1_n_4\,
      O(2) => \cout_reg[4]_i_1_n_5\,
      O(1) => \cout_reg[4]_i_1_n_6\,
      O(0) => \cout_reg[4]_i_1_n_7\,
      S(3 downto 0) => \cout_reg__0\(7 downto 4)
    );
\cout_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[4]_i_1_n_6\,
      Q => \cout_reg__0\(5),
      R => new_set
    );
\cout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[4]_i_1_n_5\,
      Q => \cout_reg__0\(6),
      R => new_set
    );
\cout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[4]_i_1_n_4\,
      Q => \cout_reg__0\(7),
      R => new_set
    );
\cout_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[8]_i_1_n_7\,
      Q => \cout_reg__0\(8),
      R => new_set
    );
\cout_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cout_reg[4]_i_1_n_0\,
      CO(3) => \cout_reg[8]_i_1_n_0\,
      CO(2) => \cout_reg[8]_i_1_n_1\,
      CO(1) => \cout_reg[8]_i_1_n_2\,
      CO(0) => \cout_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cout_reg[8]_i_1_n_4\,
      O(2) => \cout_reg[8]_i_1_n_5\,
      O(1) => \cout_reg[8]_i_1_n_6\,
      O(0) => \cout_reg[8]_i_1_n_7\,
      S(3 downto 0) => \cout_reg__0\(11 downto 8)
    );
\cout_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => out_ready_0(1),
      D => \cout_reg[8]_i_1_n_6\,
      Q => \cout_reg__0\(9),
      R => new_set
    );
\out_2[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => input_10(8),
      I1 => \out_2[1]_INST_0_i_1_n_0\,
      I2 => \out_2[1]_INST_0_i_2_n_0\,
      I3 => \out_2[1]_INST_0_i_3_n_0\,
      I4 => \cout_reg__0\(2),
      I5 => \out_2[0]_INST_0_i_1_n_0\,
      O => out_2(0)
    );
\out_2[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_10(6),
      I1 => input_10(2),
      I2 => cout_reg(0),
      I3 => input_10(4),
      I4 => cout_reg(1),
      I5 => input_10(0),
      O => \out_2[0]_INST_0_i_1_n_0\
    );
\out_2[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => input_10(9),
      I1 => \out_2[1]_INST_0_i_1_n_0\,
      I2 => \out_2[1]_INST_0_i_2_n_0\,
      I3 => \out_2[1]_INST_0_i_3_n_0\,
      I4 => \cout_reg__0\(2),
      I5 => \out_2[1]_INST_0_i_4_n_0\,
      O => out_2(1)
    );
\out_2[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \out_2[1]_INST_0_i_5_n_0\,
      I1 => \cout_reg__0\(23),
      I2 => \cout_reg__0\(22),
      I3 => \cout_reg__0\(25),
      I4 => \cout_reg__0\(24),
      I5 => \out_2[1]_INST_0_i_6_n_0\,
      O => \out_2[1]_INST_0_i_1_n_0\
    );
\out_2[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cout_reg__0\(8),
      I1 => \cout_reg__0\(9),
      I2 => \cout_reg__0\(6),
      I3 => \cout_reg__0\(7),
      I4 => \out_2[1]_INST_0_i_7_n_0\,
      O => \out_2[1]_INST_0_i_2_n_0\
    );
\out_2[1]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cout_reg__0\(16),
      I1 => \cout_reg__0\(17),
      I2 => \cout_reg__0\(14),
      I3 => \cout_reg__0\(15),
      I4 => \out_2[1]_INST_0_i_8_n_0\,
      O => \out_2[1]_INST_0_i_3_n_0\
    );
\out_2[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_10(7),
      I1 => input_10(3),
      I2 => cout_reg(0),
      I3 => input_10(5),
      I4 => cout_reg(1),
      I5 => input_10(1),
      O => \out_2[1]_INST_0_i_4_n_0\
    );
\out_2[1]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cout_reg__0\(27),
      I1 => \cout_reg__0\(26),
      I2 => \cout_reg__0\(29),
      I3 => \cout_reg__0\(28),
      O => \out_2[1]_INST_0_i_5_n_0\
    );
\out_2[1]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cout_reg__0\(3),
      I1 => \cout_reg__0\(30),
      I2 => \cout_reg__0\(31),
      I3 => \cout_reg__0\(5),
      I4 => \cout_reg__0\(4),
      O => \out_2[1]_INST_0_i_6_n_0\
    );
\out_2[1]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cout_reg__0\(11),
      I1 => \cout_reg__0\(10),
      I2 => \cout_reg__0\(13),
      I3 => \cout_reg__0\(12),
      O => \out_2[1]_INST_0_i_7_n_0\
    );
\out_2[1]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cout_reg__0\(19),
      I1 => \cout_reg__0\(18),
      I2 => \cout_reg__0\(21),
      I3 => \cout_reg__0\(20),
      O => \out_2[1]_INST_0_i_8_n_0\
    );
\out_ready[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \out_ready[1]_i_2_n_0\,
      I1 => \out_2[1]_INST_0_i_1_n_0\,
      I2 => \out_2[1]_INST_0_i_2_n_0\,
      I3 => \out_2[1]_INST_0_i_3_n_0\,
      I4 => \cout_reg__0\(2),
      I5 => new_set,
      O => \out_ready[1]_i_1_n_0\
    );
\out_ready[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cout_reg(0),
      I1 => cout_reg(1),
      O => \out_ready[1]_i_2_n_0\
    );
\out_ready_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \out_ready[1]_i_1_n_0\,
      Q => out_ready(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    input_10 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    new_set : in STD_LOGIC;
    out_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_ready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_b10_to_2b_0_0,b10_to_2b,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "b10_to_2b,Vivado 2018.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^out_ready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_second_clk";
begin
  out_ready(1) <= \^out_ready\(0);
  out_ready(0) <= \^out_ready\(0);
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_b10_to_2b
     port map (
      clk => clk,
      input_10(9 downto 0) => input_10(9 downto 0),
      new_set => new_set,
      out_2(1 downto 0) => out_2(1 downto 0),
      out_ready(0) => \^out_ready\(0)
    );
end STRUCTURE;
