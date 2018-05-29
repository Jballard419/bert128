-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Mon May 14 15:09:13 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_oversample_8x_0_0_sim_netlist.vhdl
-- Design      : design_1_oversample_8x_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_oversample_8x is
  port (
    dout_rdy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 19 downto 0 );
    clk0 : in STD_LOGIC;
    sdat_0_dly : in STD_LOGIC;
    sdatb_45_dly : in STD_LOGIC;
    clk90 : in STD_LOGIC;
    C : in STD_LOGIC;
    clk90_0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_oversample_8x;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_oversample_8x is
  signal a1 : STD_LOGIC;
  signal a2 : STD_LOGIC;
  signal a3 : STD_LOGIC;
  signal b1 : STD_LOGIC;
  signal b2 : STD_LOGIC;
  signal b3 : STD_LOGIC;
  signal c1 : STD_LOGIC;
  signal c2 : STD_LOGIC;
  signal c3 : STD_LOGIC;
  signal d1 : STD_LOGIC;
  signal d2 : STD_LOGIC;
  signal d3 : STD_LOGIC;
  signal \dout[19]_i_1_n_0\ : STD_LOGIC;
  signal dout_rdy0 : STD_LOGIC;
  signal e1 : STD_LOGIC;
  signal e2 : STD_LOGIC;
  signal e3 : STD_LOGIC;
  signal f1 : STD_LOGIC;
  signal f2 : STD_LOGIC;
  signal f3 : STD_LOGIC;
  signal g1 : STD_LOGIC;
  signal g2 : STD_LOGIC;
  signal g3 : STD_LOGIC;
  signal h1 : STD_LOGIC;
  signal h2 : STD_LOGIC;
  signal h3 : STD_LOGIC;
  signal instage_dout0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal period : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of period : signal is "true";
  signal samples_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal samples_00 : STD_LOGIC;
  signal samples_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal samples_10 : STD_LOGIC;
  signal samples_2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \samples_2[1]_i_1_n_0\ : STD_LOGIC;
  signal \samples_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \samples_2[5]_i_1_n_0\ : STD_LOGIC;
  attribute IOB : string;
  attribute IOB of a1FF : label is "FALSE";
  attribute IS_PRE_INVERTED : string;
  attribute IS_PRE_INVERTED of a1FF : label is "1'b0";
  attribute RLOC : string;
  attribute RLOC of a1FF : label is "X1Y1";
  attribute box_type : string;
  attribute box_type of a1FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of a2FF : label is "1'b0";
  attribute box_type of a2FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of a3FF : label is "1'b0";
  attribute box_type of a3FF : label is "PRIMITIVE";
  attribute IOB of b1FF : label is "FALSE";
  attribute IS_PRE_INVERTED of b1FF : label is "1'b0";
  attribute RLOC of b1FF : label is "X1Y1";
  attribute box_type of b1FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of b2FF : label is "1'b0";
  attribute box_type of b2FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of b3FF : label is "1'b0";
  attribute box_type of b3FF : label is "PRIMITIVE";
  attribute IOB of c1FF : label is "FALSE";
  attribute IS_PRE_INVERTED of c1FF : label is "1'b0";
  attribute RLOC of c1FF : label is "X1Y0";
  attribute box_type of c1FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of c2FF : label is "1'b0";
  attribute box_type of c2FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of c3FF : label is "1'b0";
  attribute box_type of c3FF : label is "PRIMITIVE";
  attribute IOB of d1FF : label is "FALSE";
  attribute IS_PRE_INVERTED of d1FF : label is "1'b0";
  attribute RLOC of d1FF : label is "X1Y0";
  attribute box_type of d1FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of d2FF : label is "1'b0";
  attribute box_type of d2FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of d3FF : label is "1'b0";
  attribute box_type of d3FF : label is "PRIMITIVE";
  attribute IOB of e1FF : label is "FALSE";
  attribute IS_PRE_INVERTED of e1FF : label is "1'b0";
  attribute RLOC of e1FF : label is "X0Y1";
  attribute box_type of e1FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of e2FF : label is "1'b0";
  attribute box_type of e2FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of e3FF : label is "1'b0";
  attribute box_type of e3FF : label is "PRIMITIVE";
  attribute IOB of f1FF : label is "FALSE";
  attribute IS_PRE_INVERTED of f1FF : label is "1'b0";
  attribute RLOC of f1FF : label is "X0Y1";
  attribute box_type of f1FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of f2FF : label is "1'b0";
  attribute box_type of f2FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of f3FF : label is "1'b0";
  attribute box_type of f3FF : label is "PRIMITIVE";
  attribute IOB of g1FF : label is "FALSE";
  attribute IS_PRE_INVERTED of g1FF : label is "1'b0";
  attribute RLOC of g1FF : label is "X0Y0";
  attribute box_type of g1FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of g2FF : label is "1'b0";
  attribute box_type of g2FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of g3FF : label is "1'b0";
  attribute box_type of g3FF : label is "PRIMITIVE";
  attribute IOB of h1FF : label is "FALSE";
  attribute IS_PRE_INVERTED of h1FF : label is "1'b0";
  attribute RLOC of h1FF : label is "X0Y0";
  attribute box_type of h1FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of h2FF : label is "1'b0";
  attribute box_type of h2FF : label is "PRIMITIVE";
  attribute IS_PRE_INVERTED of h3FF : label is "1'b0";
  attribute box_type of h3FF : label is "PRIMITIVE";
  attribute KEEP : string;
  attribute KEEP of \period_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \period_reg[0]\ : label is "no";
  attribute KEEP of \period_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \period_reg[1]\ : label is "no";
  attribute KEEP of \period_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \period_reg[2]\ : label is "no";
  attribute KEEP of \period_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \period_reg[3]\ : label is "no";
  attribute KEEP of \period_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \period_reg[4]\ : label is "no";
begin
a1FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => '0',
      D => sdat_0_dly,
      Q => a1
    );
a2FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => '0',
      D => a1,
      Q => a2
    );
a3FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => '0',
      D => a2,
      Q => a3
    );
b1FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => '0',
      D => sdatb_45_dly,
      Q => b1
    );
b2FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => '0',
      D => b1,
      Q => b2
    );
b3FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => '0',
      D => b2,
      Q => b3
    );
c1FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk90,
      CE => '1',
      CLR => '0',
      D => sdat_0_dly,
      Q => c1
    );
c2FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => '0',
      D => c1,
      Q => c2
    );
c3FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => '0',
      D => c2,
      Q => c3
    );
d1FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk90,
      CE => '1',
      CLR => '0',
      D => sdatb_45_dly,
      Q => d1
    );
d2FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => '0',
      D => d1,
      Q => d2
    );
d3FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => '0',
      D => d2,
      Q => d3
    );
\dout[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_0(0),
      I1 => period(3),
      I2 => samples_2(4),
      O => p_1_in(0)
    );
\dout[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_1(2),
      I1 => period(3),
      I2 => samples_0(6),
      O => p_1_in(10)
    );
\dout[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_1(3),
      I1 => period(3),
      I2 => samples_0(7),
      O => p_1_in(11)
    );
\dout[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_1(4),
      I1 => period(3),
      I2 => samples_1(0),
      O => p_1_in(12)
    );
\dout[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_1(5),
      I1 => period(3),
      I2 => samples_1(1),
      O => p_1_in(13)
    );
\dout[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_1(6),
      I1 => period(3),
      I2 => samples_1(2),
      O => p_1_in(14)
    );
\dout[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_1(7),
      I1 => period(3),
      I2 => samples_1(3),
      O => p_1_in(15)
    );
\dout[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_2(0),
      I1 => period(3),
      I2 => samples_1(4),
      O => p_1_in(16)
    );
\dout[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_2(1),
      I1 => period(3),
      I2 => samples_1(5),
      O => p_1_in(17)
    );
\dout[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_2(2),
      I1 => period(3),
      I2 => samples_1(6),
      O => p_1_in(18)
    );
\dout[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => period(3),
      I1 => period(0),
      O => \dout[19]_i_1_n_0\
    );
\dout[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_2(3),
      I1 => period(3),
      I2 => samples_1(7),
      O => p_1_in(19)
    );
\dout[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_0(1),
      I1 => period(3),
      I2 => samples_2(5),
      O => p_1_in(1)
    );
\dout[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_0(2),
      I1 => period(3),
      I2 => samples_2(6),
      O => p_1_in(2)
    );
\dout[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_0(3),
      I1 => period(3),
      I2 => samples_2(7),
      O => p_1_in(3)
    );
\dout[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_0(4),
      I1 => period(3),
      I2 => samples_0(0),
      O => p_1_in(4)
    );
\dout[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_0(5),
      I1 => period(3),
      I2 => samples_0(1),
      O => p_1_in(5)
    );
\dout[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_0(6),
      I1 => period(3),
      I2 => samples_0(2),
      O => p_1_in(6)
    );
\dout[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_0(7),
      I1 => period(3),
      I2 => samples_0(3),
      O => p_1_in(7)
    );
\dout[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_1(0),
      I1 => period(3),
      I2 => samples_0(4),
      O => p_1_in(8)
    );
\dout[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => samples_1(1),
      I1 => period(3),
      I2 => samples_0(5),
      O => p_1_in(9)
    );
dout_rdy_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => period(4),
      I1 => period(2),
      O => dout_rdy0
    );
dout_rdy_reg: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => '1',
      D => dout_rdy0,
      Q => dout_rdy,
      R => '0'
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(0),
      Q => dout(0),
      R => '0'
    );
\dout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(10),
      Q => dout(10),
      R => '0'
    );
\dout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(11),
      Q => dout(11),
      R => '0'
    );
\dout_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(12),
      Q => dout(12),
      R => '0'
    );
\dout_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(13),
      Q => dout(13),
      R => '0'
    );
\dout_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(14),
      Q => dout(14),
      R => '0'
    );
\dout_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(15),
      Q => dout(15),
      R => '0'
    );
\dout_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(16),
      Q => dout(16),
      R => '0'
    );
\dout_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(17),
      Q => dout(17),
      R => '0'
    );
\dout_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(18),
      Q => dout(18),
      R => '0'
    );
\dout_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(19),
      Q => dout(19),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(1),
      Q => dout(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(2),
      Q => dout(2),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(3),
      Q => dout(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(4),
      Q => dout(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(5),
      Q => dout(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(6),
      Q => dout(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(7),
      Q => dout(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(8),
      Q => dout(8),
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk0,
      CE => \dout[19]_i_1_n_0\,
      D => p_1_in(9),
      Q => dout(9),
      R => '0'
    );
e1FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => C,
      CE => '1',
      CLR => '0',
      D => sdat_0_dly,
      Q => e1
    );
e2FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => C,
      CE => '1',
      CLR => '0',
      D => e1,
      Q => e2
    );
e3FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => '0',
      D => e2,
      Q => e3
    );
f1FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => C,
      CE => '1',
      CLR => '0',
      D => sdatb_45_dly,
      Q => f1
    );
f2FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => C,
      CE => '1',
      CLR => '0',
      D => f1,
      Q => f2
    );
f3FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => '0',
      D => f2,
      Q => f3
    );
g1FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk90_0,
      CE => '1',
      CLR => '0',
      D => sdat_0_dly,
      Q => g1
    );
g2FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => C,
      CE => '1',
      CLR => '0',
      D => g1,
      Q => g2
    );
g3FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => '0',
      D => g2,
      Q => g3
    );
h1FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk90_0,
      CE => '1',
      CLR => '0',
      D => sdatb_45_dly,
      Q => h1
    );
h2FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => C,
      CE => '1',
      CLR => '0',
      D => h1,
      Q => h2
    );
h3FF: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      CLR => '0',
      D => h2,
      Q => h3
    );
\period_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk0,
      CE => '1',
      D => period(4),
      Q => period(0),
      R => '0'
    );
\period_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      D => period(0),
      Q => period(1),
      R => '0'
    );
\period_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      D => period(1),
      Q => period(2),
      R => '0'
    );
\period_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      D => period(2),
      Q => period(3),
      R => '0'
    );
\period_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => '1',
      D => period(3),
      Q => period(4),
      R => '0'
    );
\samples_0[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => period(0),
      I1 => period(3),
      O => samples_00
    );
\samples_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_00,
      D => a3,
      Q => samples_0(0),
      R => '0'
    );
\samples_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_00,
      D => \samples_2[1]_i_1_n_0\,
      Q => samples_0(1),
      R => '0'
    );
\samples_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_00,
      D => c3,
      Q => samples_0(2),
      R => '0'
    );
\samples_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_00,
      D => \samples_2[3]_i_1_n_0\,
      Q => samples_0(3),
      R => '0'
    );
\samples_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_00,
      D => e3,
      Q => samples_0(4),
      R => '0'
    );
\samples_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_00,
      D => \samples_2[5]_i_1_n_0\,
      Q => samples_0(5),
      R => '0'
    );
\samples_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_00,
      D => g3,
      Q => samples_0(6),
      R => '0'
    );
\samples_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_00,
      D => instage_dout0,
      Q => samples_0(7),
      R => '0'
    );
\samples_1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => period(1),
      I1 => period(4),
      O => samples_10
    );
\samples_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_10,
      D => a3,
      Q => samples_1(0),
      R => '0'
    );
\samples_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_10,
      D => \samples_2[1]_i_1_n_0\,
      Q => samples_1(1),
      R => '0'
    );
\samples_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_10,
      D => c3,
      Q => samples_1(2),
      R => '0'
    );
\samples_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_10,
      D => \samples_2[3]_i_1_n_0\,
      Q => samples_1(3),
      R => '0'
    );
\samples_1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_10,
      D => e3,
      Q => samples_1(4),
      R => '0'
    );
\samples_1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_10,
      D => \samples_2[5]_i_1_n_0\,
      Q => samples_1(5),
      R => '0'
    );
\samples_1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_10,
      D => g3,
      Q => samples_1(6),
      R => '0'
    );
\samples_1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => samples_10,
      D => instage_dout0,
      Q => samples_1(7),
      R => '0'
    );
\samples_2[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b3,
      O => \samples_2[1]_i_1_n_0\
    );
\samples_2[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => d3,
      O => \samples_2[3]_i_1_n_0\
    );
\samples_2[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => f3,
      O => \samples_2[5]_i_1_n_0\
    );
\samples_2[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h3,
      O => instage_dout0
    );
\samples_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => period(2),
      D => a3,
      Q => samples_2(0),
      R => '0'
    );
\samples_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => period(2),
      D => \samples_2[1]_i_1_n_0\,
      Q => samples_2(1),
      R => '0'
    );
\samples_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => period(2),
      D => c3,
      Q => samples_2(2),
      R => '0'
    );
\samples_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => period(2),
      D => \samples_2[3]_i_1_n_0\,
      Q => samples_2(3),
      R => '0'
    );
\samples_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => period(2),
      D => e3,
      Q => samples_2(4),
      R => '0'
    );
\samples_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => period(2),
      D => \samples_2[5]_i_1_n_0\,
      Q => samples_2(5),
      R => '0'
    );
\samples_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => period(2),
      D => g3,
      Q => samples_2(6),
      R => '0'
    );
\samples_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk0,
      CE => period(2),
      D => instage_dout0,
      Q => samples_2(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk0 : in STD_LOGIC;
    clk90 : in STD_LOGIC;
    sdat_0_dly : in STD_LOGIC;
    sdatb_45_dly : in STD_LOGIC;
    dout_rdy : out STD_LOGIC;
    rst : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_oversample_8x_0_0,oversample_8x,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "oversample_8x,Vivado 2018.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal C : STD_LOGIC;
  signal g1FF_i_1_n_0 : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_oversample_8x
     port map (
      C => C,
      clk0 => clk0,
      clk90 => clk90,
      clk90_0 => g1FF_i_1_n_0,
      dout(19 downto 0) => dout(19 downto 0),
      dout_rdy => dout_rdy,
      sdat_0_dly => sdat_0_dly,
      sdatb_45_dly => sdatb_45_dly
    );
e1FF_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk0,
      O => C
    );
g1FF_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk90,
      O => g1FF_i_1_n_0
    );
end STRUCTURE;
