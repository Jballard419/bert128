-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Mon May 14 15:14:02 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_os48_1011x20bTo10b_top2_0_0/design_1_os48_1011x20bTo10b_top2_0_0_sim_netlist.vhdl
-- Design      : design_1_os48_1011x20bTo10b_top2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \doutMux_reg[1][5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \we_d_reg[0][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e is
  signal din_i : STD_LOGIC;
  signal \dout_i_1__9_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \ff[1]_i_3__4_n_0\ : STD_LOGIC;
  signal \ff[1]_i_4_n_0\ : STD_LOGIC;
begin
\dout_i_1__9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__9_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \dout_i_1__9_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => B_en,
      I2 => \we_d_reg[0][1]\(0),
      I3 => ff(0),
      O => \ff[0]_i_1__0_n_0\
    );
\ff[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => B_en,
      I2 => \we_d_reg[0][1]\(1),
      I3 => ff(1),
      O => \ff[1]_i_1__0_n_0\
    );
\ff[1]_i_3__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500C5C50500C0C0"
    )
        port map (
      I0 => Q(3),
      I1 => \doutMux_reg[1][5]\(2),
      I2 => Q(1),
      I3 => \doutMux_reg[1][5]\(4),
      I4 => Q(2),
      I5 => \doutMux_reg[1][5]\(0),
      O => \ff[1]_i_3__4_n_0\
    );
\ff[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500C5C50500C0C0"
    )
        port map (
      I0 => Q(3),
      I1 => \doutMux_reg[1][5]\(3),
      I2 => Q(1),
      I3 => \doutMux_reg[1][5]\(5),
      I4 => Q(2),
      I5 => \doutMux_reg[1][5]\(1),
      O => \ff[1]_i_4_n_0\
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[0]_i_1__0_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[1]_i_1__0_n_0\,
      Q => ff(1),
      R => rst
    );
\ff_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ff[1]_i_3__4_n_0\,
      I1 => \ff[1]_i_4_n_0\,
      O => din_i,
      S => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ff_reg[0]_0\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_recclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \we_d_reg[1][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_1 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_1;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_1 is
  signal \dout_i_1__10_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \ff[1]_i_3__3_n_0\ : STD_LOGIC;
  signal \^ff_reg[0]_0\ : STD_LOGIC;
begin
  \ff_reg[0]_0\ <= \^ff_reg[0]_0\;
\dout_i_1__10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__10_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \dout_i_1__10_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \^ff_reg[0]_0\,
      I1 => Q(0),
      I2 => \ff[1]_i_3__3_n_0\,
      I3 => B_en,
      I4 => \we_d_reg[1][1]\(0),
      I5 => ff(0),
      O => \ff[0]_i_1_n_0\
    );
\ff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \^ff_reg[0]_0\,
      I1 => Q(0),
      I2 => \ff[1]_i_3__3_n_0\,
      I3 => B_en,
      I4 => \we_d_reg[1][1]\(1),
      I5 => ff(1),
      O => \ff[1]_i_1_n_0\
    );
\ff[1]_i_2__10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C000C0FCBB3088"
    )
        port map (
      I0 => \doutMux_reg[1][5]\(0),
      I1 => Q(3),
      I2 => \doutMux_reg[1][5]\(4),
      I3 => Q(1),
      I4 => \doutMux_reg[1][5]\(2),
      I5 => Q(2),
      O => \^ff_reg[0]_0\
    );
\ff[1]_i_3__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AD08E5E5AD084040"
    )
        port map (
      I0 => Q(3),
      I1 => \doutMux_reg[1][5]\(3),
      I2 => Q(1),
      I3 => \doutMux_reg[1][5]\(5),
      I4 => Q(2),
      I5 => \doutMux_reg[1][5]\(1),
      O => \ff[1]_i_3__3_n_0\
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[0]_i_1_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[1]_i_1_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_11 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    A_en : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][1]\ : in STD_LOGIC;
    \bitSel_d_reg[0][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \doutMux_reg[1][2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_11 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_11;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_11 is
  signal din_i : STD_LOGIC;
  signal dout_i_1_n_0 : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1_n_0\ : STD_LOGIC;
begin
dout_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => dout_i_1_n_0
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => dout_i_1_n_0,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => Q(0),
      I3 => ff(0),
      O => \ff[0]_i_1_n_0\
    );
\ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => Q(1),
      I3 => ff(1),
      O => \ff[1]_i_1_n_0\
    );
\ff[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000200F20002"
    )
        port map (
      I0 => \doutMux_reg[1][1]\,
      I1 => \bitSel_d_reg[0][3]\(3),
      I2 => \bitSel_d_reg[0][3]\(1),
      I3 => \bitSel_d_reg[0][3]\(2),
      I4 => \doutMux_reg[1][2]\(0),
      I5 => \bitSel_d_reg[0][3]\(0),
      O => din_i
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[0]_i_1_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[1]_i_1_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_12 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ff_reg[0]_0\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    A_en : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \bitSel_d_reg[0][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \we_d_reg[1][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_12 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_12;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_12 is
  signal din_i : STD_LOGIC;
  signal \dout_i_1__0_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \^ff_reg[0]_0\ : STD_LOGIC;
begin
  \ff_reg[0]_0\ <= \^ff_reg[0]_0\;
\dout_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__0_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \dout_i_1__0_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[1][1]\(0),
      I3 => ff(0),
      O => \ff[0]_i_1_n_0\
    );
\ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[1][1]\(1),
      I3 => ff(1),
      O => \ff[1]_i_1_n_0\
    );
\ff[1]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F00088F0"
    )
        port map (
      I0 => \doutMux_reg[1][2]\(0),
      I1 => \bitSel_d_reg[0][3]\(0),
      I2 => \^ff_reg[0]_0\,
      I3 => \bitSel_d_reg[0][3]\(3),
      I4 => \bitSel_d_reg[0][3]\(1),
      I5 => \bitSel_d_reg[0][3]\(2),
      O => din_i
    );
\ff[1]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \doutMux_reg[1][2]\(2),
      I1 => \bitSel_d_reg[0][3]\(0),
      I2 => \doutMux_reg[1][2]\(1),
      O => \^ff_reg[0]_0\
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[0]_i_1_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[1]_i_1_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_13 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ff_reg[0]_0\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    A_en : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    \bitSel_d_reg[0][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \doutMux_reg[1][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \we_d_reg[2][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_13 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_13;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_13 is
  signal din_i : STD_LOGIC;
  signal \dout_i_1__1_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \^ff_reg[0]_0\ : STD_LOGIC;
begin
  \ff_reg[0]_0\ <= \^ff_reg[0]_0\;
\dout_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__1_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \dout_i_1__1_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[2][1]\(0),
      I3 => ff(0),
      O => \ff[0]_i_1_n_0\
    );
\ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[2][1]\(1),
      I3 => ff(1),
      O => \ff[1]_i_1_n_0\
    );
\ff[1]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002000E300200020"
    )
        port map (
      I0 => \^ff_reg[0]_0\,
      I1 => \bitSel_d_reg[0][3]\(1),
      I2 => \bitSel_d_reg[0][3]\(3),
      I3 => \bitSel_d_reg[0][3]\(2),
      I4 => \bitSel_d_reg[0][3]\(0),
      I5 => \doutMux_reg[1][2]\(2),
      O => din_i
    );
\ff[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \doutMux_reg[1][2]\(1),
      I1 => \bitSel_d_reg[0][3]\(0),
      I2 => \doutMux_reg[1][2]\(0),
      O => \^ff_reg[0]_0\
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[0]_i_1_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[1]_i_1_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_14 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    A_en : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][2]\ : in STD_LOGIC;
    \bitSel_d_reg[0][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \doutMux_reg[1][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \we_d_reg[3][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_14 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_14;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_14 is
  signal din_i : STD_LOGIC;
  signal \dout_i_1__2_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1_n_0\ : STD_LOGIC;
begin
\dout_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__2_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \dout_i_1__2_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[3][1]\(0),
      I3 => ff(0),
      O => \ff[0]_i_1_n_0\
    );
\ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[3][1]\(1),
      I3 => ff(1),
      O => \ff[1]_i_1_n_0\
    );
\ff[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C20002000200020"
    )
        port map (
      I0 => \doutMux_reg[1][2]\,
      I1 => \bitSel_d_reg[0][3]\(2),
      I2 => \bitSel_d_reg[0][3]\(3),
      I3 => \bitSel_d_reg[0][3]\(1),
      I4 => \bitSel_d_reg[0][3]\(0),
      I5 => \doutMux_reg[1][0]\(0),
      O => din_i
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[0]_i_1_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[1]_i_1_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_15 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    A_en : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bitSel_d_reg[0][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \doutMux_reg[1][1]\ : in STD_LOGIC;
    \we_d_reg[4][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_15 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_15;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_15 is
  signal din_i : STD_LOGIC;
  signal \dout_i_1__3_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1_n_0\ : STD_LOGIC;
begin
\dout_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__3_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \dout_i_1__3_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[4][1]\(0),
      I3 => ff(0),
      O => \ff[0]_i_1_n_0\
    );
\ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[4][1]\(1),
      I3 => ff(1),
      O => \ff[1]_i_1_n_0\
    );
\ff[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000002200"
    )
        port map (
      I0 => \doutMux_reg[1][2]\(0),
      I1 => \bitSel_d_reg[0][3]\(0),
      I2 => \doutMux_reg[1][1]\,
      I3 => \bitSel_d_reg[0][3]\(3),
      I4 => \bitSel_d_reg[0][3]\(2),
      I5 => \bitSel_d_reg[0][3]\(1),
      O => din_i
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[0]_i_1_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[1]_i_1_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_16 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    A_en : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][1]\ : in STD_LOGIC;
    \bitSel_d_reg[1][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \doutMux_reg[1][2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \we_d_reg[5][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_16 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_16;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_16 is
  signal din_i : STD_LOGIC;
  signal \dout_i_1__4_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1_n_0\ : STD_LOGIC;
begin
\dout_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__4_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \dout_i_1__4_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[5][1]\(0),
      I3 => ff(0),
      O => \ff[0]_i_1_n_0\
    );
\ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[5][1]\(1),
      I3 => ff(1),
      O => \ff[1]_i_1_n_0\
    );
\ff[1]_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000200F20002"
    )
        port map (
      I0 => \doutMux_reg[1][1]\,
      I1 => \bitSel_d_reg[1][3]\(3),
      I2 => \bitSel_d_reg[1][3]\(1),
      I3 => \bitSel_d_reg[1][3]\(2),
      I4 => \doutMux_reg[1][2]\(0),
      I5 => \bitSel_d_reg[1][3]\(0),
      O => din_i
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[0]_i_1_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[1]_i_1_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_17 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ff_reg[0]_0\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    A_en : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \bitSel_d_reg[1][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \we_d_reg[6][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_17 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_17;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_17 is
  signal din_i : STD_LOGIC;
  signal \dout_i_1__5_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \^ff_reg[0]_0\ : STD_LOGIC;
begin
  \ff_reg[0]_0\ <= \^ff_reg[0]_0\;
\dout_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__5_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \dout_i_1__5_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[6][1]\(0),
      I3 => ff(0),
      O => \ff[0]_i_1_n_0\
    );
\ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[6][1]\(1),
      I3 => ff(1),
      O => \ff[1]_i_1_n_0\
    );
\ff[1]_i_2__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F00088F0"
    )
        port map (
      I0 => \doutMux_reg[1][2]\(0),
      I1 => \bitSel_d_reg[1][3]\(0),
      I2 => \^ff_reg[0]_0\,
      I3 => \bitSel_d_reg[1][3]\(3),
      I4 => \bitSel_d_reg[1][3]\(1),
      I5 => \bitSel_d_reg[1][3]\(2),
      O => din_i
    );
\ff[1]_i_3__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \doutMux_reg[1][2]\(2),
      I1 => \bitSel_d_reg[1][3]\(0),
      I2 => \doutMux_reg[1][2]\(1),
      O => \^ff_reg[0]_0\
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[0]_i_1_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[1]_i_1_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_18 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ff_reg[0]_0\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    A_en : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    \bitSel_d_reg[1][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \doutMux_reg[1][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \we_d_reg[7][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_18 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_18;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_18 is
  signal din_i : STD_LOGIC;
  signal \dout_i_1__6_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1_n_0\ : STD_LOGIC;
  signal \^ff_reg[0]_0\ : STD_LOGIC;
begin
  \ff_reg[0]_0\ <= \^ff_reg[0]_0\;
\dout_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__6_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \dout_i_1__6_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[7][1]\(0),
      I3 => ff(0),
      O => \ff[0]_i_1_n_0\
    );
\ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[7][1]\(1),
      I3 => ff(1),
      O => \ff[1]_i_1_n_0\
    );
\ff[1]_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002000E300200020"
    )
        port map (
      I0 => \^ff_reg[0]_0\,
      I1 => \bitSel_d_reg[1][3]\(1),
      I2 => \bitSel_d_reg[1][3]\(3),
      I3 => \bitSel_d_reg[1][3]\(2),
      I4 => \bitSel_d_reg[1][3]\(0),
      I5 => \doutMux_reg[1][2]\(2),
      O => din_i
    );
\ff[1]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \doutMux_reg[1][2]\(1),
      I1 => \bitSel_d_reg[1][3]\(0),
      I2 => \doutMux_reg[1][2]\(0),
      O => \^ff_reg[0]_0\
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[0]_i_1_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[1]_i_1_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_19 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    A_en : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][2]\ : in STD_LOGIC;
    \bitSel_d_reg[1][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \doutMux_reg[1][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \we_d_reg[8][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_19 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_19;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_19 is
  signal din_i : STD_LOGIC;
  signal \dout_i_1__7_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1_n_0\ : STD_LOGIC;
begin
\dout_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__7_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \dout_i_1__7_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[8][1]\(0),
      I3 => ff(0),
      O => \ff[0]_i_1_n_0\
    );
\ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[8][1]\(1),
      I3 => ff(1),
      O => \ff[1]_i_1_n_0\
    );
\ff[1]_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C20002000200020"
    )
        port map (
      I0 => \doutMux_reg[1][2]\,
      I1 => \bitSel_d_reg[1][3]\(2),
      I2 => \bitSel_d_reg[1][3]\(3),
      I3 => \bitSel_d_reg[1][3]\(1),
      I4 => \bitSel_d_reg[1][3]\(0),
      I5 => \doutMux_reg[1][0]\(0),
      O => din_i
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[0]_i_1_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[1]_i_1_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_2 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \doutMux_reg[1][0]\ : in STD_LOGIC;
    \we_d_reg[2][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_2 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_2;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_2 is
  signal \dout_i_1__11_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1__0_n_0\ : STD_LOGIC;
begin
\dout_i_1__11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__11_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \dout_i_1__11_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \doutMux_reg[1][1]\,
      I1 => Q(0),
      I2 => \doutMux_reg[1][0]\,
      I3 => B_en,
      I4 => \we_d_reg[2][1]\(0),
      I5 => ff(0),
      O => \ff[0]_i_1__0_n_0\
    );
\ff[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \doutMux_reg[1][1]\,
      I1 => Q(0),
      I2 => \doutMux_reg[1][0]\,
      I3 => B_en,
      I4 => \we_d_reg[2][1]\(1),
      I5 => ff(1),
      O => \ff[1]_i_1__0_n_0\
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[0]_i_1__0_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[1]_i_1__0_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_20 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    A_en : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bitSel_d_reg[1][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \doutMux_reg[1][1]\ : in STD_LOGIC;
    \we_d_reg[9][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_20 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_20;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_20 is
  signal din_i : STD_LOGIC;
  signal \dout_i_1__8_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1_n_0\ : STD_LOGIC;
begin
\dout_i_1__8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__8_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \dout_i_1__8_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[9][1]\(0),
      I3 => ff(0),
      O => \ff[0]_i_1_n_0\
    );
\ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => A_en,
      I2 => \we_d_reg[9][1]\(1),
      I3 => ff(1),
      O => \ff[1]_i_1_n_0\
    );
\ff[1]_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000002200"
    )
        port map (
      I0 => \doutMux_reg[1][2]\(0),
      I1 => \bitSel_d_reg[1][3]\(0),
      I2 => \doutMux_reg[1][1]\,
      I3 => \bitSel_d_reg[1][3]\(3),
      I4 => \bitSel_d_reg[1][3]\(2),
      I5 => \bitSel_d_reg[1][3]\(1),
      O => din_i
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[0]_i_1_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => '1',
      D => \ff[1]_i_1_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_3 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ff_reg[1]_0\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][5]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \doutMux_reg[1][2]\ : in STD_LOGIC;
    \we_d_reg[3][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_3 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_3;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_3 is
  signal \dout_i_1__12_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \^ff_reg[1]_0\ : STD_LOGIC;
begin
  \ff_reg[1]_0\ <= \^ff_reg[1]_0\;
\dout_i_1__12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__12_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \dout_i_1__12_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \doutMux_reg[1][2]\,
      I1 => Q(0),
      I2 => \^ff_reg[1]_0\,
      I3 => B_en,
      I4 => \we_d_reg[3][1]\(0),
      I5 => ff(0),
      O => \ff[0]_i_1__0_n_0\
    );
\ff[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \doutMux_reg[1][2]\,
      I1 => Q(0),
      I2 => \^ff_reg[1]_0\,
      I3 => B_en,
      I4 => \we_d_reg[3][1]\(1),
      I5 => ff(1),
      O => \ff[1]_i_1__0_n_0\
    );
\ff[1]_i_2__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C000C0FCBB3088"
    )
        port map (
      I0 => \doutMux_reg[1][5]\(0),
      I1 => Q(3),
      I2 => \doutMux_reg[1][5]\(2),
      I3 => Q(1),
      I4 => \doutMux_reg[1][5]\(1),
      I5 => Q(2),
      O => \^ff_reg[1]_0\
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[0]_i_1__0_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[1]_i_1__0_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_4 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ff_reg[0]_0\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_recclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \we_d_reg[4][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_4 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_4;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_4 is
  signal \dout_i_1__13_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \ff[1]_i_2__12_n_0\ : STD_LOGIC;
  signal \^ff_reg[0]_0\ : STD_LOGIC;
begin
  \ff_reg[0]_0\ <= \^ff_reg[0]_0\;
\dout_i_1__13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__13_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \dout_i_1__13_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \ff[1]_i_2__12_n_0\,
      I1 => Q(0),
      I2 => \^ff_reg[0]_0\,
      I3 => B_en,
      I4 => \we_d_reg[4][1]\(0),
      I5 => ff(0),
      O => \ff[0]_i_1__0_n_0\
    );
\ff[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \ff[1]_i_2__12_n_0\,
      I1 => Q(0),
      I2 => \^ff_reg[0]_0\,
      I3 => B_en,
      I4 => \we_d_reg[4][1]\(1),
      I5 => ff(1),
      O => \ff[1]_i_1__0_n_0\
    );
\ff[1]_i_2__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30003000CCBB0088"
    )
        port map (
      I0 => \doutMux_reg[1][5]\(2),
      I1 => Q(3),
      I2 => \doutMux_reg[1][5]\(0),
      I3 => Q(1),
      I4 => \doutMux_reg[1][5]\(4),
      I5 => Q(2),
      O => \^ff_reg[0]_0\
    );
\ff[1]_i_2__12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30003000CCBB0088"
    )
        port map (
      I0 => \doutMux_reg[1][5]\(3),
      I1 => Q(3),
      I2 => \doutMux_reg[1][5]\(1),
      I3 => Q(1),
      I4 => \doutMux_reg[1][5]\(5),
      I5 => Q(2),
      O => \ff[1]_i_2__12_n_0\
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[0]_i_1__0_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[1]_i_1__0_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_5 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    \bitSel_d_reg[1][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bitSel_d_reg[1][0]\ : in STD_LOGIC;
    \doutMux_reg[1][3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[5][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_5 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_5;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_5 is
  signal din_i : STD_LOGIC;
  signal \dout_i_1__14_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \ff[1]_i_3__6_n_0\ : STD_LOGIC;
  signal \ff[1]_i_4__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ff[1]_i_3__6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ff[1]_i_4__2\ : label is "soft_lutpair14";
begin
\dout_i_1__14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__14_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \dout_i_1__14_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => B_en,
      I2 => \we_d_reg[5][1]\(0),
      I3 => ff(0),
      O => \ff[0]_i_1__0_n_0\
    );
\ff[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => B_en,
      I2 => \we_d_reg[5][1]\(1),
      I3 => ff(1),
      O => \ff[1]_i_1__0_n_0\
    );
\ff[1]_i_2__15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFB8000000"
    )
        port map (
      I0 => \ff[1]_i_3__6_n_0\,
      I1 => \bitSel_d_reg[1][3]\(0),
      I2 => \ff[1]_i_4__2_n_0\,
      I3 => \bitSel_d_reg[1][3]\(1),
      I4 => \bitSel_d_reg[1][3]\(3),
      I5 => \bitSel_d_reg[1][0]\,
      O => din_i
    );
\ff[1]_i_3__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \doutMux_reg[1][3]\(1),
      I1 => \bitSel_d_reg[1][3]\(2),
      O => \ff[1]_i_3__6_n_0\
    );
\ff[1]_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \doutMux_reg[1][3]\(0),
      I1 => \bitSel_d_reg[1][3]\(2),
      O => \ff[1]_i_4__2_n_0\
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[0]_i_1__0_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[1]_i_1__0_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_6 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ff_reg[0]_0\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][2]\ : in STD_LOGIC;
    \bitSel_d_reg[1][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \doutMux_reg[1][5]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \doutMux_reg[1][3]\ : in STD_LOGIC;
    \we_d_reg[6][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_6 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_6;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_6 is
  signal din_i : STD_LOGIC;
  signal \dout_i_1__15_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \ff[1]_i_4__3_n_0\ : STD_LOGIC;
  signal \^ff_reg[0]_0\ : STD_LOGIC;
begin
  \ff_reg[0]_0\ <= \^ff_reg[0]_0\;
\dout_i_1__15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__15_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \dout_i_1__15_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => B_en,
      I2 => \we_d_reg[6][1]\(0),
      I3 => ff(0),
      O => \ff[0]_i_1__0_n_0\
    );
\ff[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => B_en,
      I2 => \we_d_reg[6][1]\(1),
      I3 => ff(1),
      O => \ff[1]_i_1__0_n_0\
    );
\ff[1]_i_2__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \doutMux_reg[1][2]\,
      I1 => \bitSel_d_reg[1][3]\(0),
      I2 => \ff[1]_i_4__3_n_0\,
      I3 => \bitSel_d_reg[1][3]\(3),
      I4 => \^ff_reg[0]_0\,
      O => din_i
    );
\ff[1]_i_4__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \doutMux_reg[1][5]\(4),
      I1 => \doutMux_reg[1][5]\(0),
      I2 => \bitSel_d_reg[1][3]\(1),
      I3 => \doutMux_reg[1][5]\(2),
      I4 => \bitSel_d_reg[1][3]\(2),
      O => \ff[1]_i_4__3_n_0\
    );
\ff[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \doutMux_reg[1][5]\(3),
      I1 => \bitSel_d_reg[1][3]\(1),
      I2 => \doutMux_reg[1][5]\(1),
      I3 => \bitSel_d_reg[1][3]\(2),
      I4 => \bitSel_d_reg[1][3]\(0),
      I5 => \doutMux_reg[1][3]\,
      O => \^ff_reg[0]_0\
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[0]_i_1__0_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[1]_i_1__0_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_7 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ff_reg[0]_0\ : out STD_LOGIC;
    \ff_reg[0]_1\ : out STD_LOGIC;
    \ff_reg[0]_2\ : out STD_LOGIC;
    \ff_reg[0]_3\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_recclk : in STD_LOGIC;
    \bitSel_d_reg[1][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \we_d_reg[7][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_7 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_7;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_7 is
  signal \dout_i_1__16_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \ff[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \^ff_reg[0]_0\ : STD_LOGIC;
  signal \^ff_reg[0]_1\ : STD_LOGIC;
  signal \^ff_reg[0]_2\ : STD_LOGIC;
  signal \^ff_reg[0]_3\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ff[1]_i_3__7\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ff[1]_i_5__0\ : label is "soft_lutpair15";
begin
  \ff_reg[0]_0\ <= \^ff_reg[0]_0\;
  \ff_reg[0]_1\ <= \^ff_reg[0]_1\;
  \ff_reg[0]_2\ <= \^ff_reg[0]_2\;
  \ff_reg[0]_3\ <= \^ff_reg[0]_3\;
\dout_i_1__16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__16_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \dout_i_1__16_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \^ff_reg[0]_0\,
      I1 => \bitSel_d_reg[1][3]\(3),
      I2 => \^ff_reg[0]_1\,
      I3 => B_en,
      I4 => \we_d_reg[7][1]\(0),
      I5 => ff(0),
      O => \ff[0]_i_1__2_n_0\
    );
\ff[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \^ff_reg[0]_0\,
      I1 => \bitSel_d_reg[1][3]\(3),
      I2 => \^ff_reg[0]_1\,
      I3 => B_en,
      I4 => \we_d_reg[7][1]\(1),
      I5 => ff(1),
      O => \ff[1]_i_1__2_n_0\
    );
\ff[1]_i_2__16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ff_reg[0]_2\,
      I1 => \bitSel_d_reg[1][3]\(0),
      I2 => \^ff_reg[0]_3\,
      O => \^ff_reg[0]_0\
    );
\ff[1]_i_3__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \doutMux_reg[1][5]\(5),
      I1 => \bitSel_d_reg[1][3]\(1),
      I2 => \doutMux_reg[1][5]\(3),
      I3 => \bitSel_d_reg[1][3]\(2),
      I4 => \bitSel_d_reg[1][3]\(0),
      I5 => \ff[1]_i_5__0_n_0\,
      O => \^ff_reg[0]_1\
    );
\ff[1]_i_3__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \doutMux_reg[1][5]\(2),
      I1 => \bitSel_d_reg[1][3]\(1),
      I2 => \doutMux_reg[1][5]\(4),
      I3 => \bitSel_d_reg[1][3]\(2),
      I4 => \doutMux_reg[1][5]\(0),
      O => \^ff_reg[0]_3\
    );
\ff[1]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \doutMux_reg[1][5]\(3),
      I1 => \bitSel_d_reg[1][3]\(1),
      I2 => \doutMux_reg[1][5]\(5),
      I3 => \bitSel_d_reg[1][3]\(2),
      I4 => \doutMux_reg[1][5]\(1),
      O => \^ff_reg[0]_2\
    );
\ff[1]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \doutMux_reg[1][5]\(4),
      I1 => \bitSel_d_reg[1][3]\(1),
      I2 => \doutMux_reg[1][5]\(2),
      I3 => \bitSel_d_reg[1][3]\(2),
      O => \ff[1]_i_5__0_n_0\
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[0]_i_1__2_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[1]_i_1__2_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_8 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_recclk : in STD_LOGIC;
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][4]\ : in STD_LOGIC;
    \bitSel_d_reg[1][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \doutMux_reg[1][0]\ : in STD_LOGIC;
    \doutMux_reg[1][5]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[8][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_8 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_8;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_8 is
  signal din_i : STD_LOGIC;
  signal \dout_i_1__17_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \ff[1]_i_4__0_n_0\ : STD_LOGIC;
begin
\dout_i_1__17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__17_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \dout_i_1__17_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => B_en,
      I2 => \we_d_reg[8][1]\(0),
      I3 => ff(0),
      O => \ff[0]_i_1__0_n_0\
    );
\ff[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => din_i,
      I1 => B_en,
      I2 => \we_d_reg[8][1]\(1),
      I3 => ff(1),
      O => \ff[1]_i_1__0_n_0\
    );
\ff[1]_i_2__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \doutMux_reg[1][4]\,
      I1 => \bitSel_d_reg[1][3]\(3),
      I2 => \doutMux_reg[1][0]\,
      I3 => \bitSel_d_reg[1][3]\(0),
      I4 => \ff[1]_i_4__0_n_0\,
      O => din_i
    );
\ff[1]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \doutMux_reg[1][5]\(1),
      I1 => \bitSel_d_reg[1][3]\(1),
      I2 => \doutMux_reg[1][5]\(0),
      I3 => \bitSel_d_reg[1][3]\(2),
      O => \ff[1]_i_4__0_n_0\
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[0]_i_1__0_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[1]_i_1__0_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_9 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ff_reg[1]_0\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_recclk : in STD_LOGIC;
    \doutMux_reg[1][5]\ : in STD_LOGIC;
    \bitSel_d_reg[1][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \we_d_reg[9][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    doutSel : in STD_LOGIC;
    \doutMux_reg[1][5]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_9 : entity is "ff_fifo2e";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_9;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_9 is
  signal \dout_i_1__18_n_0\ : STD_LOGIC;
  signal ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ff[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \ff[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \ff[1]_i_2__17_n_0\ : STD_LOGIC;
  signal \^ff_reg[1]_0\ : STD_LOGIC;
begin
  \ff_reg[1]_0\ <= \^ff_reg[1]_0\;
\dout_i_1__18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ff(1),
      I1 => doutSel,
      I2 => ff(0),
      O => \dout_i_1__18_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \dout_i_1__18_n_0\,
      Q => D(0),
      R => rst
    );
\ff[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \doutMux_reg[1][5]\,
      I1 => \bitSel_d_reg[1][3]\(3),
      I2 => \ff[1]_i_2__17_n_0\,
      I3 => B_en,
      I4 => \we_d_reg[9][1]\(0),
      I5 => ff(0),
      O => \ff[0]_i_1__1_n_0\
    );
\ff[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \doutMux_reg[1][5]\,
      I1 => \bitSel_d_reg[1][3]\(3),
      I2 => \ff[1]_i_2__17_n_0\,
      I3 => B_en,
      I4 => \we_d_reg[9][1]\(1),
      I5 => ff(1),
      O => \ff[1]_i_1__1_n_0\
    );
\ff[1]_i_2__17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \doutMux_reg[1][5]_0\(1),
      I1 => \bitSel_d_reg[1][3]\(1),
      I2 => \doutMux_reg[1][5]_0\(3),
      I3 => \bitSel_d_reg[1][3]\(2),
      I4 => \bitSel_d_reg[1][3]\(0),
      I5 => \^ff_reg[1]_0\,
      O => \ff[1]_i_2__17_n_0\
    );
\ff[1]_i_3__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8830"
    )
        port map (
      I0 => \doutMux_reg[1][5]_0\(0),
      I1 => \bitSel_d_reg[1][3]\(1),
      I2 => \doutMux_reg[1][5]_0\(2),
      I3 => \bitSel_d_reg[1][3]\(2),
      O => \^ff_reg[1]_0\
    );
\ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[0]_i_1__1_n_0\,
      Q => ff(0),
      R => rst
    );
\ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => '1',
      D => \ff[1]_i_1__1_n_0\,
      Q => ff(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_osDeci20b_48_1011x_BRAM is
  port (
    DOA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutMux_reg[0][2]\ : out STD_LOGIC;
    \doutMux_reg[0][1]\ : out STD_LOGIC;
    \doutMux_reg[0][0]\ : out STD_LOGIC;
    A_en : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_recclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRB : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \din_d_reg[2][29]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \din_d_reg[2][17]\ : in STD_LOGIC;
    \din_d_reg[2][13]\ : in STD_LOGIC;
    p_24_in : in STD_LOGIC;
    p_25_in : in STD_LOGIC;
    \edge_reg[3]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_osDeci20b_48_1011x_BRAM : entity is "osDeci20b_48_1011x_BRAM";
end design_1_os48_1011x20bTo10b_top2_0_0_osDeci20b_48_1011x_BRAM;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_osDeci20b_48_1011x_BRAM is
  signal A_ad : STD_LOGIC_VECTOR ( 8 to 8 );
  signal B_ad : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \^doa\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^dob\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \doutMux[0][0]_i_9_n_0\ : STD_LOGIC;
  signal \doutMux[0][1]_i_9_n_0\ : STD_LOGIC;
  signal NLW_C_BRAMOSDECI5_DIADI_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_C_BRAMOSDECI5_DIBDI_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_C_BRAMOSDECI5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_C_BRAMOSDECI5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_C_BRAMOSDECI5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_C_BRAMOSDECI5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_C_BRAMOSDECI5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_C_BRAMOSDECI5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of C_BRAMOSDECI5 : label is "RAMB16_S9_S9";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of C_BRAMOSDECI5 : label is "ADDRA[0]:ADDRARDADDR[3] ADDRA[10]:ADDRARDADDR[13] ADDRA[1]:ADDRARDADDR[4] ADDRA[2]:ADDRARDADDR[5] ADDRA[3]:ADDRARDADDR[6] ADDRA[4]:ADDRARDADDR[7] ADDRA[5]:ADDRARDADDR[8] ADDRA[6]:ADDRARDADDR[9] ADDRA[7]:ADDRARDADDR[10] ADDRA[8]:ADDRARDADDR[11] ADDRA[9]:ADDRARDADDR[12] ADDRB[0]:ADDRBWRADDR[3] ADDRB[10]:ADDRBWRADDR[13] ADDRB[1]:ADDRBWRADDR[4] ADDRB[2]:ADDRBWRADDR[5] ADDRB[3]:ADDRBWRADDR[6] ADDRB[4]:ADDRBWRADDR[7] ADDRB[5]:ADDRBWRADDR[8] ADDRB[6]:ADDRBWRADDR[9] ADDRB[7]:ADDRBWRADDR[10] ADDRB[8]:ADDRBWRADDR[11] ADDRB[9]:ADDRBWRADDR[12] CLKA:CLKARDCLK CLKB:CLKBWRCLK DIA[0]:DIADI[0] DIA[1]:DIADI[1] DIA[2]:DIADI[2] DIA[3]:DIADI[3] DIA[4]:DIADI[4] DIA[5]:DIADI[5] DIA[6]:DIADI[6] DIA[7]:DIADI[7] DIB[0]:DIBDI[0] DIB[1]:DIBDI[1] DIB[2]:DIBDI[2] DIB[3]:DIBDI[3] DIB[4]:DIBDI[4] DIB[5]:DIBDI[5] DIB[6]:DIBDI[6] DIB[7]:DIBDI[7] DIPA[0]:DIPADIP[0] DIPB[0]:DIPBDIP[0] DOA[0]:DOADO[0] DOA[1]:DOADO[1] DOA[2]:DOADO[2] DOA[3]:DOADO[3] DOA[4]:DOADO[4] DOA[5]:DOADO[5] DOA[6]:DOADO[6] DOA[7]:DOADO[7] DOB[0]:DOBDO[0] DOB[1]:DOBDO[1] DOB[2]:DOBDO[2] DOB[3]:DOBDO[3] DOB[4]:DOBDO[4] DOB[5]:DOBDO[5] DOB[6]:DOBDO[6] DOB[7]:DOBDO[7] DOPA[0]:DOPADOP[0] DOPB[0]:DOPBDOP[0] ENA:ENARDEN ENB:ENBWREN SSRA:RSTRAMARSTRAM SSRB:RSTRAMB WEA:WEA[0] WEB:WEBWE[0]";
  attribute box_type : string;
  attribute box_type of C_BRAMOSDECI5 : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \doutMux[0][0]_i_9\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \doutMux[0][1]_i_9\ : label is "soft_lutpair52";
begin
  DOA(7 downto 0) <= \^doa\(7 downto 0);
  DOB(7 downto 0) <= \^dob\(7 downto 0);
C_BRAMOSDECI5: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"00000000000000000000000000000000000000000000000011000050000C0202",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FCFFEFEFFFBB",
      INITP_02 => X"00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000",
      INITP_04 => X"000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000",
      INITP_06 => X"00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000",
      INIT_00 => X"5151505051515050515150505353515150435043504352505043504350435250",
      INIT_01 => X"5353536153535361525252535252525352525252515151515260526051525152",
      INIT_02 => X"5151515151515151515151515151515151515151515151515151515151515151",
      INIT_03 => X"5151515151515151515151515151515151515151515151515151515151515151",
      INIT_04 => X"5151515151515151515151515151515151515151515151515151515151515151",
      INIT_05 => X"5151515151515151515151515151515151515151515151515151515151515151",
      INIT_06 => X"5151515151515151515151515151515151515151515151515151515151515151",
      INIT_07 => X"5151515151515151515151515151515151515151515151515151515151515151",
      INIT_08 => X"5151514352525251515151435252525150505151505051515042515050425150",
      INIT_09 => X"5360536053605360536053605153515352525252525250505353535353535252",
      INIT_0A => X"5151515151515151515151515151515151515151515151515151515151515151",
      INIT_0B => X"5151515151515151515151515151515151515151515151515151515151515151",
      INIT_0C => X"5151515151515151515151515151515151515151515151515151515151515151",
      INIT_0D => X"5151515151515151515151515151515151515151515151515151515151515151",
      INIT_0E => X"5151515151515151515151515151515151515151515151515151515151515151",
      INIT_0F => X"5151515151515151515151515151515151515151515151515151515151515151",
      INIT_10 => X"2525252525252525242426262626252424242424242424242323232525252524",
      INIT_11 => X"2727272727272727303030302726262626262626262626262527272727262525",
      INIT_12 => X"3131313131313131323231303030323230303030303030303131313027272731",
      INIT_13 => X"3333333333333333333232323434343432323232323232323332313131333333",
      INIT_14 => X"3333333333333333333333333333333333333333333333333333333333333333",
      INIT_15 => X"3333333333333333333333333333333333333333333333333333333333333333",
      INIT_16 => X"3333333333333333333333333333333333333333333333333333333333333333",
      INIT_17 => X"3333333333333333333333333333333333333333333333333333333333333333",
      INIT_18 => X"2525252525252525242426262626252424242424242424242323232525252524",
      INIT_19 => X"2727272727272727303030302726262626262626262626262527272727262525",
      INIT_1A => X"3131313131313131323231303030323230303030303030303131313027272731",
      INIT_1B => X"3333333333333333333232323434343432323232323232323332313131333333",
      INIT_1C => X"3333333333333333333333333333333333333333333333333333333333333333",
      INIT_1D => X"3333333333333333333333333333333333333333333333333333333333333333",
      INIT_1E => X"3333333333333333333333333333333333333333333333333333333333333333",
      INIT_1F => X"3333333333333333333333333333333333333333333333333333333333333333",
      INIT_20 => X"2121212121212222222120202020222220202020202021212121201919191921",
      INIT_21 => X"2323232323232423222222222424242422222222222223232221212121232323",
      INIT_22 => X"2525252525252424242426262626262524242424242424232323232525252525",
      INIT_23 => X"2727272727272626282828282827262626262626262625252527272727272625",
      INIT_24 => X"2929292929293030303030292828282828282828282827292929292928272727",
      INIT_25 => X"2424242424242424242424242424242424242424242424242424242424242424",
      INIT_26 => X"2424242424242424242424242424242424242424242424242424242424242424",
      INIT_27 => X"2424242424242424242424242424242424242424242424242424242424242424",
      INIT_28 => X"2121212121212222222120202020222220202020202021212121201919191921",
      INIT_29 => X"2323232323232423222222222424242422222222222223232221212121232323",
      INIT_2A => X"2525252525252424242426262626262524242424242424232323232525252525",
      INIT_2B => X"2727272727272626282828282827262626262626262625252527272727272625",
      INIT_2C => X"2929292929293030303030292828282828282828282827292929292928272727",
      INIT_2D => X"2424242424242424242424242424242424242424242424242424242424242424",
      INIT_2E => X"2424242424242424242424242424242424242424242424242424242424242424",
      INIT_2F => X"2424242424242424242424242424242424242424242424242424242424242424",
      INIT_30 => X"1A1A1A1A1A20202020202019191919191919191919181A1A1A1A1A1A18181818",
      INIT_31 => X"21212121212222222220202020202222202020202021212121211A1A1A1A1A21",
      INIT_32 => X"2323232323242422222222222424242422222222222323232121212121232323",
      INIT_33 => X"2525252525242424242426262626262624242424242523232323232525252525",
      INIT_34 => X"2727272727262626282828282828262626262626262525252527272727272725",
      INIT_35 => X"2525252525252525252525252525252528282828282727292929292929272727",
      INIT_36 => X"2525252525252525252525252525252525252525252525252525252525252525",
      INIT_37 => X"2525252525252525252525252525252525252525252525252525252525252525",
      INIT_38 => X"1A1A1A1A1A20202020202019191919191919191919181A1A1A1A1A1A18181818",
      INIT_39 => X"21212121212222222220202020202222202020202021212121211A1A1A1A1A21",
      INIT_3A => X"2323232323242422222222222424242422222222222323232121212121232323",
      INIT_3B => X"2525252525242424242426262626262624242424242523232323232525252525",
      INIT_3C => X"2727272727262626282828282828262626262626262525252527272727272725",
      INIT_3D => X"2525252525252525252525252525252528282828282727292929292929272727",
      INIT_3E => X"2525252525252525252525252525252525252525252525252525252525252525",
      INIT_3F => X"2525252525252525252525252525252525252525252525252525252525252525",
      INIT_A => X"00000",
      INIT_B => X"00000",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"01",
      ADDRARDADDR(11) => A_ad(8),
      ADDRARDADDR(10 downto 7) => \^doa\(3 downto 0),
      ADDRARDADDR(6 downto 3) => Q(3 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(13 downto 12) => ADDRB(5 downto 4),
      ADDRBWRADDR(11) => B_ad(8),
      ADDRBWRADDR(10 downto 7) => \^dob\(3 downto 0),
      ADDRBWRADDR(6 downto 3) => ADDRB(3 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CLKARDCLK => A_recclk,
      CLKBWRCLK => B_recclk,
      DIADI(15 downto 8) => NLW_C_BRAMOSDECI5_DIADI_UNCONNECTED(15 downto 8),
      DIADI(7 downto 0) => B"00000000",
      DIBDI(15 downto 8) => NLW_C_BRAMOSDECI5_DIBDI_UNCONNECTED(15 downto 8),
      DIBDI(7 downto 0) => B"00000000",
      DIPADIP(1) => NLW_C_BRAMOSDECI5_DIPADIP_UNCONNECTED(1),
      DIPADIP(0) => '0',
      DIPBDIP(1) => NLW_C_BRAMOSDECI5_DIPBDIP_UNCONNECTED(1),
      DIPBDIP(0) => '0',
      DOADO(15 downto 8) => NLW_C_BRAMOSDECI5_DOADO_UNCONNECTED(15 downto 8),
      DOADO(7 downto 0) => \^doa\(7 downto 0),
      DOBDO(15 downto 8) => NLW_C_BRAMOSDECI5_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => \^dob\(7 downto 0),
      DOPADOP(1) => NLW_C_BRAMOSDECI5_DOPADOP_UNCONNECTED(1),
      DOPADOP(0) => A_ad(8),
      DOPBDOP(1) => NLW_C_BRAMOSDECI5_DOPBDOP_UNCONNECTED(1),
      DOPBDOP(0) => B_ad(8),
      ENARDEN => A_en,
      ENBWREN => B_en,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => rst,
      RSTRAMB => rst,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\doutMux[0][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => \doutMux[0][0]_i_9_n_0\,
      I1 => p_24_in,
      I2 => \^dob\(0),
      I3 => p_25_in,
      I4 => \^dob\(3),
      I5 => \edge_reg[3]\,
      O => \doutMux_reg[0][0]\
    );
\doutMux[0][0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^dob\(2),
      I1 => \^dob\(1),
      O => \doutMux[0][0]_i_9_n_0\
    );
\doutMux[0][1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \doutMux[0][1]_i_9_n_0\,
      I1 => \^dob\(3),
      I2 => \din_d_reg[2][17]\,
      I3 => \^dob\(2),
      I4 => \din_d_reg[2][13]\,
      O => \doutMux_reg[0][1]\
    );
\doutMux[0][1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => \din_d_reg[2][29]\(0),
      I1 => \^dob\(2),
      I2 => \^dob\(0),
      I3 => \^dob\(1),
      I4 => \din_d_reg[2][29]\(1),
      O => \doutMux[0][1]_i_9_n_0\
    );
\doutMux[0][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5F5F5F5F5DD"
    )
        port map (
      I0 => \^dob\(3),
      I1 => \din_d_reg[2][29]\(2),
      I2 => \din_d_reg[2][29]\(3),
      I3 => \^dob\(2),
      I4 => \^dob\(0),
      I5 => \^dob\(1),
      O => \doutMux_reg[0][2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_sipoCtl10b_BRAM_v2 is
  port (
    DOA : out STD_LOGIC_VECTOR ( 29 downto 0 );
    DOB : out STD_LOGIC_VECTOR ( 29 downto 0 );
    A_en : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_recclk : in STD_LOGIC;
    \edge_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \edge_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_sipoCtl10b_BRAM_v2 : entity is "sipoCtl10b_BRAM_v2";
end design_1_os48_1011x20bTo10b_top2_0_0_sipoCtl10b_BRAM_v2;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_sipoCtl10b_BRAM_v2 is
  signal ADDRA : STD_LOGIC_VECTOR ( 12 downto 9 );
  signal ADDRB : STD_LOGIC_VECTOR ( 12 downto 9 );
  signal \^doa\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \^dob\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_C_BRAMSIPO_0TO9_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_C_BRAMSIPO_0TO9_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_C_BRAMSIPO_0TO9_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_C_BRAMSIPO_0TO9_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_C_BRAMSIPO_0TO9_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_C_BRAMSIPO_0TO9_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_C_BRAMSIPO_0TO9_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 28 );
  signal NLW_C_BRAMSIPO_0TO9_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 28 );
  signal NLW_C_BRAMSIPO_0TO9_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_C_BRAMSIPO_0TO9_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of C_BRAMSIPO_0TO9 : label is "RAMB36";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of C_BRAMSIPO_0TO9 : label is "ADDRA[0]:ADDRARDADDR[0] ADDRA[10]:ADDRARDADDR[10] ADDRA[11]:ADDRARDADDR[11] ADDRA[12]:ADDRARDADDR[12] ADDRA[13]:ADDRARDADDR[13] ADDRA[14]:ADDRARDADDR[14] ADDRA[1]:ADDRARDADDR[1] ADDRA[2]:ADDRARDADDR[2] ADDRA[3]:ADDRARDADDR[3] ADDRA[4]:ADDRARDADDR[4] ADDRA[5]:ADDRARDADDR[5] ADDRA[6]:ADDRARDADDR[6] ADDRA[7]:ADDRARDADDR[7] ADDRA[8]:ADDRARDADDR[8] ADDRA[9]:ADDRARDADDR[9] ADDRB[0]:ADDRBWRADDR[0] ADDRB[10]:ADDRBWRADDR[10] ADDRB[11]:ADDRBWRADDR[11] ADDRB[12]:ADDRBWRADDR[12] ADDRB[13]:ADDRBWRADDR[13] ADDRB[14]:ADDRBWRADDR[14] ADDRB[1]:ADDRBWRADDR[1] ADDRB[2]:ADDRBWRADDR[2] ADDRB[3]:ADDRBWRADDR[3] ADDRB[4]:ADDRBWRADDR[4] ADDRB[5]:ADDRBWRADDR[5] ADDRB[6]:ADDRBWRADDR[6] ADDRB[7]:ADDRBWRADDR[7] ADDRB[8]:ADDRBWRADDR[8] ADDRB[9]:ADDRBWRADDR[9] CASCADEINLATA:CASCADEINA CASCADEINLATB:CASCADEINB CASCADEOUTLATA:CASCADEOUTA CASCADEOUTLATB:CASCADEOUTB CASCADEOUTREGA:CASCADEOUTA CASCADEOUTREGB:CASCADEOUTB CLKA:CLKARDCLK CLKB:CLKBWRCLK DIA[0]:DIADI[0] DIA[10]:DIADI[10] DIA[11]:DIADI[11] DIA[12]:DIADI[12] DIA[13]:DIADI[13] DIA[14]:DIADI[14] DIA[15]:DIADI[15] DIA[16]:DIADI[16] DIA[17]:DIADI[17] DIA[18]:DIADI[18] DIA[19]:DIADI[19] DIA[1]:DIADI[1] DIA[20]:DIADI[20] DIA[21]:DIADI[21] DIA[22]:DIADI[22] DIA[23]:DIADI[23] DIA[24]:DIADI[24] DIA[25]:DIADI[25] DIA[26]:DIADI[26] DIA[27]:DIADI[27] DIA[28]:DIADI[28] DIA[29]:DIADI[29] DIA[2]:DIADI[2] DIA[30]:DIADI[30] DIA[31]:DIADI[31] DIA[3]:DIADI[3] DIA[4]:DIADI[4] DIA[5]:DIADI[5] DIA[6]:DIADI[6] DIA[7]:DIADI[7] DIA[8]:DIADI[8] DIA[9]:DIADI[9] DIB[0]:DIBDI[0] DIB[10]:DIBDI[10] DIB[11]:DIBDI[11] DIB[12]:DIBDI[12] DIB[13]:DIBDI[13] DIB[14]:DIBDI[14] DIB[15]:DIBDI[15] DIB[16]:DIBDI[16] DIB[17]:DIBDI[17] DIB[18]:DIBDI[18] DIB[19]:DIBDI[19] DIB[1]:DIBDI[1] DIB[20]:DIBDI[20] DIB[21]:DIBDI[21] DIB[22]:DIBDI[22] DIB[23]:DIBDI[23] DIB[24]:DIBDI[24] DIB[25]:DIBDI[25] DIB[26]:DIBDI[26] DIB[27]:DIBDI[27] DIB[28]:DIBDI[28] DIB[29]:DIBDI[29] DIB[2]:DIBDI[2] DIB[30]:DIBDI[30] DIB[31]:DIBDI[31] DIB[3]:DIBDI[3] DIB[4]:DIBDI[4] DIB[5]:DIBDI[5] DIB[6]:DIBDI[6] DIB[7]:DIBDI[7] DIB[8]:DIBDI[8] DIB[9]:DIBDI[9] DIPA[0]:DIPADIP[0] DIPA[1]:DIPADIP[1] DIPA[2]:DIPADIP[2] DIPA[3]:DIPADIP[3] DIPB[0]:DIPBDIP[0] DIPB[1]:DIPBDIP[1] DIPB[2]:DIPBDIP[2] DIPB[3]:DIPBDIP[3] DOA[0]:DOADO[0] DOA[10]:DOADO[10] DOA[11]:DOADO[11] DOA[12]:DOADO[12] DOA[13]:DOADO[13] DOA[14]:DOADO[14] DOA[15]:DOADO[15] DOA[16]:DOADO[16] DOA[17]:DOADO[17] DOA[18]:DOADO[18] DOA[19]:DOADO[19] DOA[1]:DOADO[1] DOA[20]:DOADO[20] DOA[21]:DOADO[21] DOA[22]:DOADO[22] DOA[23]:DOADO[23] DOA[24]:DOADO[24] DOA[25]:DOADO[25] DOA[26]:DOADO[26] DOA[27]:DOADO[27] DOA[28]:DOADO[28] DOA[29]:DOADO[29] DOA[2]:DOADO[2] DOA[30]:DOADO[30] DOA[31]:DOADO[31] DOA[3]:DOADO[3] DOA[4]:DOADO[4] DOA[5]:DOADO[5] DOA[6]:DOADO[6] DOA[7]:DOADO[7] DOA[8]:DOADO[8] DOA[9]:DOADO[9] DOB[0]:DOBDO[0] DOB[10]:DOBDO[10] DOB[11]:DOBDO[11] DOB[12]:DOBDO[12] DOB[13]:DOBDO[13] DOB[14]:DOBDO[14] DOB[15]:DOBDO[15] DOB[16]:DOBDO[16] DOB[17]:DOBDO[17] DOB[18]:DOBDO[18] DOB[19]:DOBDO[19] DOB[1]:DOBDO[1] DOB[20]:DOBDO[20] DOB[21]:DOBDO[21] DOB[22]:DOBDO[22] DOB[23]:DOBDO[23] DOB[24]:DOBDO[24] DOB[25]:DOBDO[25] DOB[26]:DOBDO[26] DOB[27]:DOBDO[27] DOB[28]:DOBDO[28] DOB[29]:DOBDO[29] DOB[2]:DOBDO[2] DOB[30]:DOBDO[30] DOB[31]:DOBDO[31] DOB[3]:DOBDO[3] DOB[4]:DOBDO[4] DOB[5]:DOBDO[5] DOB[6]:DOBDO[6] DOB[7]:DOBDO[7] DOB[8]:DOBDO[8] DOB[9]:DOBDO[9] DOPA[0]:DOPADOP[0] DOPA[1]:DOPADOP[1] DOPA[2]:DOPADOP[2] DOPA[3]:DOPADOP[3] DOPB[0]:DOPBDOP[0] DOPB[1]:DOPBDOP[1] DOPB[2]:DOPBDOP[2] DOPB[3]:DOPBDOP[3] ENA:ENARDEN ENB:ENBWREN REGCEA:REGCEAREGCE WEB[0]:WEBWE[0] WEB[1]:WEBWE[1] WEB[2]:WEBWE[2] WEB[3]:WEBWE[3] SSRA:RSTRAMARSTRAM SSRB:RSTRAMB";
  attribute box_type : string;
  attribute box_type of C_BRAMSIPO_0TO9 : label is "PRIMITIVE";
begin
  DOA(29 downto 0) <= \^doa\(29 downto 0);
  DOB(29 downto 0) <= \^dob\(29 downto 0);
C_BRAMSIPO_0TO9: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000034567890123000002345678901200000123456789010000001234567890",
      INITP_01 => X"0000078901234567000006789012345600000567890123450000045678901234",
      INITP_02 => X"0000000000000000000000000000000000000901234567890000089012345678",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000034567890123000002345678901200000123456789010000001234567890",
      INITP_05 => X"0000078901234567000006789012345600000567890123450000045678901234",
      INITP_06 => X"0000000000000000000000000000000000000901234567890000089012345678",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"C1655502C0555402C9455002C8354002C7250002C6140002C500000204900000",
      INIT_01 => X"0000000000000000000000000000000000000000C4955556C3855552C2755542",
      INIT_02 => X"C055540AC945500AC835400AC725000AC614000AC500000A0490000803800000",
      INIT_03 => X"0000000000000000000000000000000000000000C385555AC275554AC165550A",
      INIT_04 => X"C945502AC835402AC725002AC614002AC500002A049000280380002002700000",
      INIT_05 => X"0000000000000000000000000000000000000000C275556AC165552AC055542A",
      INIT_06 => X"C83540AAC72500AAC61400AAC50000AA049000A8038000A00270008001600000",
      INIT_07 => X"0000000000000000000000000000000000000000C16555AAC05554AAC94550AA",
      INIT_08 => X"C72502AAC61402AAC50002AA049002A8038002A0027002800160020000500000",
      INIT_09 => X"0000000000000000000000000000000000000000C05556AAC94552AAC83542AA",
      INIT_0A => X"C6140AAAC5000AAA04900AA803800AA002700A8001600A000050080009400000",
      INIT_0B => X"0000000000000000000000000000000000000000C9455AAAC8354AAAC7250AAA",
      INIT_0C => X"C5002AAA04902AA803802AA002702A8001602A00005028000940200008300000",
      INIT_0D => X"0000000000000000000000000000000000000000C8356AAAC7252AAAC6142AAA",
      INIT_0E => X"0490AAA80380AAA00270AA800160AA000050A8000940A0000830800007200000",
      INIT_0F => X"0000000000000000000000000000000000000000C725AAAAC614AAAAC500AAAA",
      INIT_10 => X"0382AAA00272AA800162AA000052A8000942A000083280000722000006100000",
      INIT_11 => X"0000000000000000000000000000000000000000C616AAAAC502AAAA0492AAA8",
      INIT_12 => X"027AAA80016AAA00005AA800094AA000083A8000072A00000618000005000000",
      INIT_13 => X"0000000000000000000000000000000000000000C50AAAAA049AAAA8038AAAA0",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"416AAA01405AA801494AA001483A8001472A0001461800014500000184900000",
      INIT_21 => X"0000000000000000000000000000000000000000449AAAA9438AAAA1427AAA81",
      INIT_22 => X"405AA805494AA005483A8005472A000546180005450000058490000483800000",
      INIT_23 => X"0000000000000000000000000000000000000000438AAAA5427AAA85416AAA05",
      INIT_24 => X"494AA015483A8015472A00154618001545000015849000148380001082700000",
      INIT_25 => X"0000000000000000000000000000000000000000427AAA95416AAA15405AA815",
      INIT_26 => X"483A8055472A0055461800554500005584900054838000508270004081600000",
      INIT_27 => X"0000000000000000000000000000000000000000416AAA55405AA855494AA055",
      INIT_28 => X"472A015546180155450001558490015483800150827001408160010080500000",
      INIT_29 => X"0000000000000000000000000000000000000000405AA955494AA155483A8155",
      INIT_2A => X"4618055545000555849005548380055082700540816005008050040089400000",
      INIT_2B => X"0000000000000000000000000000000000000000494AA555483A8555472A0555",
      INIT_2C => X"4500155584901554838015508270154081601500805014008940100088300000",
      INIT_2D => X"0000000000000000000000000000000000000000483A9555472A155546181555",
      INIT_2E => X"8490555483805550827055408160550080505400894050008830400087200000",
      INIT_2F => X"0000000000000000000000000000000000000000472A55554618555545005555",
      INIT_30 => X"8381555082715540816155008051540089415000883140008721000086100000",
      INIT_31 => X"0000000000000000000000000000000000000000461955554501555584915554",
      INIT_32 => X"8275554081655500805554008945500088354000872500008614000085000000",
      INIT_33 => X"0000000000000000000000000000000000000000450555558495555483855550",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15 downto 14) => B"10",
      ADDRARDADDR(13) => \^doa\(29),
      ADDRARDADDR(12 downto 9) => ADDRA(12 downto 9),
      ADDRARDADDR(8 downto 5) => \edge_reg[3]\(3 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(15 downto 14) => B"10",
      ADDRBWRADDR(13) => \^dob\(29),
      ADDRBWRADDR(12 downto 9) => ADDRB(12 downto 9),
      ADDRBWRADDR(8 downto 5) => \edge_reg[3]_0\(3 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_C_BRAMSIPO_0TO9_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_C_BRAMSIPO_0TO9_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => A_recclk,
      CLKBWRCLK => B_recclk,
      DBITERR => NLW_C_BRAMSIPO_0TO9_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 30) => \^doa\(29 downto 28),
      DOADO(29 downto 28) => NLW_C_BRAMSIPO_0TO9_DOADO_UNCONNECTED(29 downto 28),
      DOADO(27 downto 0) => \^doa\(27 downto 0),
      DOBDO(31 downto 30) => \^dob\(29 downto 28),
      DOBDO(29 downto 28) => NLW_C_BRAMSIPO_0TO9_DOBDO_UNCONNECTED(29 downto 28),
      DOBDO(27 downto 0) => \^dob\(27 downto 0),
      DOPADOP(3 downto 0) => ADDRA(12 downto 9),
      DOPBDOP(3 downto 0) => ADDRB(12 downto 9),
      ECCPARITY(7 downto 0) => NLW_C_BRAMSIPO_0TO9_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => A_en,
      ENBWREN => B_en,
      INJECTDBITERR => NLW_C_BRAMSIPO_0TO9_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_C_BRAMSIPO_0TO9_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_C_BRAMSIPO_0TO9_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => rst,
      RSTRAMB => rst,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_C_BRAMSIPO_0TO9_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_10b is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    B_dout20bEn0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    B_dout20bEn_i_reg : out STD_LOGIC;
    rst : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_recclk : in STD_LOGIC;
    byteRdy_d_reg : in STD_LOGIC;
    bankSel_d_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \we_d_reg[1][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[4][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \bitSel_d_reg[1][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \we_d_reg[9][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[7][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    B_dout20bEn_i : in STD_LOGIC;
    \we_d_reg[0][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[2][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[3][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[5][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[6][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[8][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \doutMux_reg[1][5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_10b : entity is "ff_fifo2e_10b";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_10b;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_10b is
  signal B_doutEn_i : STD_LOGIC;
  signal \G0[1].C_FF2E_n_1\ : STD_LOGIC;
  signal \G0[3].C_FF2E_n_1\ : STD_LOGIC;
  signal \G0[4].C_FF2E_n_1\ : STD_LOGIC;
  signal \G0[6].C_FF2E_n_1\ : STD_LOGIC;
  signal \G0[7].C_FF2E_n_1\ : STD_LOGIC;
  signal \G0[7].C_FF2E_n_2\ : STD_LOGIC;
  signal \G0[7].C_FF2E_n_3\ : STD_LOGIC;
  signal \G0[7].C_FF2E_n_4\ : STD_LOGIC;
  signal \G0[9].C_FF2E_n_1\ : STD_LOGIC;
  signal doutRdy_i : STD_LOGIC;
  signal doutSel : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of B_dout20bEn_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of B_dout20bEn_i_i_1 : label is "soft_lutpair16";
begin
B_dout10bEn_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => B_en,
      I1 => B_doutEn_i,
      O => E(0)
    );
B_dout20bEn_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => B_doutEn_i,
      I1 => B_en,
      I2 => B_dout20bEn_i,
      O => B_dout20bEn0
    );
B_dout20bEn_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => B_doutEn_i,
      I1 => B_en,
      I2 => B_dout20bEn_i,
      O => B_dout20bEn_i_reg
    );
\G0[0].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e
     port map (
      B_en => B_en,
      B_recclk => B_recclk,
      D(0) => D(0),
      Q(3 downto 0) => Q(3 downto 0),
      \doutMux_reg[1][5]\(5 downto 0) => \doutMux_reg[1][5]\(5 downto 0),
      doutSel => doutSel,
      rst => rst,
      \we_d_reg[0][1]\(1 downto 0) => \we_d_reg[0][1]\(1 downto 0)
    );
\G0[1].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_1
     port map (
      B_en => B_en,
      B_recclk => B_recclk,
      D(0) => D(1),
      Q(3 downto 0) => Q(3 downto 0),
      \doutMux_reg[1][5]\(5 downto 0) => \doutMux_reg[1][5]\(5 downto 0),
      doutSel => doutSel,
      \ff_reg[0]_0\ => \G0[1].C_FF2E_n_1\,
      rst => rst,
      \we_d_reg[1][1]\(1 downto 0) => \we_d_reg[1][1]\(1 downto 0)
    );
\G0[2].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_2
     port map (
      B_en => B_en,
      B_recclk => B_recclk,
      D(0) => D(2),
      Q(0) => Q(0),
      \doutMux_reg[1][0]\ => \G0[1].C_FF2E_n_1\,
      \doutMux_reg[1][1]\ => \G0[3].C_FF2E_n_1\,
      doutSel => doutSel,
      rst => rst,
      \we_d_reg[2][1]\(1 downto 0) => \we_d_reg[2][1]\(1 downto 0)
    );
\G0[3].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_3
     port map (
      B_en => B_en,
      B_recclk => B_recclk,
      D(0) => D(3),
      Q(3 downto 0) => Q(3 downto 0),
      \doutMux_reg[1][2]\ => \G0[4].C_FF2E_n_1\,
      \doutMux_reg[1][5]\(2) => \doutMux_reg[1][5]\(5),
      \doutMux_reg[1][5]\(1) => \doutMux_reg[1][5]\(3),
      \doutMux_reg[1][5]\(0) => \doutMux_reg[1][5]\(1),
      doutSel => doutSel,
      \ff_reg[1]_0\ => \G0[3].C_FF2E_n_1\,
      rst => rst,
      \we_d_reg[3][1]\(1 downto 0) => \we_d_reg[3][1]\(1 downto 0)
    );
\G0[4].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_4
     port map (
      B_en => B_en,
      B_recclk => B_recclk,
      D(0) => D(4),
      Q(3 downto 0) => Q(3 downto 0),
      \doutMux_reg[1][5]\(5 downto 0) => \doutMux_reg[1][5]\(5 downto 0),
      doutSel => doutSel,
      \ff_reg[0]_0\ => \G0[4].C_FF2E_n_1\,
      rst => rst,
      \we_d_reg[4][1]\(1 downto 0) => \we_d_reg[4][1]\(1 downto 0)
    );
\G0[5].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_5
     port map (
      B_en => B_en,
      B_recclk => B_recclk,
      D(0) => D(5),
      \bitSel_d_reg[1][0]\ => \G0[7].C_FF2E_n_1\,
      \bitSel_d_reg[1][3]\(3 downto 0) => \bitSel_d_reg[1][3]\(3 downto 0),
      \doutMux_reg[1][3]\(1 downto 0) => \doutMux_reg[1][5]\(3 downto 2),
      doutSel => doutSel,
      rst => rst,
      \we_d_reg[5][1]\(1 downto 0) => \we_d_reg[5][1]\(1 downto 0)
    );
\G0[6].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_6
     port map (
      B_en => B_en,
      B_recclk => B_recclk,
      D(0) => D(6),
      \bitSel_d_reg[1][3]\(3 downto 0) => \bitSel_d_reg[1][3]\(3 downto 0),
      \doutMux_reg[1][2]\ => \G0[7].C_FF2E_n_4\,
      \doutMux_reg[1][3]\ => \G0[7].C_FF2E_n_3\,
      \doutMux_reg[1][5]\(4 downto 0) => \doutMux_reg[1][5]\(5 downto 1),
      doutSel => doutSel,
      \ff_reg[0]_0\ => \G0[6].C_FF2E_n_1\,
      rst => rst,
      \we_d_reg[6][1]\(1 downto 0) => \we_d_reg[6][1]\(1 downto 0)
    );
\G0[7].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_7
     port map (
      B_en => B_en,
      B_recclk => B_recclk,
      D(0) => D(7),
      \bitSel_d_reg[1][3]\(3 downto 0) => \bitSel_d_reg[1][3]\(3 downto 0),
      \doutMux_reg[1][5]\(5 downto 0) => \doutMux_reg[1][5]\(5 downto 0),
      doutSel => doutSel,
      \ff_reg[0]_0\ => \G0[7].C_FF2E_n_1\,
      \ff_reg[0]_1\ => \G0[7].C_FF2E_n_2\,
      \ff_reg[0]_2\ => \G0[7].C_FF2E_n_3\,
      \ff_reg[0]_3\ => \G0[7].C_FF2E_n_4\,
      rst => rst,
      \we_d_reg[7][1]\(1 downto 0) => \we_d_reg[7][1]\(1 downto 0)
    );
\G0[8].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_8
     port map (
      B_en => B_en,
      B_recclk => B_recclk,
      D(0) => D(8),
      \bitSel_d_reg[1][3]\(3 downto 0) => \bitSel_d_reg[1][3]\(3 downto 0),
      \doutMux_reg[1][0]\ => \G0[9].C_FF2E_n_1\,
      \doutMux_reg[1][4]\ => \G0[6].C_FF2E_n_1\,
      \doutMux_reg[1][5]\(1) => \doutMux_reg[1][5]\(5),
      \doutMux_reg[1][5]\(0) => \doutMux_reg[1][5]\(3),
      doutSel => doutSel,
      rst => rst,
      \we_d_reg[8][1]\(1 downto 0) => \we_d_reg[8][1]\(1 downto 0)
    );
\G0[9].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_9
     port map (
      B_en => B_en,
      B_recclk => B_recclk,
      D(0) => D(9),
      \bitSel_d_reg[1][3]\(3 downto 0) => \bitSel_d_reg[1][3]\(3 downto 0),
      \doutMux_reg[1][5]\ => \G0[7].C_FF2E_n_2\,
      \doutMux_reg[1][5]_0\(3 downto 2) => \doutMux_reg[1][5]\(5 downto 4),
      \doutMux_reg[1][5]_0\(1 downto 0) => \doutMux_reg[1][5]\(1 downto 0),
      doutSel => doutSel,
      \ff_reg[1]_0\ => \G0[9].C_FF2E_n_1\,
      rst => rst,
      \we_d_reg[9][1]\(1 downto 0) => \we_d_reg[9][1]\(1 downto 0)
    );
doutRdy_i_reg: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => byteRdy_d_reg,
      Q => doutRdy_i,
      R => rst
    );
doutRdy_reg: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => doutRdy_i,
      Q => B_doutEn_i,
      R => rst
    );
doutSel_i_reg: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => bankSel_d_reg,
      Q => doutSel,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_10b_10 is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    A_dout20bEn0 : out STD_LOGIC;
    A_dout10bEn : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    A_dout20bEn_i_reg : out STD_LOGIC;
    rst : in STD_LOGIC;
    A_en : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    byteRdy_d_reg : in STD_LOGIC;
    bankSel_d_reg : in STD_LOGIC;
    A_dout20bEn_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[1][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[2][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[3][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[4][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[5][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[6][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[7][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[8][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \we_d_reg[9][1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \bitSel_d_reg[0][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \doutMux_reg[1][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \bitSel_d_reg[1][3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_10b_10 : entity is "ff_fifo2e_10b";
end design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_10b_10;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_10b_10 is
  signal A_doutEn_i : STD_LOGIC;
  signal \G0[1].C_FF2E_n_1\ : STD_LOGIC;
  signal \G0[2].C_FF2E_n_1\ : STD_LOGIC;
  signal \G0[6].C_FF2E_n_1\ : STD_LOGIC;
  signal \G0[7].C_FF2E_n_1\ : STD_LOGIC;
  signal doutRdy_i : STD_LOGIC;
  signal doutSel : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of A_dout10bEn_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of A_dout20bEn_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of A_dout20bEn_i_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \A_dout20b_i[19]_i_1\ : label is "soft_lutpair1";
begin
A_dout10bEn_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A_doutEn_i,
      I1 => A_en,
      O => A_dout10bEn
    );
A_dout20bEn_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => A_en,
      I1 => A_doutEn_i,
      I2 => A_dout20bEn_i,
      O => A_dout20bEn0
    );
A_dout20bEn_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => A_en,
      I1 => A_doutEn_i,
      I2 => A_dout20bEn_i,
      O => A_dout20bEn_i_reg
    );
\A_dout20b_i[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A_en,
      I1 => A_doutEn_i,
      O => E(0)
    );
\G0[0].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_11
     port map (
      A_en => A_en,
      A_recclk => A_recclk,
      D(0) => D(0),
      Q(1 downto 0) => Q(1 downto 0),
      \bitSel_d_reg[0][3]\(3 downto 0) => \bitSel_d_reg[0][3]\(3 downto 0),
      \doutMux_reg[1][1]\ => \G0[2].C_FF2E_n_1\,
      \doutMux_reg[1][2]\(0) => \doutMux_reg[1][2]\(2),
      doutSel => doutSel,
      rst => rst
    );
\G0[1].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_12
     port map (
      A_en => A_en,
      A_recclk => A_recclk,
      D(0) => D(1),
      \bitSel_d_reg[0][3]\(3 downto 0) => \bitSel_d_reg[0][3]\(3 downto 0),
      \doutMux_reg[1][2]\(2 downto 0) => \doutMux_reg[1][2]\(2 downto 0),
      doutSel => doutSel,
      \ff_reg[0]_0\ => \G0[1].C_FF2E_n_1\,
      rst => rst,
      \we_d_reg[1][1]\(1 downto 0) => \we_d_reg[1][1]\(1 downto 0)
    );
\G0[2].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_13
     port map (
      A_en => A_en,
      A_recclk => A_recclk,
      D(0) => D(2),
      \bitSel_d_reg[0][3]\(3 downto 0) => \bitSel_d_reg[0][3]\(3 downto 0),
      \doutMux_reg[1][2]\(2 downto 0) => \doutMux_reg[1][2]\(2 downto 0),
      doutSel => doutSel,
      \ff_reg[0]_0\ => \G0[2].C_FF2E_n_1\,
      rst => rst,
      \we_d_reg[2][1]\(1 downto 0) => \we_d_reg[2][1]\(1 downto 0)
    );
\G0[3].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_14
     port map (
      A_en => A_en,
      A_recclk => A_recclk,
      D(0) => D(3),
      \bitSel_d_reg[0][3]\(3 downto 0) => \bitSel_d_reg[0][3]\(3 downto 0),
      \doutMux_reg[1][0]\(0) => \doutMux_reg[1][2]\(0),
      \doutMux_reg[1][2]\ => \G0[1].C_FF2E_n_1\,
      doutSel => doutSel,
      rst => rst,
      \we_d_reg[3][1]\(1 downto 0) => \we_d_reg[3][1]\(1 downto 0)
    );
\G0[4].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_15
     port map (
      A_en => A_en,
      A_recclk => A_recclk,
      D(0) => D(4),
      \bitSel_d_reg[0][3]\(3 downto 0) => \bitSel_d_reg[0][3]\(3 downto 0),
      \doutMux_reg[1][1]\ => \G0[2].C_FF2E_n_1\,
      \doutMux_reg[1][2]\(0) => \doutMux_reg[1][2]\(2),
      doutSel => doutSel,
      rst => rst,
      \we_d_reg[4][1]\(1 downto 0) => \we_d_reg[4][1]\(1 downto 0)
    );
\G0[5].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_16
     port map (
      A_en => A_en,
      A_recclk => A_recclk,
      D(0) => D(5),
      \bitSel_d_reg[1][3]\(3 downto 0) => \bitSel_d_reg[1][3]\(3 downto 0),
      \doutMux_reg[1][1]\ => \G0[7].C_FF2E_n_1\,
      \doutMux_reg[1][2]\(0) => \doutMux_reg[1][2]\(2),
      doutSel => doutSel,
      rst => rst,
      \we_d_reg[5][1]\(1 downto 0) => \we_d_reg[5][1]\(1 downto 0)
    );
\G0[6].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_17
     port map (
      A_en => A_en,
      A_recclk => A_recclk,
      D(0) => D(6),
      \bitSel_d_reg[1][3]\(3 downto 0) => \bitSel_d_reg[1][3]\(3 downto 0),
      \doutMux_reg[1][2]\(2 downto 0) => \doutMux_reg[1][2]\(2 downto 0),
      doutSel => doutSel,
      \ff_reg[0]_0\ => \G0[6].C_FF2E_n_1\,
      rst => rst,
      \we_d_reg[6][1]\(1 downto 0) => \we_d_reg[6][1]\(1 downto 0)
    );
\G0[7].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_18
     port map (
      A_en => A_en,
      A_recclk => A_recclk,
      D(0) => D(7),
      \bitSel_d_reg[1][3]\(3 downto 0) => \bitSel_d_reg[1][3]\(3 downto 0),
      \doutMux_reg[1][2]\(2 downto 0) => \doutMux_reg[1][2]\(2 downto 0),
      doutSel => doutSel,
      \ff_reg[0]_0\ => \G0[7].C_FF2E_n_1\,
      rst => rst,
      \we_d_reg[7][1]\(1 downto 0) => \we_d_reg[7][1]\(1 downto 0)
    );
\G0[8].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_19
     port map (
      A_en => A_en,
      A_recclk => A_recclk,
      D(0) => D(8),
      \bitSel_d_reg[1][3]\(3 downto 0) => \bitSel_d_reg[1][3]\(3 downto 0),
      \doutMux_reg[1][0]\(0) => \doutMux_reg[1][2]\(0),
      \doutMux_reg[1][2]\ => \G0[6].C_FF2E_n_1\,
      doutSel => doutSel,
      rst => rst,
      \we_d_reg[8][1]\(1 downto 0) => \we_d_reg[8][1]\(1 downto 0)
    );
\G0[9].C_FF2E\: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_20
     port map (
      A_en => A_en,
      A_recclk => A_recclk,
      D(0) => D(9),
      \bitSel_d_reg[1][3]\(3 downto 0) => \bitSel_d_reg[1][3]\(3 downto 0),
      \doutMux_reg[1][1]\ => \G0[7].C_FF2E_n_1\,
      \doutMux_reg[1][2]\(0) => \doutMux_reg[1][2]\(2),
      doutSel => doutSel,
      rst => rst,
      \we_d_reg[9][1]\(1 downto 0) => \we_d_reg[9][1]\(1 downto 0)
    );
doutRdy_i_reg: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => byteRdy_d_reg,
      Q => doutRdy_i,
      R => rst
    );
doutRdy_reg: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => doutRdy_i,
      Q => A_doutEn_i,
      R => rst
    );
doutSel_i_reg: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => bankSel_d_reg,
      Q => doutSel,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_os48_1011x20bTo10b is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    A_dout20bEn0 : out STD_LOGIC;
    A_dout10bEn : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    A_dout20bEn_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC;
    A_en : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    DOA : in STD_LOGIC_VECTOR ( 29 downto 0 );
    A_dout20bEn_i : in STD_LOGIC;
    A_din20b : in STD_LOGIC_VECTOR ( 19 downto 0 );
    bitOrderDinLSB : in STD_LOGIC;
    \edge_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_os48_1011x20bTo10b : entity is "os48_1011x20bTo10b";
end design_1_os48_1011x20bTo10b_top2_0_0_os48_1011x20bTo10b;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_os48_1011x20bTo10b is
  signal bankSel_d_reg_n_0 : STD_LOGIC;
  signal \bitSel_d_reg[0]_4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bitSel_d_reg[1]_5\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal busInv : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal byteRdy_d_reg_n_0 : STD_LOGIC;
  signal data1 : STD_LOGIC;
  signal data2 : STD_LOGIC;
  signal data3 : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal data5 : STD_LOGIC;
  signal \din_d_reg[0]_0\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \din_d_reg[1]_1\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \din_d_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \doutMux[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \doutMux[0][0]_i_3_n_0\ : STD_LOGIC;
  signal \doutMux[0][1]_i_2_n_0\ : STD_LOGIC;
  signal \doutMux[0][1]_i_3_n_0\ : STD_LOGIC;
  signal \doutMux[0][2]_i_2_n_0\ : STD_LOGIC;
  signal \doutMux[0][2]_i_3_n_0\ : STD_LOGIC;
  signal \doutMux[0]_36\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \doutMux_reg[0]_2\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \doutMux_reg[1]_3\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal edge4x : STD_LOGIC;
  signal \edge8x[0]_i_1_n_0\ : STD_LOGIC;
  signal \edge8x[1]_i_1_n_0\ : STD_LOGIC;
  signal \edge8x[2]_i_1_n_0\ : STD_LOGIC;
  signal \edge8x[3]_i_1_n_0\ : STD_LOGIC;
  signal \edge8x[4]_i_1_n_0\ : STD_LOGIC;
  signal \edge8x[5]_i_1_n_0\ : STD_LOGIC;
  signal \edge8x[6]_i_1_n_0\ : STD_LOGIC;
  signal \edge8x[7]_i_2_n_0\ : STD_LOGIC;
  signal \edge8x_reg_n_0_[0]\ : STD_LOGIC;
  signal \edge8x_reg_n_0_[1]\ : STD_LOGIC;
  signal \edge8x_reg_n_0_[3]\ : STD_LOGIC;
  signal \edge8x_reg_n_0_[5]\ : STD_LOGIC;
  signal \edge8x_reg_n_0_[7]\ : STD_LOGIC;
  signal \edge[0]_i_2_n_0\ : STD_LOGIC;
  signal \edge[0]_i_3_n_0\ : STD_LOGIC;
  signal \edge[1]_i_2_n_0\ : STD_LOGIC;
  signal \edge[2]_i_2_n_0\ : STD_LOGIC;
  signal \edge[3]_i_2_n_0\ : STD_LOGIC;
  signal \edge[3]_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal index266_in : STD_LOGIC;
  signal index269_in : STD_LOGIC;
  signal index272_in : STD_LOGIC;
  signal \index2_inferred__22/i__carry_n_3\ : STD_LOGIC;
  signal \index2_inferred__23/i__carry_n_3\ : STD_LOGIC;
  signal \index2_inferred__24/i__carry_n_3\ : STD_LOGIC;
  signal inp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in100_in : STD_LOGIC;
  signal p_0_in102_in : STD_LOGIC;
  signal p_0_in104_in : STD_LOGIC;
  signal p_0_in106_in : STD_LOGIC;
  signal p_0_in108_in : STD_LOGIC;
  signal p_0_in110_in : STD_LOGIC;
  signal p_0_in58_in : STD_LOGIC;
  signal p_0_in64_in : STD_LOGIC;
  signal p_0_in70_in : STD_LOGIC;
  signal p_0_in91_in : STD_LOGIC;
  signal p_0_in94_in : STD_LOGIC;
  signal p_0_in96_in : STD_LOGIC;
  signal p_0_in98_in : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_26_in : STD_LOGIC;
  signal p_27_in : STD_LOGIC;
  signal p_34_in : STD_LOGIC;
  signal p_35_in : STD_LOGIC;
  signal p_36_in : STD_LOGIC;
  signal p_37_in : STD_LOGIC;
  signal p_38_in : STD_LOGIC;
  signal p_39_in : STD_LOGIC;
  signal p_40_in : STD_LOGIC;
  signal p_41_in : STD_LOGIC;
  signal p_42_in : STD_LOGIC;
  signal p_43_in : STD_LOGIC;
  signal p_45_in : STD_LOGIC;
  signal p_46_in : STD_LOGIC;
  signal p_47_in : STD_LOGIC;
  signal p_48_in : STD_LOGIC;
  signal p_49_in : STD_LOGIC;
  signal p_50_in : STD_LOGIC;
  signal p_51_in : STD_LOGIC;
  signal p_52_in : STD_LOGIC;
  signal p_53_in : STD_LOGIC;
  signal p_75_in : STD_LOGIC;
  signal \we_d_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[8][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[9][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[9][1]\ : STD_LOGIC;
  signal \NLW_index2_inferred__22/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__22/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index2_inferred__23/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__23/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index2_inferred__24/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__24/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \din20b_d[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \din20b_d[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \din20b_d[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \din20b_d[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \din20b_d[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \din20b_d[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \din20b_d[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \din20b_d[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \din20b_d[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \din20b_d[9]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \din_d[0][0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \din_d[0][1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \din_d[0][2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \din_d[0][3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \din_d[0][4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \din_d[0][5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \din_d[0][6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \din_d[0][7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \din_d[0][8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \din_d[0][9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \edge[0]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \edge[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \edge[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \edge[3]_i_2\ : label is "soft_lutpair2";
begin
C_FFFIFO: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_10b_10
     port map (
      A_dout10bEn => A_dout10bEn,
      A_dout20bEn0 => A_dout20bEn0,
      A_dout20bEn_i => A_dout20bEn_i,
      A_dout20bEn_i_reg => A_dout20bEn_i_reg,
      A_en => A_en,
      A_recclk => A_recclk,
      D(9 downto 0) => D(9 downto 0),
      E(0) => E(0),
      Q(1) => \we_d_reg_n_0_[0][1]\,
      Q(0) => \we_d_reg_n_0_[0][0]\,
      bankSel_d_reg => bankSel_d_reg_n_0,
      \bitSel_d_reg[0][3]\(3 downto 0) => \bitSel_d_reg[0]_4\(3 downto 0),
      \bitSel_d_reg[1][3]\(3 downto 0) => \bitSel_d_reg[1]_5\(3 downto 0),
      byteRdy_d_reg => byteRdy_d_reg_n_0,
      \doutMux_reg[1][2]\(2 downto 0) => \doutMux_reg[1]_3\(2 downto 0),
      rst => rst,
      \we_d_reg[1][1]\(1) => \we_d_reg_n_0_[1][1]\,
      \we_d_reg[1][1]\(0) => \we_d_reg_n_0_[1][0]\,
      \we_d_reg[2][1]\(1) => \we_d_reg_n_0_[2][1]\,
      \we_d_reg[2][1]\(0) => \we_d_reg_n_0_[2][0]\,
      \we_d_reg[3][1]\(1) => \we_d_reg_n_0_[3][1]\,
      \we_d_reg[3][1]\(0) => \we_d_reg_n_0_[3][0]\,
      \we_d_reg[4][1]\(1) => \we_d_reg_n_0_[4][1]\,
      \we_d_reg[4][1]\(0) => \we_d_reg_n_0_[4][0]\,
      \we_d_reg[5][1]\(1) => \we_d_reg_n_0_[5][1]\,
      \we_d_reg[5][1]\(0) => \we_d_reg_n_0_[5][0]\,
      \we_d_reg[6][1]\(1) => \we_d_reg_n_0_[6][1]\,
      \we_d_reg[6][1]\(0) => \we_d_reg_n_0_[6][0]\,
      \we_d_reg[7][1]\(1) => \we_d_reg_n_0_[7][1]\,
      \we_d_reg[7][1]\(0) => \we_d_reg_n_0_[7][0]\,
      \we_d_reg[8][1]\(1) => \we_d_reg_n_0_[8][1]\,
      \we_d_reg[8][1]\(0) => \we_d_reg_n_0_[8][0]\,
      \we_d_reg[9][1]\(1) => \we_d_reg_n_0_[9][1]\,
      \we_d_reg[9][1]\(0) => \we_d_reg_n_0_[9][0]\
    );
bankSel_d_reg: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(29),
      Q => bankSel_d_reg_n_0,
      R => rst
    );
\bitSel_d_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(20),
      Q => \bitSel_d_reg[0]_4\(0),
      R => rst
    );
\bitSel_d_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(21),
      Q => \bitSel_d_reg[0]_4\(1),
      R => rst
    );
\bitSel_d_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(22),
      Q => \bitSel_d_reg[0]_4\(2),
      R => rst
    );
\bitSel_d_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(23),
      Q => \bitSel_d_reg[0]_4\(3),
      R => rst
    );
\bitSel_d_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(24),
      Q => \bitSel_d_reg[1]_5\(0),
      R => rst
    );
\bitSel_d_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(25),
      Q => \bitSel_d_reg[1]_5\(1),
      R => rst
    );
\bitSel_d_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(26),
      Q => \bitSel_d_reg[1]_5\(2),
      R => rst
    );
\bitSel_d_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(27),
      Q => \bitSel_d_reg[1]_5\(3),
      R => rst
    );
byteRdy_d_reg: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(28),
      Q => byteRdy_d_reg_n_0,
      R => rst
    );
\din20b_d[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(19),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(0),
      O => busInv(0)
    );
\din20b_d[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(18),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(1),
      O => busInv(1)
    );
\din20b_d[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(17),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(2),
      O => busInv(2)
    );
\din20b_d[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(16),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(3),
      O => busInv(3)
    );
\din20b_d[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(15),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(4),
      O => busInv(4)
    );
\din20b_d[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(14),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(5),
      O => busInv(5)
    );
\din20b_d[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(13),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(6),
      O => busInv(6)
    );
\din20b_d[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(12),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(7),
      O => busInv(7)
    );
\din20b_d[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(11),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(8),
      O => busInv(8)
    );
\din20b_d[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(10),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(9),
      O => busInv(9)
    );
\din20b_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(0),
      Q => p_0_in91_in,
      R => rst
    );
\din20b_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(1),
      Q => p_0_in94_in,
      R => rst
    );
\din20b_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(2),
      Q => p_0_in96_in,
      R => rst
    );
\din20b_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(3),
      Q => p_0_in98_in,
      R => rst
    );
\din20b_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(4),
      Q => p_0_in100_in,
      R => rst
    );
\din20b_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(5),
      Q => p_0_in102_in,
      R => rst
    );
\din20b_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(6),
      Q => p_0_in104_in,
      R => rst
    );
\din20b_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(7),
      Q => p_0_in106_in,
      R => rst
    );
\din20b_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(8),
      Q => p_0_in108_in,
      R => rst
    );
\din20b_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(9),
      Q => p_0_in110_in,
      R => rst
    );
\din_d[0][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(9),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(10),
      O => busInv(10)
    );
\din_d[0][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(8),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(11),
      O => busInv(11)
    );
\din_d[0][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(7),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(12),
      O => busInv(12)
    );
\din_d[0][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(6),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(13),
      O => busInv(13)
    );
\din_d[0][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(5),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(14),
      O => busInv(14)
    );
\din_d[0][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(4),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(15),
      O => busInv(15)
    );
\din_d[0][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(3),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(16),
      O => busInv(16)
    );
\din_d[0][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(2),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(17),
      O => busInv(17)
    );
\din_d[0][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(1),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(18),
      O => busInv(18)
    );
\din_d[0][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_din20b(0),
      I1 => bitOrderDinLSB,
      I2 => A_din20b(19),
      O => busInv(19)
    );
\din_d_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(10),
      Q => \din_d_reg[0]_0\(0),
      R => rst
    );
\din_d_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => p_0_in91_in,
      Q => \din_d_reg[0]_0\(10),
      R => rst
    );
\din_d_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => p_0_in94_in,
      Q => \din_d_reg[0]_0\(11),
      R => rst
    );
\din_d_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => p_0_in96_in,
      Q => \din_d_reg[0]_0\(12),
      R => rst
    );
\din_d_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => p_0_in98_in,
      Q => \din_d_reg[0]_0\(13),
      R => rst
    );
\din_d_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => p_0_in100_in,
      Q => \din_d_reg[0]_0\(14),
      R => rst
    );
\din_d_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => p_0_in102_in,
      Q => \din_d_reg[0]_0\(15),
      R => rst
    );
\din_d_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => p_0_in104_in,
      Q => \din_d_reg[0]_0\(16),
      R => rst
    );
\din_d_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => p_0_in106_in,
      Q => \din_d_reg[0]_0\(17),
      R => rst
    );
\din_d_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => p_0_in108_in,
      Q => \din_d_reg[0]_0\(18),
      R => rst
    );
\din_d_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => p_0_in110_in,
      Q => \din_d_reg[0]_0\(19),
      R => rst
    );
\din_d_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(11),
      Q => \din_d_reg[0]_0\(1),
      R => rst
    );
\din_d_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(12),
      Q => \din_d_reg[0]_0\(2),
      R => rst
    );
\din_d_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(13),
      Q => \din_d_reg[0]_0\(3),
      R => rst
    );
\din_d_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(14),
      Q => \din_d_reg[0]_0\(4),
      R => rst
    );
\din_d_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(15),
      Q => \din_d_reg[0]_0\(5),
      R => rst
    );
\din_d_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(16),
      Q => \din_d_reg[0]_0\(6),
      R => rst
    );
\din_d_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(17),
      Q => \din_d_reg[0]_0\(7),
      R => rst
    );
\din_d_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(18),
      Q => \din_d_reg[0]_0\(8),
      R => rst
    );
\din_d_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => busInv(19),
      Q => \din_d_reg[0]_0\(9),
      R => rst
    );
\din_d_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(0),
      Q => \din_d_reg[1]_1\(0),
      R => rst
    );
\din_d_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(10),
      Q => \din_d_reg[1]_1\(10),
      R => rst
    );
\din_d_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(11),
      Q => \din_d_reg[1]_1\(11),
      R => rst
    );
\din_d_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(12),
      Q => \din_d_reg[1]_1\(12),
      R => rst
    );
\din_d_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(13),
      Q => \din_d_reg[1]_1\(13),
      R => rst
    );
\din_d_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(14),
      Q => \din_d_reg[1]_1\(14),
      R => rst
    );
\din_d_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(15),
      Q => \din_d_reg[1]_1\(15),
      R => rst
    );
\din_d_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(16),
      Q => \din_d_reg[1]_1\(16),
      R => rst
    );
\din_d_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(17),
      Q => \din_d_reg[1]_1\(17),
      R => rst
    );
\din_d_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(18),
      Q => \din_d_reg[1]_1\(18),
      R => rst
    );
\din_d_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(19),
      Q => \din_d_reg[1]_1\(19),
      R => rst
    );
\din_d_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(1),
      Q => \din_d_reg[1]_1\(1),
      R => rst
    );
\din_d_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(2),
      Q => \din_d_reg[1]_1\(2),
      R => rst
    );
\din_d_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(3),
      Q => \din_d_reg[1]_1\(3),
      R => rst
    );
\din_d_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(4),
      Q => \din_d_reg[1]_1\(4),
      R => rst
    );
\din_d_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(5),
      Q => \din_d_reg[1]_1\(5),
      R => rst
    );
\din_d_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(6),
      Q => \din_d_reg[1]_1\(6),
      R => rst
    );
\din_d_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(7),
      Q => \din_d_reg[1]_1\(7),
      R => rst
    );
\din_d_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(8),
      Q => \din_d_reg[1]_1\(8),
      R => rst
    );
\din_d_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[0]_0\(9),
      Q => \din_d_reg[1]_1\(9),
      R => rst
    );
\din_d_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(0),
      Q => \din_d_reg_n_0_[2][0]\,
      R => rst
    );
\din_d_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(10),
      Q => p_43_in,
      R => rst
    );
\din_d_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(11),
      Q => p_42_in,
      R => rst
    );
\din_d_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(12),
      Q => p_41_in,
      R => rst
    );
\din_d_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(13),
      Q => p_40_in,
      R => rst
    );
\din_d_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(14),
      Q => p_39_in,
      R => rst
    );
\din_d_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(15),
      Q => p_38_in,
      R => rst
    );
\din_d_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(16),
      Q => p_37_in,
      R => rst
    );
\din_d_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(17),
      Q => p_36_in,
      R => rst
    );
\din_d_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(18),
      Q => p_35_in,
      R => rst
    );
\din_d_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(19),
      Q => p_34_in,
      R => rst
    );
\din_d_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(1),
      Q => data1,
      R => rst
    );
\din_d_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg_n_0_[2][0]\,
      Q => p_75_in,
      R => rst
    );
\din_d_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => data1,
      Q => p_53_in,
      R => rst
    );
\din_d_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => data2,
      Q => p_52_in,
      R => rst
    );
\din_d_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => data3,
      Q => p_51_in,
      R => rst
    );
\din_d_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => data4,
      Q => p_50_in,
      R => rst
    );
\din_d_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => data5,
      Q => p_49_in,
      R => rst
    );
\din_d_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => p_27_in,
      Q => p_48_in,
      R => rst
    );
\din_d_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => p_26_in,
      Q => p_47_in,
      R => rst
    );
\din_d_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => p_25_in,
      Q => p_46_in,
      R => rst
    );
\din_d_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => p_24_in,
      Q => p_45_in,
      R => rst
    );
\din_d_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(2),
      Q => data2,
      R => rst
    );
\din_d_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(3),
      Q => data3,
      R => rst
    );
\din_d_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(4),
      Q => data4,
      R => rst
    );
\din_d_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(5),
      Q => data5,
      R => rst
    );
\din_d_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(6),
      Q => p_27_in,
      R => rst
    );
\din_d_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(7),
      Q => p_26_in,
      R => rst
    );
\din_d_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(8),
      Q => p_25_in,
      R => rst
    );
\din_d_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \din_d_reg[1]_1\(9),
      Q => p_24_in,
      R => rst
    );
\doutMux[0][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_40_in,
      I1 => \edge_reg[3]_0\(3),
      I2 => \doutMux[0][0]_i_2_n_0\,
      I3 => \edge_reg[3]_0\(2),
      I4 => \doutMux[0][0]_i_3_n_0\,
      O => \doutMux[0]_36\(0)
    );
\doutMux[0][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_40_in,
      I1 => p_41_in,
      I2 => \edge_reg[3]_0\(1),
      I3 => p_42_in,
      I4 => \edge_reg[3]_0\(0),
      I5 => p_43_in,
      O => \doutMux[0][0]_i_2_n_0\
    );
\doutMux[0][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_24_in,
      I1 => p_25_in,
      I2 => \edge_reg[3]_0\(1),
      I3 => p_26_in,
      I4 => \edge_reg[3]_0\(0),
      I5 => p_27_in,
      O => \doutMux[0][0]_i_3_n_0\
    );
\doutMux[0][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_53_in,
      I1 => \edge_reg[3]_0\(3),
      I2 => \doutMux[0][1]_i_2_n_0\,
      I3 => \edge_reg[3]_0\(2),
      I4 => \doutMux[0][1]_i_3_n_0\,
      O => \doutMux[0]_36\(1)
    );
\doutMux[0][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_53_in,
      I1 => p_75_in,
      I2 => \edge_reg[3]_0\(1),
      I3 => p_34_in,
      I4 => \edge_reg[3]_0\(0),
      I5 => p_35_in,
      O => \doutMux[0][1]_i_2_n_0\
    );
\doutMux[0][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_36_in,
      I1 => p_37_in,
      I2 => \edge_reg[3]_0\(1),
      I3 => p_38_in,
      I4 => \edge_reg[3]_0\(0),
      I5 => p_39_in,
      O => \doutMux[0][1]_i_3_n_0\
    );
\doutMux[0][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_45_in,
      I1 => \edge_reg[3]_0\(3),
      I2 => \doutMux[0][2]_i_2_n_0\,
      I3 => \edge_reg[3]_0\(2),
      I4 => \doutMux[0][2]_i_3_n_0\,
      O => \doutMux[0]_36\(2)
    );
\doutMux[0][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_45_in,
      I1 => p_46_in,
      I2 => \edge_reg[3]_0\(1),
      I3 => p_47_in,
      I4 => \edge_reg[3]_0\(0),
      I5 => p_48_in,
      O => \doutMux[0][2]_i_2_n_0\
    );
\doutMux[0][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_49_in,
      I1 => p_50_in,
      I2 => \edge_reg[3]_0\(1),
      I3 => p_51_in,
      I4 => \edge_reg[3]_0\(0),
      I5 => p_52_in,
      O => \doutMux[0][2]_i_3_n_0\
    );
\doutMux_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \doutMux[0]_36\(0),
      Q => \doutMux_reg[0]_2\(0),
      R => rst
    );
\doutMux_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \doutMux[0]_36\(1),
      Q => \doutMux_reg[0]_2\(1),
      R => rst
    );
\doutMux_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \doutMux[0]_36\(2),
      Q => \doutMux_reg[0]_2\(2),
      R => rst
    );
\doutMux_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \doutMux_reg[0]_2\(0),
      Q => \doutMux_reg[1]_3\(0),
      R => rst
    );
\doutMux_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \doutMux_reg[0]_2\(1),
      Q => \doutMux_reg[1]_3\(1),
      R => rst
    );
\doutMux_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => \doutMux_reg[0]_2\(2),
      Q => \doutMux_reg[1]_3\(2),
      R => rst
    );
\edge8x[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_0_in98_in,
      I1 => p_0_in100_in,
      I2 => \din_d_reg[0]_0\(1),
      I3 => \din_d_reg[0]_0\(2),
      I4 => busInv(15),
      I5 => busInv(16),
      O => \edge8x[0]_i_1_n_0\
    );
\edge8x[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_0_in100_in,
      I1 => p_0_in102_in,
      I2 => \din_d_reg[0]_0\(2),
      I3 => \din_d_reg[0]_0\(3),
      I4 => busInv(16),
      I5 => busInv(17),
      O => \edge8x[1]_i_1_n_0\
    );
\edge8x[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_0_in102_in,
      I1 => p_0_in104_in,
      I2 => \din_d_reg[0]_0\(3),
      I3 => \din_d_reg[0]_0\(4),
      I4 => busInv(17),
      I5 => busInv(18),
      O => \edge8x[2]_i_1_n_0\
    );
\edge8x[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_0_in104_in,
      I1 => p_0_in106_in,
      I2 => \din_d_reg[0]_0\(4),
      I3 => \din_d_reg[0]_0\(5),
      I4 => busInv(18),
      I5 => busInv(19),
      O => \edge8x[3]_i_1_n_0\
    );
\edge8x[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_0_in106_in,
      I1 => p_0_in108_in,
      I2 => \din_d_reg[0]_0\(5),
      I3 => \din_d_reg[0]_0\(6),
      I4 => busInv(19),
      I5 => p_0_in91_in,
      O => \edge8x[4]_i_1_n_0\
    );
\edge8x[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \din_d_reg[0]_0\(7),
      I1 => \din_d_reg[0]_0\(6),
      I2 => p_0_in108_in,
      I3 => p_0_in110_in,
      I4 => p_0_in91_in,
      I5 => p_0_in94_in,
      O => \edge8x[5]_i_1_n_0\
    );
\edge8x[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \din_d_reg[0]_0\(8),
      I1 => \din_d_reg[0]_0\(7),
      I2 => p_0_in94_in,
      I3 => p_0_in96_in,
      I4 => p_0_in110_in,
      I5 => \din_d_reg[0]_0\(0),
      O => \edge8x[6]_i_1_n_0\
    );
\edge8x[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => A_en,
      I1 => rst,
      O => edge4x
    );
\edge8x[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \din_d_reg[0]_0\(9),
      I1 => \din_d_reg[0]_0\(8),
      I2 => \din_d_reg[0]_0\(0),
      I3 => \din_d_reg[0]_0\(1),
      I4 => p_0_in96_in,
      I5 => p_0_in98_in,
      O => \edge8x[7]_i_2_n_0\
    );
\edge8x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => edge4x,
      D => \edge8x[0]_i_1_n_0\,
      Q => \edge8x_reg_n_0_[0]\,
      R => '0'
    );
\edge8x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => edge4x,
      D => \edge8x[1]_i_1_n_0\,
      Q => \edge8x_reg_n_0_[1]\,
      R => '0'
    );
\edge8x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => edge4x,
      D => \edge8x[2]_i_1_n_0\,
      Q => p_0_in58_in,
      R => '0'
    );
\edge8x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => edge4x,
      D => \edge8x[3]_i_1_n_0\,
      Q => \edge8x_reg_n_0_[3]\,
      R => '0'
    );
\edge8x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => edge4x,
      D => \edge8x[4]_i_1_n_0\,
      Q => p_0_in64_in,
      R => '0'
    );
\edge8x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => edge4x,
      D => \edge8x[5]_i_1_n_0\,
      Q => \edge8x_reg_n_0_[5]\,
      R => '0'
    );
\edge8x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => edge4x,
      D => \edge8x[6]_i_1_n_0\,
      Q => p_0_in70_in,
      R => '0'
    );
\edge8x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => edge4x,
      D => \edge8x[7]_i_2_n_0\,
      Q => \edge8x_reg_n_0_[7]\,
      R => '0'
    );
\edge[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \edge[0]_i_2_n_0\,
      I1 => \edge8x_reg_n_0_[7]\,
      I2 => index272_in,
      O => inp(0)
    );
\edge[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFBAAFA"
    )
        port map (
      I0 => \edge[3]_i_3_n_0\,
      I1 => p_0_in58_in,
      I2 => \edge8x_reg_n_0_[1]\,
      I3 => \edge8x_reg_n_0_[0]\,
      I4 => \edge8x_reg_n_0_[3]\,
      I5 => \edge[0]_i_3_n_0\,
      O => \edge[0]_i_2_n_0\
    );
\edge[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => index269_in,
      I1 => p_0_in70_in,
      O => \edge[0]_i_3_n_0\
    );
\edge[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \edge[1]_i_2_n_0\,
      I1 => index272_in,
      I2 => \edge8x_reg_n_0_[7]\,
      I3 => index269_in,
      I4 => p_0_in70_in,
      O => inp(1)
    );
\edge[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000E000E000E"
    )
        port map (
      I0 => p_0_in58_in,
      I1 => \edge8x_reg_n_0_[3]\,
      I2 => \edge8x_reg_n_0_[0]\,
      I3 => \edge8x_reg_n_0_[1]\,
      I4 => \edge8x_reg_n_0_[5]\,
      I5 => index266_in,
      O => \edge[1]_i_2_n_0\
    );
\edge[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \edge[3]_i_3_n_0\,
      I1 => \edge[2]_i_2_n_0\,
      I2 => index272_in,
      I3 => \edge8x_reg_n_0_[7]\,
      I4 => index269_in,
      I5 => p_0_in70_in,
      O => inp(2)
    );
\edge[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => p_0_in58_in,
      I2 => \edge8x_reg_n_0_[3]\,
      I3 => \edge8x_reg_n_0_[0]\,
      I4 => \edge8x_reg_n_0_[1]\,
      O => \edge[2]_i_2_n_0\
    );
\edge[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000022202220222"
    )
        port map (
      I0 => \edge[3]_i_2_n_0\,
      I1 => \edge[3]_i_3_n_0\,
      I2 => p_0_in70_in,
      I3 => index269_in,
      I4 => \edge8x_reg_n_0_[7]\,
      I5 => index272_in,
      O => inp(3)
    );
\edge[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => p_0_in58_in,
      I2 => \edge8x_reg_n_0_[3]\,
      I3 => \edge8x_reg_n_0_[0]\,
      I4 => \edge8x_reg_n_0_[1]\,
      O => \edge[3]_i_2_n_0\
    );
\edge[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => index266_in,
      I1 => \edge8x_reg_n_0_[5]\,
      O => \edge[3]_i_3_n_0\
    );
\edge_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => inp(0),
      Q => Q(0),
      R => rst
    );
\edge_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => inp(1),
      Q => Q(1),
      R => rst
    );
\edge_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => inp(2),
      Q => Q(2),
      R => rst
    );
\edge_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => inp(3),
      Q => Q(3),
      R => rst
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \edge8x_reg_n_0_[1]\,
      I1 => \edge8x_reg_n_0_[0]\,
      I2 => \edge8x_reg_n_0_[3]\,
      I3 => p_0_in58_in,
      I4 => p_0_in64_in,
      I5 => \edge[3]_i_3_n_0\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07770000"
    )
        port map (
      I0 => index269_in,
      I1 => p_0_in70_in,
      I2 => index266_in,
      I3 => \edge8x_reg_n_0_[5]\,
      I4 => \edge[3]_i_2_n_0\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => p_0_in58_in,
      I2 => \edge8x_reg_n_0_[3]\,
      I3 => \edge8x_reg_n_0_[0]\,
      I4 => \edge8x_reg_n_0_[1]\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000015"
    )
        port map (
      I0 => \edge[1]_i_2_n_0\,
      I1 => p_0_in70_in,
      I2 => index269_in,
      I3 => \edge[3]_i_3_n_0\,
      I4 => \edge[2]_i_2_n_0\,
      I5 => \edge[0]_i_2_n_0\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555000055550001"
    )
        port map (
      I0 => \edge[3]_i_3_n_0\,
      I1 => p_0_in64_in,
      I2 => p_0_in58_in,
      I3 => \edge8x_reg_n_0_[3]\,
      I4 => \edge8x_reg_n_0_[0]\,
      I5 => \edge8x_reg_n_0_[1]\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCCCD"
    )
        port map (
      I0 => \edge8x_reg_n_0_[1]\,
      I1 => \edge8x_reg_n_0_[0]\,
      I2 => \edge8x_reg_n_0_[3]\,
      I3 => p_0_in58_in,
      I4 => p_0_in64_in,
      O => \i__carry_i_2__1_n_0\
    );
\index2_inferred__22/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__22/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index266_in,
      CO(0) => \index2_inferred__22/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__22/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__1_n_0\,
      S(0) => \i__carry_i_2__1_n_0\
    );
\index2_inferred__23/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__23/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index269_in,
      CO(0) => \index2_inferred__23/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__23/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1_n_0\,
      S(0) => \i__carry_i_2__0_n_0\
    );
\index2_inferred__24/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__24/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index272_in,
      CO(0) => \index2_inferred__24/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__24/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__0_n_0\,
      S(0) => \i__carry_i_2_n_0\
    );
\we_d_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(0),
      Q => \we_d_reg_n_0_[0][0]\,
      R => rst
    );
\we_d_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(1),
      Q => \we_d_reg_n_0_[0][1]\,
      R => rst
    );
\we_d_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(2),
      Q => \we_d_reg_n_0_[1][0]\,
      R => rst
    );
\we_d_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(3),
      Q => \we_d_reg_n_0_[1][1]\,
      R => rst
    );
\we_d_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(4),
      Q => \we_d_reg_n_0_[2][0]\,
      R => rst
    );
\we_d_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(5),
      Q => \we_d_reg_n_0_[2][1]\,
      R => rst
    );
\we_d_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(6),
      Q => \we_d_reg_n_0_[3][0]\,
      R => rst
    );
\we_d_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(7),
      Q => \we_d_reg_n_0_[3][1]\,
      R => rst
    );
\we_d_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(8),
      Q => \we_d_reg_n_0_[4][0]\,
      R => rst
    );
\we_d_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(9),
      Q => \we_d_reg_n_0_[4][1]\,
      R => rst
    );
\we_d_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(10),
      Q => \we_d_reg_n_0_[5][0]\,
      R => rst
    );
\we_d_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(11),
      Q => \we_d_reg_n_0_[5][1]\,
      R => rst
    );
\we_d_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(12),
      Q => \we_d_reg_n_0_[6][0]\,
      R => rst
    );
\we_d_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(13),
      Q => \we_d_reg_n_0_[6][1]\,
      R => rst
    );
\we_d_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(14),
      Q => \we_d_reg_n_0_[7][0]\,
      R => rst
    );
\we_d_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(15),
      Q => \we_d_reg_n_0_[7][1]\,
      R => rst
    );
\we_d_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(16),
      Q => \we_d_reg_n_0_[8][0]\,
      R => rst
    );
\we_d_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(17),
      Q => \we_d_reg_n_0_[8][1]\,
      R => rst
    );
\we_d_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(18),
      Q => \we_d_reg_n_0_[9][0]\,
      R => rst
    );
\we_d_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => A_recclk,
      CE => A_en,
      D => DOA(19),
      Q => \we_d_reg_n_0_[9][1]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_os48_1011x20bTo10b_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    p_24_in : out STD_LOGIC;
    p_25_in : out STD_LOGIC;
    B_dout20bEn0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutMux_reg[0][2]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \doutMux_reg[0][1]_0\ : out STD_LOGIC;
    \doutMux_reg[0][0]_0\ : out STD_LOGIC;
    B_dout20bEn_i_reg : out STD_LOGIC;
    bankSel_d_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_recclk : in STD_LOGIC;
    DOB : in STD_LOGIC_VECTOR ( 29 downto 0 );
    B_dout20bEn_i : in STD_LOGIC;
    B_din20b : in STD_LOGIC_VECTOR ( 19 downto 0 );
    bitOrderDinLSB : in STD_LOGIC;
    ADDRB : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \din_d_reg[2][28]_0\ : in STD_LOGIC;
    \din_d_reg[2][9]_0\ : in STD_LOGIC;
    \din_d_reg[2][18]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_os48_1011x20bTo10b_0 : entity is "os48_1011x20bTo10b";
end design_1_os48_1011x20bTo10b_top2_0_0_os48_1011x20bTo10b_0;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_os48_1011x20bTo10b_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bankSel_d_reg_n_0 : STD_LOGIC;
  signal \bitSel_d_reg[0]_10\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bitSel_d_reg[1]_11\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal byteRdy_d_reg_n_0 : STD_LOGIC;
  signal data1 : STD_LOGIC;
  signal data2 : STD_LOGIC;
  signal data3 : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal data5 : STD_LOGIC;
  signal \din20b_d[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \din20b_d[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \din20b_d[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \din20b_d[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \din20b_d[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \din20b_d[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \din20b_d[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \din20b_d[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \din20b_d[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \din20b_d[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \din_d[0][0]_i_1__0_n_0\ : STD_LOGIC;
  signal \din_d[0][1]_i_1__0_n_0\ : STD_LOGIC;
  signal \din_d[0][2]_i_1__0_n_0\ : STD_LOGIC;
  signal \din_d[0][3]_i_1__0_n_0\ : STD_LOGIC;
  signal \din_d[0][4]_i_1__0_n_0\ : STD_LOGIC;
  signal \din_d[0][5]_i_1__0_n_0\ : STD_LOGIC;
  signal \din_d[0][6]_i_1__0_n_0\ : STD_LOGIC;
  signal \din_d[0][7]_i_1__0_n_0\ : STD_LOGIC;
  signal \din_d[0][8]_i_1__0_n_0\ : STD_LOGIC;
  signal \din_d[0][9]_i_1__0_n_0\ : STD_LOGIC;
  signal \din_d_reg[0]_6\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \din_d_reg[1]_7\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \din_d_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \doutMux[0][0]_i_11_n_0\ : STD_LOGIC;
  signal \doutMux[0][0]_i_12_n_0\ : STD_LOGIC;
  signal \doutMux[0][0]_i_13_n_0\ : STD_LOGIC;
  signal \doutMux[0][0]_i_14_n_0\ : STD_LOGIC;
  signal \doutMux[0][0]_i_2__0_n_0\ : STD_LOGIC;
  signal \doutMux[0][0]_i_3__0_n_0\ : STD_LOGIC;
  signal \doutMux[0][0]_i_5_n_0\ : STD_LOGIC;
  signal \doutMux[0][0]_i_7_n_0\ : STD_LOGIC;
  signal \doutMux[0][0]_i_8_n_0\ : STD_LOGIC;
  signal \doutMux[0][1]_i_2__0_n_0\ : STD_LOGIC;
  signal \doutMux[0][1]_i_3__0_n_0\ : STD_LOGIC;
  signal \doutMux[0][1]_i_5_n_0\ : STD_LOGIC;
  signal \doutMux[0][1]_i_6_n_0\ : STD_LOGIC;
  signal \doutMux[0][1]_i_7_n_0\ : STD_LOGIC;
  signal \doutMux[0][1]_i_8_n_0\ : STD_LOGIC;
  signal \doutMux[0][2]_i_2__0_n_0\ : STD_LOGIC;
  signal \doutMux[0][2]_i_3__0_n_0\ : STD_LOGIC;
  signal \doutMux[0][2]_i_5_n_0\ : STD_LOGIC;
  signal \doutMux[0][2]_i_6_n_0\ : STD_LOGIC;
  signal \doutMux[0][2]_i_7_n_0\ : STD_LOGIC;
  signal \doutMux[0][2]_i_8_n_0\ : STD_LOGIC;
  signal \doutMux[0][3]_i_2_n_0\ : STD_LOGIC;
  signal \doutMux[0][4]_i_2_n_0\ : STD_LOGIC;
  signal \doutMux[0][5]_i_2_n_0\ : STD_LOGIC;
  signal \doutMux[0]_37\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \doutMux_reg[0][0]_i_6_n_0\ : STD_LOGIC;
  signal \^doutmux_reg[0][1]_0\ : STD_LOGIC;
  signal \^doutmux_reg[0][2]_0\ : STD_LOGIC;
  signal \doutMux_reg[0]_8\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \doutMux_reg[1]_9\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \edge10x[0]_i_1_n_0\ : STD_LOGIC;
  signal \edge10x[1]_i_1_n_0\ : STD_LOGIC;
  signal \edge10x[2]_i_1_n_0\ : STD_LOGIC;
  signal \edge10x[3]_i_1_n_0\ : STD_LOGIC;
  signal \edge10x[4]_i_1_n_0\ : STD_LOGIC;
  signal \edge10x[5]_i_1_n_0\ : STD_LOGIC;
  signal \edge10x[6]_i_1_n_0\ : STD_LOGIC;
  signal \edge10x[7]_i_1_n_0\ : STD_LOGIC;
  signal \edge10x[8]_i_1_n_0\ : STD_LOGIC;
  signal \edge10x[9]_i_1_n_0\ : STD_LOGIC;
  signal \edge10x_reg_n_0_[0]\ : STD_LOGIC;
  signal \edge10x_reg_n_0_[1]\ : STD_LOGIC;
  signal \edge10x_reg_n_0_[3]\ : STD_LOGIC;
  signal \edge11x[0]_i_1_n_0\ : STD_LOGIC;
  signal \edge11x[10]_i_2_n_0\ : STD_LOGIC;
  signal \edge11x[1]_i_1_n_0\ : STD_LOGIC;
  signal \edge11x[2]_i_1_n_0\ : STD_LOGIC;
  signal \edge11x[2]_i_2_n_0\ : STD_LOGIC;
  signal \edge11x[3]_i_1_n_0\ : STD_LOGIC;
  signal \edge11x[4]_i_1_n_0\ : STD_LOGIC;
  signal \edge11x[5]_i_1_n_0\ : STD_LOGIC;
  signal \edge11x[6]_i_1_n_0\ : STD_LOGIC;
  signal \edge11x[7]_i_1_n_0\ : STD_LOGIC;
  signal \edge11x[8]_i_1_n_0\ : STD_LOGIC;
  signal \edge11x[9]_i_1_n_0\ : STD_LOGIC;
  signal \edge11x_reg_n_0_[0]\ : STD_LOGIC;
  signal \edge11x_reg_n_0_[1]\ : STD_LOGIC;
  signal \edge11x_reg_n_0_[3]\ : STD_LOGIC;
  signal \edge11x_reg_n_0_[5]\ : STD_LOGIC;
  signal \edge11x_reg_n_0_[7]\ : STD_LOGIC;
  signal \edge11x_reg_n_0_[9]\ : STD_LOGIC;
  signal edge4x : STD_LOGIC;
  signal \edge4x[0]_i_1_n_0\ : STD_LOGIC;
  signal \edge4x_reg_n_0_[0]\ : STD_LOGIC;
  signal \edge4x_reg_n_0_[1]\ : STD_LOGIC;
  signal \edge4x_reg_n_0_[2]\ : STD_LOGIC;
  signal \edge4x_reg_n_0_[3]\ : STD_LOGIC;
  signal \edge8x[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \edge8x[0]_i_2_n_0\ : STD_LOGIC;
  signal \edge8x[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \edge8x[1]_i_2_n_0\ : STD_LOGIC;
  signal \edge8x[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \edge8x[2]_i_2_n_0\ : STD_LOGIC;
  signal \edge8x[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \edge8x[3]_i_2_n_0\ : STD_LOGIC;
  signal \edge8x[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \edge8x[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \edge8x[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \edge8x[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \edge8x_reg_n_0_[0]\ : STD_LOGIC;
  signal \edge8x_reg_n_0_[1]\ : STD_LOGIC;
  signal \edge8x_reg_n_0_[3]\ : STD_LOGIC;
  signal \edge8x_reg_n_0_[5]\ : STD_LOGIC;
  signal \edge8x_reg_n_0_[7]\ : STD_LOGIC;
  signal \edge[0]_i_10_n_0\ : STD_LOGIC;
  signal \edge[0]_i_11_n_0\ : STD_LOGIC;
  signal \edge[0]_i_12_n_0\ : STD_LOGIC;
  signal \edge[0]_i_13_n_0\ : STD_LOGIC;
  signal \edge[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \edge[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \edge[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \edge[0]_i_4_n_0\ : STD_LOGIC;
  signal \edge[0]_i_5_n_0\ : STD_LOGIC;
  signal \edge[0]_i_6_n_0\ : STD_LOGIC;
  signal \edge[0]_i_7_n_0\ : STD_LOGIC;
  signal \edge[0]_i_8_n_0\ : STD_LOGIC;
  signal \edge[0]_i_9_n_0\ : STD_LOGIC;
  signal \edge[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \edge[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \edge[1]_i_3_n_0\ : STD_LOGIC;
  signal \edge[1]_i_4_n_0\ : STD_LOGIC;
  signal \edge[1]_i_5_n_0\ : STD_LOGIC;
  signal \edge[1]_i_6_n_0\ : STD_LOGIC;
  signal \edge[1]_i_7_n_0\ : STD_LOGIC;
  signal \edge[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \edge[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \edge[2]_i_3_n_0\ : STD_LOGIC;
  signal \edge[2]_i_4_n_0\ : STD_LOGIC;
  signal \edge[2]_i_5_n_0\ : STD_LOGIC;
  signal \edge[2]_i_6_n_0\ : STD_LOGIC;
  signal \edge[2]_i_7_n_0\ : STD_LOGIC;
  signal \edge[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \edge[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \edge[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \edge[3]_i_4_n_0\ : STD_LOGIC;
  signal \edge[3]_i_5_n_0\ : STD_LOGIC;
  signal \edge[3]_i_6_n_0\ : STD_LOGIC;
  signal \edge[3]_i_7_n_0\ : STD_LOGIC;
  signal extractEdge : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \i__carry_i_1__10_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__11_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__12_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__13_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__14_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__15_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__10_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__11_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__12_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__13_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__14_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__15_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal index212_in : STD_LOGIC;
  signal index215_in : STD_LOGIC;
  signal index218_in : STD_LOGIC;
  signal index221_in : STD_LOGIC;
  signal index224_in : STD_LOGIC;
  signal index239_in : STD_LOGIC;
  signal index242_in : STD_LOGIC;
  signal index245_in : STD_LOGIC;
  signal index248_in : STD_LOGIC;
  signal index251_in : STD_LOGIC;
  signal index266_in : STD_LOGIC;
  signal index269_in : STD_LOGIC;
  signal index272_in : STD_LOGIC;
  signal index29_in : STD_LOGIC;
  signal \index2_inferred__13/i__carry_n_3\ : STD_LOGIC;
  signal \index2_inferred__14/i__carry_n_3\ : STD_LOGIC;
  signal \index2_inferred__15/i__carry_n_3\ : STD_LOGIC;
  signal \index2_inferred__16/i__carry_n_3\ : STD_LOGIC;
  signal \index2_inferred__17/i__carry_n_3\ : STD_LOGIC;
  signal \index2_inferred__22/i__carry_n_3\ : STD_LOGIC;
  signal \index2_inferred__23/i__carry_n_3\ : STD_LOGIC;
  signal \index2_inferred__24/i__carry_n_3\ : STD_LOGIC;
  signal \index2_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal \index2_inferred__4/i__carry_n_3\ : STD_LOGIC;
  signal \index2_inferred__5/i__carry_n_3\ : STD_LOGIC;
  signal \index2_inferred__6/i__carry_n_3\ : STD_LOGIC;
  signal \index2_inferred__7/i__carry_n_3\ : STD_LOGIC;
  signal \index2_inferred__8/i__carry_n_3\ : STD_LOGIC;
  signal p_0_in100_in : STD_LOGIC;
  signal p_0_in102_in : STD_LOGIC;
  signal p_0_in104_in : STD_LOGIC;
  signal p_0_in106_in : STD_LOGIC;
  signal p_0_in108_in : STD_LOGIC;
  signal p_0_in110_in : STD_LOGIC;
  signal p_0_in13_in : STD_LOGIC;
  signal p_0_in19_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in25_in : STD_LOGIC;
  signal p_0_in31_in : STD_LOGIC;
  signal p_0_in37_in : STD_LOGIC;
  signal p_0_in40_in : STD_LOGIC;
  signal p_0_in43_in : STD_LOGIC;
  signal p_0_in46_in : STD_LOGIC;
  signal p_0_in49_in : STD_LOGIC;
  signal p_0_in52_in : STD_LOGIC;
  signal p_0_in58_in : STD_LOGIC;
  signal p_0_in64_in : STD_LOGIC;
  signal p_0_in70_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_0_in91_in : STD_LOGIC;
  signal p_0_in94_in : STD_LOGIC;
  signal p_0_in96_in : STD_LOGIC;
  signal p_0_in98_in : STD_LOGIC;
  signal \^p_24_in\ : STD_LOGIC;
  signal \^p_25_in\ : STD_LOGIC;
  signal p_26_in : STD_LOGIC;
  signal p_27_in : STD_LOGIC;
  signal p_36_in : STD_LOGIC;
  signal p_37_in : STD_LOGIC;
  signal p_38_in : STD_LOGIC;
  signal p_39_in : STD_LOGIC;
  signal p_40_in : STD_LOGIC;
  signal p_41_in : STD_LOGIC;
  signal p_42_in : STD_LOGIC;
  signal p_43_in : STD_LOGIC;
  signal p_47_in : STD_LOGIC;
  signal p_48_in : STD_LOGIC;
  signal p_49_in : STD_LOGIC;
  signal p_50_in : STD_LOGIC;
  signal p_51_in : STD_LOGIC;
  signal p_52_in : STD_LOGIC;
  signal p_53_in : STD_LOGIC;
  signal p_75_in : STD_LOGIC;
  signal \we_d_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[8][1]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[9][0]\ : STD_LOGIC;
  signal \we_d_reg_n_0_[9][1]\ : STD_LOGIC;
  signal \NLW_index2_inferred__13/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__13/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index2_inferred__14/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__14/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index2_inferred__15/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__15/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index2_inferred__16/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__16/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index2_inferred__17/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__17/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index2_inferred__22/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__22/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index2_inferred__23/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__23/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index2_inferred__24/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__24/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index2_inferred__3/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index2_inferred__4/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__4/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index2_inferred__5/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__5/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index2_inferred__6/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__6/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index2_inferred__7/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__7/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index2_inferred__8/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_index2_inferred__8/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \din20b_d[0]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \din20b_d[1]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \din20b_d[2]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \din20b_d[3]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \din20b_d[4]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \din20b_d[5]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \din20b_d[6]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \din20b_d[7]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \din20b_d[8]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \din20b_d[9]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \din_d[0][0]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \din_d[0][1]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \din_d[0][2]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \din_d[0][3]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \din_d[0][4]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \din_d[0][5]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \din_d[0][6]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \din_d[0][7]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \din_d[0][8]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \din_d[0][9]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \doutMux[0][0]_i_3__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \doutMux[0][1]_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \doutMux[0][2]_i_7\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \doutMux[0][2]_i_8\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \edge10x[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \edge10x[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \edge10x[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \edge10x[4]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \edge10x[5]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \edge10x[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \edge10x[8]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \edge10x[9]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \edge11x[10]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \edge11x[2]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \edge11x[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \edge11x[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \edge11x[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \edge11x[6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \edge11x[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \edge11x[8]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \edge11x[9]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \edge4x[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \edge4x[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \edge8x[0]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \edge8x[1]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \edge8x[2]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \edge8x[3]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \edge8x[4]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \edge[0]_i_10\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \edge[0]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \edge[0]_i_8\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \edge[1]_i_2__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \edge[1]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \edge[1]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \edge[1]_i_7\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \edge[2]_i_2__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \edge[2]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \edge[2]_i_7\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \edge[3]_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i__carry_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \i__carry_i_3__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i__carry_i_3__2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \i__carry_i_3__3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i__carry_i_3__6\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i__carry_i_3__9\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i__carry_i_4__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i__carry_i_4__3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i__carry_i_4__4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i__carry_i_4__5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i__carry_i_5\ : label is "soft_lutpair29";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \doutMux_reg[0][1]_0\ <= \^doutmux_reg[0][1]_0\;
  \doutMux_reg[0][2]_0\ <= \^doutmux_reg[0][2]_0\;
  p_24_in <= \^p_24_in\;
  p_25_in <= \^p_25_in\;
C_FFFIFO: entity work.design_1_os48_1011x20bTo10b_top2_0_0_ff_fifo2e_10b
     port map (
      B_dout20bEn0 => B_dout20bEn0,
      B_dout20bEn_i => B_dout20bEn_i,
      B_dout20bEn_i_reg => B_dout20bEn_i_reg,
      B_en => B_en,
      B_recclk => B_recclk,
      D(9 downto 0) => D(9 downto 0),
      E(0) => E(0),
      Q(3 downto 0) => \bitSel_d_reg[0]_10\(3 downto 0),
      bankSel_d_reg => bankSel_d_reg_n_0,
      \bitSel_d_reg[1][3]\(3 downto 0) => \bitSel_d_reg[1]_11\(3 downto 0),
      byteRdy_d_reg => byteRdy_d_reg_n_0,
      \doutMux_reg[1][5]\(5 downto 0) => \doutMux_reg[1]_9\(5 downto 0),
      rst => rst,
      \we_d_reg[0][1]\(1) => \we_d_reg_n_0_[0][1]\,
      \we_d_reg[0][1]\(0) => \we_d_reg_n_0_[0][0]\,
      \we_d_reg[1][1]\(1) => \we_d_reg_n_0_[1][1]\,
      \we_d_reg[1][1]\(0) => \we_d_reg_n_0_[1][0]\,
      \we_d_reg[2][1]\(1) => \we_d_reg_n_0_[2][1]\,
      \we_d_reg[2][1]\(0) => \we_d_reg_n_0_[2][0]\,
      \we_d_reg[3][1]\(1) => \we_d_reg_n_0_[3][1]\,
      \we_d_reg[3][1]\(0) => \we_d_reg_n_0_[3][0]\,
      \we_d_reg[4][1]\(1) => \we_d_reg_n_0_[4][1]\,
      \we_d_reg[4][1]\(0) => \we_d_reg_n_0_[4][0]\,
      \we_d_reg[5][1]\(1) => \we_d_reg_n_0_[5][1]\,
      \we_d_reg[5][1]\(0) => \we_d_reg_n_0_[5][0]\,
      \we_d_reg[6][1]\(1) => \we_d_reg_n_0_[6][1]\,
      \we_d_reg[6][1]\(0) => \we_d_reg_n_0_[6][0]\,
      \we_d_reg[7][1]\(1) => \we_d_reg_n_0_[7][1]\,
      \we_d_reg[7][1]\(0) => \we_d_reg_n_0_[7][0]\,
      \we_d_reg[8][1]\(1) => \we_d_reg_n_0_[8][1]\,
      \we_d_reg[8][1]\(0) => \we_d_reg_n_0_[8][0]\,
      \we_d_reg[9][1]\(1) => \we_d_reg_n_0_[9][1]\,
      \we_d_reg[9][1]\(0) => \we_d_reg_n_0_[9][0]\
    );
bankSel_d_reg: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(29),
      Q => bankSel_d_reg_n_0,
      R => rst
    );
\bitSel_d_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(20),
      Q => \bitSel_d_reg[0]_10\(0),
      R => rst
    );
\bitSel_d_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(21),
      Q => \bitSel_d_reg[0]_10\(1),
      R => rst
    );
\bitSel_d_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(22),
      Q => \bitSel_d_reg[0]_10\(2),
      R => rst
    );
\bitSel_d_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(23),
      Q => \bitSel_d_reg[0]_10\(3),
      R => rst
    );
\bitSel_d_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(24),
      Q => \bitSel_d_reg[1]_11\(0),
      R => rst
    );
\bitSel_d_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(25),
      Q => \bitSel_d_reg[1]_11\(1),
      R => rst
    );
\bitSel_d_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(26),
      Q => \bitSel_d_reg[1]_11\(2),
      R => rst
    );
\bitSel_d_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(27),
      Q => \bitSel_d_reg[1]_11\(3),
      R => rst
    );
byteRdy_d_reg: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(28),
      Q => byteRdy_d_reg_n_0,
      R => rst
    );
\din20b_d[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(19),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(0),
      O => \din20b_d[0]_i_1__0_n_0\
    );
\din20b_d[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(18),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(1),
      O => \din20b_d[1]_i_1__0_n_0\
    );
\din20b_d[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(17),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(2),
      O => \din20b_d[2]_i_1__0_n_0\
    );
\din20b_d[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(16),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(3),
      O => \din20b_d[3]_i_1__0_n_0\
    );
\din20b_d[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(15),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(4),
      O => \din20b_d[4]_i_1__0_n_0\
    );
\din20b_d[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(14),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(5),
      O => \din20b_d[5]_i_1__0_n_0\
    );
\din20b_d[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(13),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(6),
      O => \din20b_d[6]_i_1__0_n_0\
    );
\din20b_d[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(12),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(7),
      O => \din20b_d[7]_i_1__0_n_0\
    );
\din20b_d[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(11),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(8),
      O => \din20b_d[8]_i_1__0_n_0\
    );
\din20b_d[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(10),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(9),
      O => \din20b_d[9]_i_1__0_n_0\
    );
\din20b_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din20b_d[0]_i_1__0_n_0\,
      Q => p_0_in91_in,
      R => rst
    );
\din20b_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din20b_d[1]_i_1__0_n_0\,
      Q => p_0_in94_in,
      R => rst
    );
\din20b_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din20b_d[2]_i_1__0_n_0\,
      Q => p_0_in96_in,
      R => rst
    );
\din20b_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din20b_d[3]_i_1__0_n_0\,
      Q => p_0_in98_in,
      R => rst
    );
\din20b_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din20b_d[4]_i_1__0_n_0\,
      Q => p_0_in100_in,
      R => rst
    );
\din20b_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din20b_d[5]_i_1__0_n_0\,
      Q => p_0_in102_in,
      R => rst
    );
\din20b_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din20b_d[6]_i_1__0_n_0\,
      Q => p_0_in104_in,
      R => rst
    );
\din20b_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din20b_d[7]_i_1__0_n_0\,
      Q => p_0_in106_in,
      R => rst
    );
\din20b_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din20b_d[8]_i_1__0_n_0\,
      Q => p_0_in108_in,
      R => rst
    );
\din20b_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din20b_d[9]_i_1__0_n_0\,
      Q => p_0_in110_in,
      R => rst
    );
\din_d[0][0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(9),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(10),
      O => \din_d[0][0]_i_1__0_n_0\
    );
\din_d[0][1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(8),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(11),
      O => \din_d[0][1]_i_1__0_n_0\
    );
\din_d[0][2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(7),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(12),
      O => \din_d[0][2]_i_1__0_n_0\
    );
\din_d[0][3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(6),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(13),
      O => \din_d[0][3]_i_1__0_n_0\
    );
\din_d[0][4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(5),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(14),
      O => \din_d[0][4]_i_1__0_n_0\
    );
\din_d[0][5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(4),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(15),
      O => \din_d[0][5]_i_1__0_n_0\
    );
\din_d[0][6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(3),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(16),
      O => \din_d[0][6]_i_1__0_n_0\
    );
\din_d[0][7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(2),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(17),
      O => \din_d[0][7]_i_1__0_n_0\
    );
\din_d[0][8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(1),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(18),
      O => \din_d[0][8]_i_1__0_n_0\
    );
\din_d[0][9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_din20b(0),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(19),
      O => \din_d[0][9]_i_1__0_n_0\
    );
\din_d_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d[0][0]_i_1__0_n_0\,
      Q => \din_d_reg[0]_6\(0),
      R => rst
    );
\din_d_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => p_0_in91_in,
      Q => \din_d_reg[0]_6\(10),
      R => rst
    );
\din_d_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => p_0_in94_in,
      Q => \din_d_reg[0]_6\(11),
      R => rst
    );
\din_d_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => p_0_in96_in,
      Q => \din_d_reg[0]_6\(12),
      R => rst
    );
\din_d_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => p_0_in98_in,
      Q => \din_d_reg[0]_6\(13),
      R => rst
    );
\din_d_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => p_0_in100_in,
      Q => \din_d_reg[0]_6\(14),
      R => rst
    );
\din_d_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => p_0_in102_in,
      Q => \din_d_reg[0]_6\(15),
      R => rst
    );
\din_d_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => p_0_in104_in,
      Q => \din_d_reg[0]_6\(16),
      R => rst
    );
\din_d_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => p_0_in106_in,
      Q => \din_d_reg[0]_6\(17),
      R => rst
    );
\din_d_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => p_0_in108_in,
      Q => \din_d_reg[0]_6\(18),
      R => rst
    );
\din_d_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => p_0_in110_in,
      Q => \din_d_reg[0]_6\(19),
      R => rst
    );
\din_d_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d[0][1]_i_1__0_n_0\,
      Q => \din_d_reg[0]_6\(1),
      R => rst
    );
\din_d_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d[0][2]_i_1__0_n_0\,
      Q => \din_d_reg[0]_6\(2),
      R => rst
    );
\din_d_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d[0][3]_i_1__0_n_0\,
      Q => \din_d_reg[0]_6\(3),
      R => rst
    );
\din_d_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d[0][4]_i_1__0_n_0\,
      Q => \din_d_reg[0]_6\(4),
      R => rst
    );
\din_d_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d[0][5]_i_1__0_n_0\,
      Q => \din_d_reg[0]_6\(5),
      R => rst
    );
\din_d_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d[0][6]_i_1__0_n_0\,
      Q => \din_d_reg[0]_6\(6),
      R => rst
    );
\din_d_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d[0][7]_i_1__0_n_0\,
      Q => \din_d_reg[0]_6\(7),
      R => rst
    );
\din_d_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d[0][8]_i_1__0_n_0\,
      Q => \din_d_reg[0]_6\(8),
      R => rst
    );
\din_d_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d[0][9]_i_1__0_n_0\,
      Q => \din_d_reg[0]_6\(9),
      R => rst
    );
\din_d_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(0),
      Q => \din_d_reg[1]_7\(0),
      R => rst
    );
\din_d_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(10),
      Q => \din_d_reg[1]_7\(10),
      R => rst
    );
\din_d_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(11),
      Q => \din_d_reg[1]_7\(11),
      R => rst
    );
\din_d_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(12),
      Q => \din_d_reg[1]_7\(12),
      R => rst
    );
\din_d_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(13),
      Q => \din_d_reg[1]_7\(13),
      R => rst
    );
\din_d_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(14),
      Q => \din_d_reg[1]_7\(14),
      R => rst
    );
\din_d_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(15),
      Q => \din_d_reg[1]_7\(15),
      R => rst
    );
\din_d_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(16),
      Q => \din_d_reg[1]_7\(16),
      R => rst
    );
\din_d_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(17),
      Q => \din_d_reg[1]_7\(17),
      R => rst
    );
\din_d_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(18),
      Q => \din_d_reg[1]_7\(18),
      R => rst
    );
\din_d_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(19),
      Q => \din_d_reg[1]_7\(19),
      R => rst
    );
\din_d_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(1),
      Q => \din_d_reg[1]_7\(1),
      R => rst
    );
\din_d_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(2),
      Q => \din_d_reg[1]_7\(2),
      R => rst
    );
\din_d_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(3),
      Q => \din_d_reg[1]_7\(3),
      R => rst
    );
\din_d_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(4),
      Q => \din_d_reg[1]_7\(4),
      R => rst
    );
\din_d_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(5),
      Q => \din_d_reg[1]_7\(5),
      R => rst
    );
\din_d_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(6),
      Q => \din_d_reg[1]_7\(6),
      R => rst
    );
\din_d_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(7),
      Q => \din_d_reg[1]_7\(7),
      R => rst
    );
\din_d_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(8),
      Q => \din_d_reg[1]_7\(8),
      R => rst
    );
\din_d_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[0]_6\(9),
      Q => \din_d_reg[1]_7\(9),
      R => rst
    );
\din_d_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(0),
      Q => \din_d_reg_n_0_[2][0]\,
      R => rst
    );
\din_d_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(10),
      Q => p_43_in,
      R => rst
    );
\din_d_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(11),
      Q => p_42_in,
      R => rst
    );
\din_d_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(12),
      Q => p_41_in,
      R => rst
    );
\din_d_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(13),
      Q => p_40_in,
      R => rst
    );
\din_d_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(14),
      Q => p_39_in,
      R => rst
    );
\din_d_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(15),
      Q => p_38_in,
      R => rst
    );
\din_d_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(16),
      Q => p_37_in,
      R => rst
    );
\din_d_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(17),
      Q => p_36_in,
      R => rst
    );
\din_d_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(18),
      Q => \^q\(0),
      R => rst
    );
\din_d_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(19),
      Q => \^q\(1),
      R => rst
    );
\din_d_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(1),
      Q => data1,
      R => rst
    );
\din_d_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg_n_0_[2][0]\,
      Q => p_75_in,
      R => rst
    );
\din_d_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => data1,
      Q => p_53_in,
      R => rst
    );
\din_d_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => data2,
      Q => p_52_in,
      R => rst
    );
\din_d_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => data3,
      Q => p_51_in,
      R => rst
    );
\din_d_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => data4,
      Q => p_50_in,
      R => rst
    );
\din_d_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => data5,
      Q => p_49_in,
      R => rst
    );
\din_d_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => p_27_in,
      Q => p_48_in,
      R => rst
    );
\din_d_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => p_26_in,
      Q => p_47_in,
      R => rst
    );
\din_d_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \^p_25_in\,
      Q => \^q\(2),
      R => rst
    );
\din_d_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \^p_24_in\,
      Q => \^q\(3),
      R => rst
    );
\din_d_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(2),
      Q => data2,
      R => rst
    );
\din_d_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(3),
      Q => data3,
      R => rst
    );
\din_d_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(4),
      Q => data4,
      R => rst
    );
\din_d_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(5),
      Q => data5,
      R => rst
    );
\din_d_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(6),
      Q => p_27_in,
      R => rst
    );
\din_d_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(7),
      Q => p_26_in,
      R => rst
    );
\din_d_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(8),
      Q => \^p_25_in\,
      R => rst
    );
\din_d_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \din_d_reg[1]_7\(9),
      Q => \^p_24_in\,
      R => rst
    );
\doutMux[0][0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_42_in,
      I1 => p_43_in,
      I2 => ADDRB(1),
      I3 => \^p_24_in\,
      I4 => ADDRB(0),
      I5 => \^p_25_in\,
      O => \doutMux[0][0]_i_11_n_0\
    );
\doutMux[0][0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_38_in,
      I1 => p_39_in,
      I2 => ADDRB(1),
      I3 => p_40_in,
      I4 => ADDRB(0),
      I5 => p_41_in,
      O => \doutMux[0][0]_i_12_n_0\
    );
\doutMux[0][0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3,
      I1 => data2,
      I2 => ADDRB(1),
      I3 => data1,
      I4 => ADDRB(0),
      I5 => \din_d_reg_n_0_[2][0]\,
      O => \doutMux[0][0]_i_13_n_0\
    );
\doutMux[0][0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_26_in,
      I1 => p_27_in,
      I2 => ADDRB(1),
      I3 => data5,
      I4 => ADDRB(0),
      I5 => data4,
      O => \doutMux[0][0]_i_14_n_0\
    );
\doutMux[0][0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \doutMux[0][0]_i_2__0_n_0\,
      I1 => \doutMux[0][0]_i_3__0_n_0\,
      I2 => ADDRB(4),
      I3 => \din_d_reg[2][9]_0\,
      I4 => ADDRB(5),
      I5 => \doutMux[0][0]_i_5_n_0\,
      O => \doutMux[0]_37\(0)
    );
\doutMux[0][0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCFAAAACCC0AAAA"
    )
        port map (
      I0 => \doutMux_reg[0][0]_i_6_n_0\,
      I1 => \^q\(0),
      I2 => ADDRB(2),
      I3 => ADDRB(1),
      I4 => ADDRB(3),
      I5 => \doutMux[0][0]_i_7_n_0\,
      O => \doutMux[0][0]_i_2__0_n_0\
    );
\doutMux[0][0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_40_in,
      I1 => ADDRB(3),
      I2 => \^doutmux_reg[0][1]_0\,
      I3 => ADDRB(2),
      I4 => \doutMux[0][0]_i_8_n_0\,
      O => \doutMux[0][0]_i_3__0_n_0\
    );
\doutMux[0][0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^p_24_in\,
      I1 => ADDRB(2),
      I2 => ADDRB(3),
      I3 => \doutMux[0][0]_i_8_n_0\,
      O => \doutMux[0][0]_i_5_n_0\
    );
\doutMux[0][0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_36_in,
      I1 => ADDRB(0),
      I2 => p_37_in,
      O => \doutMux[0][0]_i_7_n_0\
    );
\doutMux[0][0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^p_24_in\,
      I1 => \^p_25_in\,
      I2 => ADDRB(1),
      I3 => p_26_in,
      I4 => ADDRB(0),
      I5 => p_27_in,
      O => \doutMux[0][0]_i_8_n_0\
    );
\doutMux[0][1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_40_in,
      I1 => p_41_in,
      I2 => ADDRB(1),
      I3 => p_42_in,
      I4 => ADDRB(0),
      I5 => p_43_in,
      O => \^doutmux_reg[0][1]_0\
    );
\doutMux[0][1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \doutMux[0][1]_i_2__0_n_0\,
      I1 => \doutMux[0][1]_i_3__0_n_0\,
      I2 => ADDRB(4),
      I3 => \din_d_reg[2][18]_0\,
      I4 => ADDRB(5),
      I5 => \doutMux[0][1]_i_5_n_0\,
      O => \doutMux[0]_37\(1)
    );
\doutMux[0][1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \doutMux[0][1]_i_6_n_0\,
      I1 => ADDRB(3),
      I2 => \doutMux[0][1]_i_7_n_0\,
      I3 => ADDRB(2),
      I4 => \doutMux[0][1]_i_8_n_0\,
      O => \doutMux[0][1]_i_2__0_n_0\
    );
\doutMux[0][1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_53_in,
      I1 => ADDRB(3),
      I2 => \doutMux[0][3]_i_2_n_0\,
      I3 => ADDRB(2),
      I4 => \^doutmux_reg[0][2]_0\,
      O => \doutMux[0][1]_i_3__0_n_0\
    );
\doutMux[0][1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => p_40_in,
      I1 => ADDRB(2),
      I2 => ADDRB(3),
      I3 => \^doutmux_reg[0][1]_0\,
      O => \doutMux[0][1]_i_5_n_0\
    );
\doutMux[0][1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABA8A8A8ABA8"
    )
        port map (
      I0 => \^q\(3),
      I1 => ADDRB(2),
      I2 => ADDRB(1),
      I3 => p_47_in,
      I4 => ADDRB(0),
      I5 => \^q\(2),
      O => \doutMux[0][1]_i_6_n_0\
    );
\doutMux[0][1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_48_in,
      I1 => p_49_in,
      I2 => ADDRB(1),
      I3 => p_50_in,
      I4 => ADDRB(0),
      I5 => p_51_in,
      O => \doutMux[0][1]_i_7_n_0\
    );
\doutMux[0][1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_52_in,
      I1 => p_53_in,
      I2 => ADDRB(1),
      I3 => p_75_in,
      I4 => ADDRB(0),
      I5 => \^q\(1),
      O => \doutMux[0][1]_i_8_n_0\
    );
\doutMux[0][2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0055C000"
    )
        port map (
      I0 => \doutMux[0][2]_i_2__0_n_0\,
      I1 => \doutMux[0][2]_i_3__0_n_0\,
      I2 => \din_d_reg[2][28]_0\,
      I3 => ADDRB(5),
      I4 => ADDRB(4),
      I5 => \doutMux[0][2]_i_5_n_0\,
      O => \doutMux[0]_37\(2)
    );
\doutMux[0][2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D1D0C3F"
    )
        port map (
      I0 => \doutMux[0][5]_i_2_n_0\,
      I1 => ADDRB(3),
      I2 => \^q\(3),
      I3 => \doutMux[0][4]_i_2_n_0\,
      I4 => ADDRB(2),
      O => \doutMux[0][2]_i_2__0_n_0\
    );
\doutMux[0][2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFECECEFECEC"
    )
        port map (
      I0 => \doutMux[0][2]_i_6_n_0\,
      I1 => ADDRB(3),
      I2 => ADDRB(2),
      I3 => ADDRB(1),
      I4 => \doutMux[0][2]_i_7_n_0\,
      I5 => \doutMux[0][2]_i_8_n_0\,
      O => \doutMux[0][2]_i_3__0_n_0\
    );
\doutMux[0][2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FE02"
    )
        port map (
      I0 => \^doutmux_reg[0][2]_0\,
      I1 => ADDRB(3),
      I2 => ADDRB(2),
      I3 => p_36_in,
      I4 => ADDRB(4),
      I5 => ADDRB(5),
      O => \doutMux[0][2]_i_5_n_0\
    );
\doutMux[0][2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_47_in,
      I1 => p_48_in,
      I2 => ADDRB(1),
      I3 => p_49_in,
      I4 => ADDRB(0),
      I5 => p_50_in,
      O => \doutMux[0][2]_i_6_n_0\
    );
\doutMux[0][2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_53_in,
      I1 => ADDRB(0),
      I2 => p_75_in,
      O => \doutMux[0][2]_i_7_n_0\
    );
\doutMux[0][2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_51_in,
      I1 => ADDRB(0),
      I2 => p_52_in,
      O => \doutMux[0][2]_i_8_n_0\
    );
\doutMux[0][2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_36_in,
      I1 => p_37_in,
      I2 => ADDRB(1),
      I3 => p_38_in,
      I4 => ADDRB(0),
      I5 => p_39_in,
      O => \^doutmux_reg[0][2]_0\
    );
\doutMux[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FE02"
    )
        port map (
      I0 => \doutMux[0][3]_i_2_n_0\,
      I1 => ADDRB(3),
      I2 => ADDRB(2),
      I3 => p_53_in,
      I4 => ADDRB(4),
      I5 => ADDRB(5),
      O => \doutMux[0]_37\(3)
    );
\doutMux[0][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_53_in,
      I1 => p_75_in,
      I2 => ADDRB(1),
      I3 => \^q\(1),
      I4 => ADDRB(0),
      I5 => \^q\(0),
      O => \doutMux[0][3]_i_2_n_0\
    );
\doutMux[0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FE02"
    )
        port map (
      I0 => \doutMux[0][4]_i_2_n_0\,
      I1 => ADDRB(3),
      I2 => ADDRB(2),
      I3 => p_49_in,
      I4 => ADDRB(4),
      I5 => ADDRB(5),
      O => \doutMux[0]_37\(4)
    );
\doutMux[0][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_49_in,
      I1 => p_50_in,
      I2 => ADDRB(1),
      I3 => p_51_in,
      I4 => ADDRB(0),
      I5 => p_52_in,
      O => \doutMux[0][4]_i_2_n_0\
    );
\doutMux[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FE02"
    )
        port map (
      I0 => \doutMux[0][5]_i_2_n_0\,
      I1 => ADDRB(3),
      I2 => ADDRB(2),
      I3 => \^q\(3),
      I4 => ADDRB(4),
      I5 => ADDRB(5),
      O => \doutMux[0]_37\(5)
    );
\doutMux[0][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => ADDRB(1),
      I3 => p_47_in,
      I4 => ADDRB(0),
      I5 => p_48_in,
      O => \doutMux[0][5]_i_2_n_0\
    );
\doutMux_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \doutMux[0]_37\(0),
      Q => \doutMux_reg[0]_8\(0),
      R => rst
    );
\doutMux_reg[0][0]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutMux[0][0]_i_13_n_0\,
      I1 => \doutMux[0][0]_i_14_n_0\,
      O => \doutMux_reg[0][0]_0\,
      S => ADDRB(2)
    );
\doutMux_reg[0][0]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutMux[0][0]_i_11_n_0\,
      I1 => \doutMux[0][0]_i_12_n_0\,
      O => \doutMux_reg[0][0]_i_6_n_0\,
      S => ADDRB(2)
    );
\doutMux_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \doutMux[0]_37\(1),
      Q => \doutMux_reg[0]_8\(1),
      R => rst
    );
\doutMux_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \doutMux[0]_37\(2),
      Q => \doutMux_reg[0]_8\(2),
      R => rst
    );
\doutMux_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \doutMux[0]_37\(3),
      Q => \doutMux_reg[0]_8\(3),
      R => rst
    );
\doutMux_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \doutMux[0]_37\(4),
      Q => \doutMux_reg[0]_8\(4),
      R => rst
    );
\doutMux_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \doutMux[0]_37\(5),
      Q => \doutMux_reg[0]_8\(5),
      R => rst
    );
\doutMux_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \doutMux_reg[0]_8\(0),
      Q => \doutMux_reg[1]_9\(0),
      R => rst
    );
\doutMux_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \doutMux_reg[0]_8\(1),
      Q => \doutMux_reg[1]_9\(1),
      R => rst
    );
\doutMux_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \doutMux_reg[0]_8\(2),
      Q => \doutMux_reg[1]_9\(2),
      R => rst
    );
\doutMux_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \doutMux_reg[0]_8\(3),
      Q => \doutMux_reg[1]_9\(3),
      R => rst
    );
\doutMux_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \doutMux_reg[0]_8\(4),
      Q => \doutMux_reg[1]_9\(4),
      R => rst
    );
\doutMux_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \doutMux_reg[0]_8\(5),
      Q => \doutMux_reg[1]_9\(5),
      R => rst
    );
\edge10x[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in110_in,
      I1 => \din_d_reg[0]_6\(0),
      O => \edge10x[0]_i_1_n_0\
    );
\edge10x[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_0_in94_in,
      I1 => p_0_in91_in,
      I2 => \din_d_reg[0]_6\(1),
      I3 => \din_d_reg[0]_6\(0),
      O => \edge10x[1]_i_1_n_0\
    );
\edge10x[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_0_in96_in,
      I1 => p_0_in94_in,
      I2 => \din_d_reg[0]_6\(2),
      I3 => \din_d_reg[0]_6\(1),
      O => \edge10x[2]_i_1_n_0\
    );
\edge10x[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_0_in98_in,
      I1 => p_0_in96_in,
      I2 => \din_d_reg[0]_6\(3),
      I3 => \din_d_reg[0]_6\(2),
      O => \edge10x[3]_i_1_n_0\
    );
\edge10x[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_0_in100_in,
      I1 => p_0_in98_in,
      I2 => \din_d_reg[0]_6\(4),
      I3 => \din_d_reg[0]_6\(3),
      O => \edge10x[4]_i_1_n_0\
    );
\edge10x[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_0_in102_in,
      I1 => p_0_in100_in,
      I2 => \din_d_reg[0]_6\(5),
      I3 => \din_d_reg[0]_6\(4),
      O => \edge10x[5]_i_1_n_0\
    );
\edge10x[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_0_in104_in,
      I1 => p_0_in102_in,
      I2 => \din_d_reg[0]_6\(6),
      I3 => \din_d_reg[0]_6\(5),
      O => \edge10x[6]_i_1_n_0\
    );
\edge10x[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_0_in106_in,
      I1 => p_0_in104_in,
      I2 => \din_d_reg[0]_6\(7),
      I3 => \din_d_reg[0]_6\(6),
      O => \edge10x[7]_i_1_n_0\
    );
\edge10x[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_0_in108_in,
      I1 => p_0_in106_in,
      I2 => \din_d_reg[0]_6\(8),
      I3 => \din_d_reg[0]_6\(7),
      O => \edge10x[8]_i_1_n_0\
    );
\edge10x[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \din_d_reg[0]_6\(9),
      I1 => \din_d_reg[0]_6\(8),
      I2 => p_0_in110_in,
      I3 => p_0_in108_in,
      O => \edge10x[9]_i_1_n_0\
    );
\edge10x_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge10x[0]_i_1_n_0\,
      Q => \edge10x_reg_n_0_[0]\,
      S => \edge11x[2]_i_1_n_0\
    );
\edge10x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge10x[1]_i_1_n_0\,
      Q => \edge10x_reg_n_0_[1]\,
      R => '0'
    );
\edge10x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge10x[2]_i_1_n_0\,
      Q => p_0_in31_in,
      R => '0'
    );
\edge10x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge10x[3]_i_1_n_0\,
      Q => \edge10x_reg_n_0_[3]\,
      R => '0'
    );
\edge10x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge10x[4]_i_1_n_0\,
      Q => p_0_in37_in,
      R => '0'
    );
\edge10x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge10x[5]_i_1_n_0\,
      Q => p_0_in40_in,
      R => '0'
    );
\edge10x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge10x[6]_i_1_n_0\,
      Q => p_0_in43_in,
      R => '0'
    );
\edge10x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge10x[7]_i_1_n_0\,
      Q => p_0_in46_in,
      R => '0'
    );
\edge10x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge10x[8]_i_1_n_0\,
      Q => p_0_in49_in,
      R => '0'
    );
\edge10x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge10x[9]_i_1_n_0\,
      Q => p_0_in52_in,
      R => '0'
    );
\edge11x[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF66F6F6FF6F6F6"
    )
        port map (
      I0 => p_0_in110_in,
      I1 => p_0_in108_in,
      I2 => \din_d[0][7]_i_1__0_n_0\,
      I3 => B_din20b(1),
      I4 => bitOrderDinLSB,
      I5 => B_din20b(18),
      O => \edge11x[0]_i_1_n_0\
    );
\edge11x[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => B_en,
      I1 => rst,
      O => edge4x
    );
\edge11x[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \din_d_reg[0]_6\(9),
      I1 => \din_d_reg[0]_6\(8),
      I2 => p_0_in108_in,
      I3 => p_0_in106_in,
      O => \edge11x[10]_i_2_n_0\
    );
\edge11x[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF66F6F6FF6F6F6"
    )
        port map (
      I0 => \din_d_reg[0]_6\(0),
      I1 => p_0_in110_in,
      I2 => \din_d[0][8]_i_1__0_n_0\,
      I3 => B_din20b(0),
      I4 => bitOrderDinLSB,
      I5 => B_din20b(19),
      O => \edge11x[1]_i_1_n_0\
    );
\edge11x[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000047B800000000"
    )
        port map (
      I0 => B_din20b(0),
      I1 => bitOrderDinLSB,
      I2 => B_din20b(19),
      I3 => p_0_in91_in,
      I4 => rst,
      I5 => B_en,
      O => \edge11x[2]_i_1_n_0\
    );
\edge11x[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \din_d_reg[0]_6\(0),
      I1 => \din_d_reg[0]_6\(1),
      O => \edge11x[2]_i_2_n_0\
    );
\edge11x[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \din_d_reg[0]_6\(2),
      I1 => \din_d_reg[0]_6\(1),
      I2 => p_0_in94_in,
      I3 => p_0_in91_in,
      O => \edge11x[3]_i_1_n_0\
    );
\edge11x[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \din_d_reg[0]_6\(3),
      I1 => \din_d_reg[0]_6\(2),
      I2 => p_0_in96_in,
      I3 => p_0_in94_in,
      O => \edge11x[4]_i_1_n_0\
    );
\edge11x[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \din_d_reg[0]_6\(4),
      I1 => \din_d_reg[0]_6\(3),
      I2 => p_0_in98_in,
      I3 => p_0_in96_in,
      O => \edge11x[5]_i_1_n_0\
    );
\edge11x[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \din_d_reg[0]_6\(5),
      I1 => \din_d_reg[0]_6\(4),
      I2 => p_0_in100_in,
      I3 => p_0_in98_in,
      O => \edge11x[6]_i_1_n_0\
    );
\edge11x[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \din_d_reg[0]_6\(6),
      I1 => \din_d_reg[0]_6\(5),
      I2 => p_0_in102_in,
      I3 => p_0_in100_in,
      O => \edge11x[7]_i_1_n_0\
    );
\edge11x[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \din_d_reg[0]_6\(7),
      I1 => \din_d_reg[0]_6\(6),
      I2 => p_0_in104_in,
      I3 => p_0_in102_in,
      O => \edge11x[8]_i_1_n_0\
    );
\edge11x[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \din_d_reg[0]_6\(8),
      I1 => \din_d_reg[0]_6\(7),
      I2 => p_0_in106_in,
      I3 => p_0_in104_in,
      O => \edge11x[9]_i_1_n_0\
    );
\edge11x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge11x[0]_i_1_n_0\,
      Q => \edge11x_reg_n_0_[0]\,
      R => '0'
    );
\edge11x_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge11x[10]_i_2_n_0\,
      Q => p_0_in25_in,
      R => '0'
    );
\edge11x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge11x[1]_i_1_n_0\,
      Q => \edge11x_reg_n_0_[1]\,
      R => '0'
    );
\edge11x_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge11x[2]_i_2_n_0\,
      Q => p_0_in1_in,
      S => \edge11x[2]_i_1_n_0\
    );
\edge11x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge11x[3]_i_1_n_0\,
      Q => \edge11x_reg_n_0_[3]\,
      R => '0'
    );
\edge11x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge11x[4]_i_1_n_0\,
      Q => p_0_in7_in,
      R => '0'
    );
\edge11x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge11x[5]_i_1_n_0\,
      Q => \edge11x_reg_n_0_[5]\,
      R => '0'
    );
\edge11x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge11x[6]_i_1_n_0\,
      Q => p_0_in13_in,
      R => '0'
    );
\edge11x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge11x[7]_i_1_n_0\,
      Q => \edge11x_reg_n_0_[7]\,
      R => '0'
    );
\edge11x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge11x[8]_i_1_n_0\,
      Q => p_0_in19_in,
      R => '0'
    );
\edge11x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge11x[9]_i_1_n_0\,
      Q => \edge11x_reg_n_0_[9]\,
      R => '0'
    );
\edge4x[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => \din_d_reg[0]_6\(5),
      I1 => \din_d_reg[0]_6\(6),
      I2 => p_0_in106_in,
      I3 => p_0_in108_in,
      I4 => \edge8x[0]_i_2_n_0\,
      O => \edge4x[0]_i_1_n_0\
    );
\edge4x[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \edge8x[5]_i_1__0_n_0\,
      I1 => \din_d_reg[0]_6\(2),
      I2 => \din_d_reg[0]_6\(3),
      I3 => p_0_in100_in,
      I4 => p_0_in102_in,
      O => extractEdge(1)
    );
\edge4x[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \edge8x[6]_i_1__0_n_0\,
      I1 => \din_d_reg[0]_6\(3),
      I2 => \din_d_reg[0]_6\(4),
      I3 => p_0_in102_in,
      I4 => p_0_in104_in,
      O => extractEdge(2)
    );
\edge4x[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \edge8x[7]_i_1__0_n_0\,
      I1 => \din_d_reg[0]_6\(4),
      I2 => \din_d_reg[0]_6\(5),
      I3 => p_0_in104_in,
      I4 => p_0_in106_in,
      O => extractEdge(3)
    );
\edge4x_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge4x[0]_i_1_n_0\,
      Q => \edge4x_reg_n_0_[0]\,
      S => \edge11x[2]_i_1_n_0\
    );
\edge4x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => extractEdge(1),
      Q => \edge4x_reg_n_0_[1]\,
      R => '0'
    );
\edge4x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => extractEdge(2),
      Q => \edge4x_reg_n_0_[2]\,
      R => '0'
    );
\edge4x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => extractEdge(3),
      Q => \edge4x_reg_n_0_[3]\,
      R => '0'
    );
\edge8x[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFEAEFBFBAEFEA"
    )
        port map (
      I0 => \edge8x[0]_i_2_n_0\,
      I1 => B_din20b(4),
      I2 => bitOrderDinLSB,
      I3 => B_din20b(15),
      I4 => B_din20b(3),
      I5 => B_din20b(16),
      O => \edge8x[0]_i_1__0_n_0\
    );
\edge8x[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_0_in100_in,
      I1 => p_0_in98_in,
      I2 => \din_d_reg[0]_6\(2),
      I3 => \din_d_reg[0]_6\(1),
      O => \edge8x[0]_i_2_n_0\
    );
\edge8x[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFEAEFBFBAEFEA"
    )
        port map (
      I0 => \edge8x[1]_i_2_n_0\,
      I1 => B_din20b(3),
      I2 => bitOrderDinLSB,
      I3 => B_din20b(16),
      I4 => B_din20b(2),
      I5 => B_din20b(17),
      O => \edge8x[1]_i_1__0_n_0\
    );
\edge8x[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_0_in102_in,
      I1 => p_0_in100_in,
      I2 => \din_d_reg[0]_6\(3),
      I3 => \din_d_reg[0]_6\(2),
      O => \edge8x[1]_i_2_n_0\
    );
\edge8x[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \edge8x[2]_i_2_n_0\,
      I1 => \din_d_reg[0]_6\(3),
      I2 => \din_d_reg[0]_6\(4),
      I3 => p_0_in102_in,
      I4 => p_0_in104_in,
      O => \edge8x[2]_i_1__0_n_0\
    );
\edge8x[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335ACC5A"
    )
        port map (
      I0 => B_din20b(18),
      I1 => B_din20b(1),
      I2 => B_din20b(17),
      I3 => bitOrderDinLSB,
      I4 => B_din20b(2),
      O => \edge8x[2]_i_2_n_0\
    );
\edge8x[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \edge8x[3]_i_2_n_0\,
      I1 => \din_d_reg[0]_6\(4),
      I2 => \din_d_reg[0]_6\(5),
      I3 => p_0_in104_in,
      I4 => p_0_in106_in,
      O => \edge8x[3]_i_1__0_n_0\
    );
\edge8x[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335ACC5A"
    )
        port map (
      I0 => B_din20b(19),
      I1 => B_din20b(0),
      I2 => B_din20b(18),
      I3 => bitOrderDinLSB,
      I4 => B_din20b(1),
      O => \edge8x[3]_i_2_n_0\
    );
\edge8x[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_0_in108_in,
      I1 => p_0_in106_in,
      I2 => \din_d_reg[0]_6\(6),
      I3 => \din_d_reg[0]_6\(5),
      O => \edge8x[4]_i_1__0_n_0\
    );
\edge8x[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_0_in94_in,
      I1 => p_0_in91_in,
      I2 => p_0_in108_in,
      I3 => p_0_in110_in,
      I4 => \din_d_reg[0]_6\(6),
      I5 => \din_d_reg[0]_6\(7),
      O => \edge8x[5]_i_1__0_n_0\
    );
\edge8x[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_0_in96_in,
      I1 => p_0_in94_in,
      I2 => p_0_in110_in,
      I3 => \din_d_reg[0]_6\(0),
      I4 => \din_d_reg[0]_6\(7),
      I5 => \din_d_reg[0]_6\(8),
      O => \edge8x[6]_i_1__0_n_0\
    );
\edge8x[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_0_in98_in,
      I1 => p_0_in96_in,
      I2 => \din_d_reg[0]_6\(0),
      I3 => \din_d_reg[0]_6\(1),
      I4 => \din_d_reg[0]_6\(8),
      I5 => \din_d_reg[0]_6\(9),
      O => \edge8x[7]_i_1__0_n_0\
    );
\edge8x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge8x[0]_i_1__0_n_0\,
      Q => \edge8x_reg_n_0_[0]\,
      R => '0'
    );
\edge8x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge8x[1]_i_1__0_n_0\,
      Q => \edge8x_reg_n_0_[1]\,
      R => '0'
    );
\edge8x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge8x[2]_i_1__0_n_0\,
      Q => p_0_in58_in,
      R => '0'
    );
\edge8x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge8x[3]_i_1__0_n_0\,
      Q => \edge8x_reg_n_0_[3]\,
      R => '0'
    );
\edge8x_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge8x[4]_i_1__0_n_0\,
      Q => p_0_in64_in,
      S => \edge11x[2]_i_1_n_0\
    );
\edge8x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge8x[5]_i_1__0_n_0\,
      Q => \edge8x_reg_n_0_[5]\,
      R => '0'
    );
\edge8x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge8x[6]_i_1__0_n_0\,
      Q => p_0_in70_in,
      R => '0'
    );
\edge8x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => edge4x,
      D => \edge8x[7]_i_1__0_n_0\,
      Q => \edge8x_reg_n_0_[7]\,
      R => '0'
    );
\edge[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF707070"
    )
        port map (
      I0 => index266_in,
      I1 => \edge8x_reg_n_0_[5]\,
      I2 => \edge[0]_i_13_n_0\,
      I3 => p_0_in70_in,
      I4 => index269_in,
      O => \edge[0]_i_10_n_0\
    );
\edge[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF0FFF00000DDD"
    )
        port map (
      I0 => \edge10x_reg_n_0_[3]\,
      I1 => p_0_in31_in,
      I2 => index239_in,
      I3 => p_0_in40_in,
      I4 => \edge10x_reg_n_0_[1]\,
      I5 => \edge10x_reg_n_0_[0]\,
      O => \edge[0]_i_11_n_0\
    );
\edge[0]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \edge11x_reg_n_0_[0]\,
      I1 => \edge11x_reg_n_0_[1]\,
      I2 => p_0_in1_in,
      O => \edge[0]_i_12_n_0\
    );
\edge[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BABB"
    )
        port map (
      I0 => \edge8x_reg_n_0_[0]\,
      I1 => \edge8x_reg_n_0_[1]\,
      I2 => p_0_in58_in,
      I3 => \edge8x_reg_n_0_[3]\,
      O => \edge[0]_i_13_n_0\
    );
\edge[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F4F4FFF4FFF4"
    )
        port map (
      I0 => \edge[0]_i_2__0_n_0\,
      I1 => \edge[0]_i_3__0_n_0\,
      I2 => \edge[0]_i_4_n_0\,
      I3 => \edge[0]_i_5_n_0\,
      I4 => \edge[0]_i_6_n_0\,
      I5 => \edge[0]_i_7_n_0\,
      O => \edge[0]_i_1__0_n_0\
    );
\edge[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FFF"
    )
        port map (
      I0 => p_0_in25_in,
      I1 => index224_in,
      I2 => ADDRB(4),
      I3 => ADDRB(5),
      O => \edge[0]_i_2__0_n_0\
    );
\edge[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF544454445444"
    )
        port map (
      I0 => \edge[0]_i_8_n_0\,
      I1 => \edge[0]_i_9_n_0\,
      I2 => \edge11x_reg_n_0_[7]\,
      I3 => index215_in,
      I4 => \edge11x_reg_n_0_[9]\,
      I5 => index221_in,
      O => \edge[0]_i_3__0_n_0\
    );
\edge[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D500FF00D50000"
    )
        port map (
      I0 => \edge[0]_i_10_n_0\,
      I1 => \edge8x_reg_n_0_[7]\,
      I2 => index272_in,
      I3 => ADDRB(5),
      I4 => ADDRB(4),
      I5 => \edge4x_reg_n_0_[0]\,
      O => \edge[0]_i_4_n_0\
    );
\edge[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ADDRB(5),
      I1 => ADDRB(4),
      O => \edge[0]_i_5_n_0\
    );
\edge[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => index251_in,
      I1 => p_0_in52_in,
      O => \edge[0]_i_6_n_0\
    );
\edge[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF544454445444"
    )
        port map (
      I0 => \i__carry_i_3__7_n_0\,
      I1 => \edge[0]_i_11_n_0\,
      I2 => p_0_in43_in,
      I3 => index242_in,
      I4 => p_0_in49_in,
      I5 => index248_in,
      O => \edge[0]_i_7_n_0\
    );
\edge[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => index218_in,
      I1 => p_0_in19_in,
      O => \edge[0]_i_8_n_0\
    );
\edge[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F444F444F444"
    )
        port map (
      I0 => \i__carry_i_4__0_n_0\,
      I1 => \edge[0]_i_12_n_0\,
      I2 => index29_in,
      I3 => \edge11x_reg_n_0_[5]\,
      I4 => p_0_in13_in,
      I5 => index212_in,
      O => \edge[0]_i_9_n_0\
    );
\edge[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF40FF40FFFFFF40"
    )
        port map (
      I0 => \edge[1]_i_2__0_n_0\,
      I1 => ADDRB(5),
      I2 => ADDRB(4),
      I3 => \edge[1]_i_3_n_0\,
      I4 => \edge[1]_i_4_n_0\,
      I5 => \edge[2]_i_6_n_0\,
      O => \edge[1]_i_1__0_n_0\
    );
\edge[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AEAEAE"
    )
        port map (
      I0 => \i__carry_i_3__3_n_0\,
      I1 => \edge[1]_i_5_n_0\,
      I2 => \edge[2]_i_7_n_0\,
      I3 => p_0_in25_in,
      I4 => index224_in,
      O => \edge[1]_i_2__0_n_0\
    );
\edge[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F3AA"
    )
        port map (
      I0 => \edge4x_reg_n_0_[1]\,
      I1 => \edge[1]_i_6_n_0\,
      I2 => \edge[3]_i_6_n_0\,
      I3 => ADDRB(4),
      I4 => ADDRB(5),
      O => \edge[1]_i_3_n_0\
    );
\edge[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAFFEAFFEAFF"
    )
        port map (
      I0 => \i__carry_i_3__7_n_0\,
      I1 => index242_in,
      I2 => p_0_in43_in,
      I3 => \edge[1]_i_7_n_0\,
      I4 => p_0_in40_in,
      I5 => index239_in,
      O => \edge[1]_i_4_n_0\
    );
\edge[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \i__carry_i_4__0_n_0\,
      I1 => index29_in,
      I2 => \edge11x_reg_n_0_[5]\,
      I3 => \edge11x_reg_n_0_[0]\,
      I4 => \edge11x_reg_n_0_[1]\,
      O => \edge[1]_i_5_n_0\
    );
\edge[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF1FFF1FFF1"
    )
        port map (
      I0 => p_0_in58_in,
      I1 => \edge8x_reg_n_0_[3]\,
      I2 => \edge8x_reg_n_0_[0]\,
      I3 => \edge8x_reg_n_0_[1]\,
      I4 => \edge8x_reg_n_0_[5]\,
      I5 => index266_in,
      O => \edge[1]_i_6_n_0\
    );
\edge[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFDFCFC"
    )
        port map (
      I0 => \edge10x_reg_n_0_[3]\,
      I1 => \edge10x_reg_n_0_[0]\,
      I2 => \edge10x_reg_n_0_[1]\,
      I3 => p_0_in31_in,
      I4 => p_0_in37_in,
      O => \edge[1]_i_7_n_0\
    );
\edge[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFFBAFFFFFFBA"
    )
        port map (
      I0 => \edge[2]_i_2__0_n_0\,
      I1 => \edge[2]_i_3_n_0\,
      I2 => \edge4x_reg_n_0_[2]\,
      I3 => \edge[2]_i_4_n_0\,
      I4 => \edge[2]_i_5_n_0\,
      I5 => \edge[2]_i_6_n_0\,
      O => \edge[2]_i_1__0_n_0\
    );
\edge[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40004444"
    )
        port map (
      I0 => ADDRB(5),
      I1 => ADDRB(4),
      I2 => index272_in,
      I3 => \edge8x_reg_n_0_[7]\,
      I4 => \i__carry_i_3__8_n_0\,
      O => \edge[2]_i_2__0_n_0\
    );
\edge[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ADDRB(5),
      I1 => ADDRB(4),
      O => \edge[2]_i_3_n_0\
    );
\edge[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFF8"
    )
        port map (
      I0 => \edge11x_reg_n_0_[5]\,
      I1 => index29_in,
      I2 => \edge[2]_i_7_n_0\,
      I3 => \i__carry_i_4__0_n_0\,
      I4 => \edge[0]_i_2__0_n_0\,
      I5 => \i__carry_i_3__3_n_0\,
      O => \edge[2]_i_4_n_0\
    );
\edge[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => p_0_in40_in,
      I1 => index239_in,
      I2 => p_0_in43_in,
      I3 => index242_in,
      I4 => \i__carry_i_5_n_0\,
      I5 => \i__carry_i_3__7_n_0\,
      O => \edge[2]_i_5_n_0\
    );
\edge[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF8FFF8FFF8F"
    )
        port map (
      I0 => p_0_in49_in,
      I1 => index248_in,
      I2 => ADDRB(5),
      I3 => ADDRB(4),
      I4 => index251_in,
      I5 => p_0_in52_in,
      O => \edge[2]_i_6_n_0\
    );
\edge[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_0_in13_in,
      I1 => index212_in,
      I2 => \edge11x_reg_n_0_[7]\,
      I3 => index215_in,
      O => \edge[2]_i_7_n_0\
    );
\edge[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDCCFDCCFDCCCDCC"
    )
        port map (
      I0 => \edge[3]_i_2__0_n_0\,
      I1 => \edge[3]_i_3__0_n_0\,
      I2 => ADDRB(4),
      I3 => ADDRB(5),
      I4 => \edge[3]_i_4_n_0\,
      I5 => \edge[3]_i_5_n_0\,
      O => \edge[3]_i_1__0_n_0\
    );
\edge[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000770777077707"
    )
        port map (
      I0 => p_0_in52_in,
      I1 => index251_in,
      I2 => \i__carry_i_3__4_n_0\,
      I3 => \i__carry_i_3__7_n_0\,
      I4 => index248_in,
      I5 => p_0_in49_in,
      O => \edge[3]_i_2__0_n_0\
    );
\edge[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"030A000A"
    )
        port map (
      I0 => \edge4x_reg_n_0_[3]\,
      I1 => \edge[3]_i_6_n_0\,
      I2 => ADDRB(5),
      I3 => ADDRB(4),
      I4 => \edge[3]_i_7_n_0\,
      O => \edge[3]_i_3__0_n_0\
    );
\edge[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABBBABBBABBB"
    )
        port map (
      I0 => \i__carry_i_3__3_n_0\,
      I1 => \i__carry_i_3__0_n_0\,
      I2 => p_0_in13_in,
      I3 => index212_in,
      I4 => \edge11x_reg_n_0_[7]\,
      I5 => index215_in,
      O => \edge[3]_i_4_n_0\
    );
\edge[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => index224_in,
      I1 => p_0_in25_in,
      O => \edge[3]_i_5_n_0\
    );
\edge[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_0_in70_in,
      I1 => index269_in,
      I2 => \edge8x_reg_n_0_[7]\,
      I3 => index272_in,
      O => \edge[3]_i_6_n_0\
    );
\edge[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i__carry_i_3__9_n_0\,
      I1 => \edge8x_reg_n_0_[5]\,
      I2 => index266_in,
      O => \edge[3]_i_7_n_0\
    );
\edge_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \edge[0]_i_1__0_n_0\,
      Q => bankSel_d_reg_0(0),
      R => rst
    );
\edge_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \edge[1]_i_1__0_n_0\,
      Q => bankSel_d_reg_0(1),
      R => rst
    );
\edge_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \edge[2]_i_1__0_n_0\,
      Q => bankSel_d_reg_0(2),
      R => rst
    );
\edge_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => \edge[3]_i_1__0_n_0\,
      Q => bankSel_d_reg_0(3),
      R => rst
    );
\i__carry_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000777"
    )
        port map (
      I0 => index215_in,
      I1 => \edge11x_reg_n_0_[7]\,
      I2 => index212_in,
      I3 => p_0_in13_in,
      I4 => \i__carry_i_3__0_n_0\,
      O => \i__carry_i_1__10_n_0\
    );
\i__carry_i_1__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABBBABBBABBB"
    )
        port map (
      I0 => \i__carry_i_3__3_n_0\,
      I1 => \i__carry_i_3__0_n_0\,
      I2 => p_0_in13_in,
      I3 => index212_in,
      I4 => \edge11x_reg_n_0_[7]\,
      I5 => index215_in,
      O => \i__carry_i_1__11_n_0\
    );
\i__carry_i_1__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000777"
    )
        port map (
      I0 => index242_in,
      I1 => p_0_in43_in,
      I2 => index239_in,
      I3 => p_0_in40_in,
      I4 => \i__carry_i_3__5_n_0\,
      O => \i__carry_i_1__12_n_0\
    );
\i__carry_i_1__13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i__carry_i_3__9_n_0\,
      I1 => \edge8x_reg_n_0_[5]\,
      I2 => index266_in,
      O => \i__carry_i_1__13_n_0\
    );
\i__carry_i_1__14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \i__carry_i_3__6_n_0\,
      I1 => \edge10x_reg_n_0_[3]\,
      I2 => \edge10x_reg_n_0_[0]\,
      I3 => \edge10x_reg_n_0_[1]\,
      I4 => p_0_in31_in,
      I5 => p_0_in37_in,
      O => \i__carry_i_1__14_n_0\
    );
\i__carry_i_1__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => p_0_in58_in,
      I2 => \edge8x_reg_n_0_[3]\,
      I3 => \edge8x_reg_n_0_[0]\,
      I4 => \edge8x_reg_n_0_[1]\,
      O => \i__carry_i_1__15_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \edge11x_reg_n_0_[3]\,
      I1 => \edge11x_reg_n_0_[0]\,
      I2 => \edge11x_reg_n_0_[1]\,
      I3 => p_0_in1_in,
      I4 => p_0_in7_in,
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00070707"
    )
        port map (
      I0 => p_0_in13_in,
      I1 => index212_in,
      I2 => \i__carry_i_3__1_n_0\,
      I3 => index29_in,
      I4 => \edge11x_reg_n_0_[5]\,
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_0_in7_in,
      I1 => p_0_in1_in,
      I2 => \edge11x_reg_n_0_[1]\,
      I3 => \edge11x_reg_n_0_[0]\,
      I4 => \edge11x_reg_n_0_[3]\,
      I5 => \i__carry_i_3__2_n_0\,
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_0_in19_in,
      I1 => index218_in,
      I2 => \i__carry_i_3_n_0\,
      O => \i__carry_i_1__5_n_0\
    );
\i__carry_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \edge10x_reg_n_0_[3]\,
      I1 => \edge10x_reg_n_0_[0]\,
      I2 => \edge10x_reg_n_0_[1]\,
      I3 => p_0_in31_in,
      I4 => p_0_in37_in,
      O => \i__carry_i_1__6_n_0\
    );
\i__carry_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8888"
    )
        port map (
      I0 => p_0_in49_in,
      I1 => index248_in,
      I2 => index245_in,
      I3 => p_0_in46_in,
      I4 => \i__carry_i_3__4_n_0\,
      O => \i__carry_i_1__7_n_0\
    );
\i__carry_i_1__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000151515"
    )
        port map (
      I0 => \i__carry_i_3__5_n_0\,
      I1 => p_0_in40_in,
      I2 => index239_in,
      I3 => p_0_in43_in,
      I4 => index242_in,
      I5 => \i__carry_i_3__7_n_0\,
      O => \i__carry_i_1__8_n_0\
    );
\i__carry_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00707070"
    )
        port map (
      I0 => index266_in,
      I1 => \edge8x_reg_n_0_[5]\,
      I2 => \i__carry_i_3__9_n_0\,
      I3 => p_0_in70_in,
      I4 => index269_in,
      O => \i__carry_i_1__9_n_0\
    );
\i__carry_i_2__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C000D"
    )
        port map (
      I0 => p_0_in37_in,
      I1 => p_0_in31_in,
      I2 => \edge10x_reg_n_0_[1]\,
      I3 => \edge10x_reg_n_0_[0]\,
      I4 => \edge10x_reg_n_0_[3]\,
      O => \i__carry_i_2__10_n_0\
    );
\i__carry_i_2__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA8AAA00AA02"
    )
        port map (
      I0 => \i__carry_i_3__8_n_0\,
      I1 => p_0_in58_in,
      I2 => \edge8x_reg_n_0_[3]\,
      I3 => \edge8x_reg_n_0_[0]\,
      I4 => \edge8x_reg_n_0_[1]\,
      I5 => \i__carry_i_4__4_n_0\,
      O => \i__carry_i_2__11_n_0\
    );
\i__carry_i_2__12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5500550055005501"
    )
        port map (
      I0 => \i__carry_i_4__4_n_0\,
      I1 => p_0_in58_in,
      I2 => \edge8x_reg_n_0_[3]\,
      I3 => \edge8x_reg_n_0_[0]\,
      I4 => \edge8x_reg_n_0_[1]\,
      I5 => p_0_in64_in,
      O => \i__carry_i_2__12_n_0\
    );
\i__carry_i_2__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCCCD"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => \edge8x_reg_n_0_[0]\,
      I2 => \edge8x_reg_n_0_[1]\,
      I3 => p_0_in58_in,
      I4 => \edge8x_reg_n_0_[3]\,
      O => \i__carry_i_2__13_n_0\
    );
\i__carry_i_2__14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \i__carry_i_4__1_n_0\,
      I1 => p_0_in1_in,
      I2 => \edge11x_reg_n_0_[1]\,
      I3 => \edge11x_reg_n_0_[0]\,
      I4 => \i__carry_i_3__2_n_0\,
      I5 => \i__carry_i_4__0_n_0\,
      O => \i__carry_i_2__14_n_0\
    );
\i__carry_i_2__15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005000000050001"
    )
        port map (
      I0 => \i__carry_i_3__6_n_0\,
      I1 => \edge10x_reg_n_0_[3]\,
      I2 => \edge10x_reg_n_0_[0]\,
      I3 => \edge10x_reg_n_0_[1]\,
      I4 => p_0_in31_in,
      I5 => p_0_in37_in,
      O => \i__carry_i_2__15_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00707070"
    )
        port map (
      I0 => index215_in,
      I1 => \edge11x_reg_n_0_[7]\,
      I2 => \i__carry_i_4_n_0\,
      I3 => p_0_in19_in,
      I4 => index218_in,
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0070"
    )
        port map (
      I0 => index215_in,
      I1 => \edge11x_reg_n_0_[7]\,
      I2 => \i__carry_i_4_n_0\,
      I3 => \i__carry_i_3__3_n_0\,
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i__carry_i_4_n_0\,
      I1 => \edge11x_reg_n_0_[7]\,
      I2 => index215_in,
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010101"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => \edge11x_reg_n_0_[1]\,
      I2 => \edge11x_reg_n_0_[0]\,
      I3 => \edge11x_reg_n_0_[5]\,
      I4 => index29_in,
      I5 => \i__carry_i_4__0_n_0\,
      O => \i__carry_i_2__5_n_0\
    );
\i__carry_i_2__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020003"
    )
        port map (
      I0 => \edge11x_reg_n_0_[3]\,
      I1 => \edge11x_reg_n_0_[0]\,
      I2 => \edge11x_reg_n_0_[1]\,
      I3 => p_0_in1_in,
      I4 => p_0_in7_in,
      O => \i__carry_i_2__6_n_0\
    );
\i__carry_i_2__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02220000"
    )
        port map (
      I0 => \edge[0]_i_7_n_0\,
      I1 => \edge[2]_i_5_n_0\,
      I2 => p_0_in49_in,
      I3 => index248_in,
      I4 => \edge[1]_i_4_n_0\,
      O => \i__carry_i_2__7_n_0\
    );
\i__carry_i_2__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => \i__carry_i_4__3_n_0\,
      I1 => \i__carry_i_4__2_n_0\,
      I2 => p_0_in46_in,
      I3 => index245_in,
      O => \i__carry_i_2__8_n_0\
    );
\i__carry_i_2__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000002A2A2A"
    )
        port map (
      I0 => \i__carry_i_4__2_n_0\,
      I1 => p_0_in40_in,
      I2 => index239_in,
      I3 => p_0_in43_in,
      I4 => index242_in,
      I5 => \i__carry_i_5_n_0\,
      O => \i__carry_i_2__9_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000777"
    )
        port map (
      I0 => index215_in,
      I1 => \edge11x_reg_n_0_[7]\,
      I2 => index212_in,
      I3 => p_0_in13_in,
      I4 => \i__carry_i_3__0_n_0\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \edge11x_reg_n_0_[5]\,
      I1 => index29_in,
      I2 => \i__carry_i_3__1_n_0\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in7_in,
      I1 => p_0_in1_in,
      I2 => \edge11x_reg_n_0_[1]\,
      I3 => \edge11x_reg_n_0_[0]\,
      I4 => \edge11x_reg_n_0_[3]\,
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => index29_in,
      I1 => \edge11x_reg_n_0_[5]\,
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_0_in19_in,
      I1 => index218_in,
      I2 => \edge11x_reg_n_0_[9]\,
      I3 => index221_in,
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000777"
    )
        port map (
      I0 => index242_in,
      I1 => p_0_in43_in,
      I2 => index239_in,
      I3 => p_0_in40_in,
      I4 => \i__carry_i_3__5_n_0\,
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_3__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in37_in,
      I1 => p_0_in31_in,
      I2 => \edge10x_reg_n_0_[1]\,
      I3 => \edge10x_reg_n_0_[0]\,
      I4 => \edge10x_reg_n_0_[3]\,
      O => \i__carry_i_3__5_n_0\
    );
\i__carry_i_3__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => index239_in,
      I1 => p_0_in40_in,
      O => \i__carry_i_3__6_n_0\
    );
\i__carry_i_3__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => index245_in,
      I1 => p_0_in46_in,
      O => \i__carry_i_3__7_n_0\
    );
\i__carry_i_3__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00707070"
    )
        port map (
      I0 => index266_in,
      I1 => \edge8x_reg_n_0_[5]\,
      I2 => \i__carry_i_4__5_n_0\,
      I3 => p_0_in70_in,
      I4 => index269_in,
      O => \i__carry_i_3__8_n_0\
    );
\i__carry_i_3__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => p_0_in58_in,
      I2 => \edge8x_reg_n_0_[3]\,
      I3 => \edge8x_reg_n_0_[0]\,
      I4 => \edge8x_reg_n_0_[1]\,
      O => \i__carry_i_3__9_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \i__carry_i_4__1_n_0\,
      I1 => p_0_in1_in,
      I2 => \edge11x_reg_n_0_[1]\,
      I3 => \edge11x_reg_n_0_[0]\,
      I4 => \i__carry_i_3__2_n_0\,
      I5 => \i__carry_i_4__0_n_0\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => p_0_in7_in,
      I1 => p_0_in1_in,
      I2 => \edge11x_reg_n_0_[1]\,
      I3 => \edge11x_reg_n_0_[0]\,
      I4 => \edge11x_reg_n_0_[3]\,
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => index212_in,
      I1 => p_0_in13_in,
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005000000050001"
    )
        port map (
      I0 => \i__carry_i_3__6_n_0\,
      I1 => \edge10x_reg_n_0_[3]\,
      I2 => \edge10x_reg_n_0_[0]\,
      I3 => \edge10x_reg_n_0_[1]\,
      I4 => p_0_in31_in,
      I5 => p_0_in37_in,
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => index242_in,
      I2 => p_0_in43_in,
      I3 => index239_in,
      I4 => p_0_in40_in,
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => index266_in,
      I1 => \edge8x_reg_n_0_[5]\,
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_4__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => p_0_in58_in,
      I1 => \edge8x_reg_n_0_[3]\,
      I2 => \edge8x_reg_n_0_[0]\,
      I3 => \edge8x_reg_n_0_[1]\,
      I4 => p_0_in64_in,
      O => \i__carry_i_4__5_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => p_0_in37_in,
      I1 => p_0_in31_in,
      I2 => \edge10x_reg_n_0_[1]\,
      I3 => \edge10x_reg_n_0_[0]\,
      I4 => \edge10x_reg_n_0_[3]\,
      O => \i__carry_i_5_n_0\
    );
\index2_inferred__13/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__13/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index239_in,
      CO(0) => \index2_inferred__13/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__13/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__6_n_0\,
      S(0) => \i__carry_i_2__10_n_0\
    );
\index2_inferred__14/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__14/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index242_in,
      CO(0) => \index2_inferred__14/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__14/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__14_n_0\,
      S(0) => \i__carry_i_2__15_n_0\
    );
\index2_inferred__15/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__15/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index245_in,
      CO(0) => \index2_inferred__15/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__15/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__12_n_0\,
      S(0) => \i__carry_i_2__9_n_0\
    );
\index2_inferred__16/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__16/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index248_in,
      CO(0) => \index2_inferred__16/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__16/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__8_n_0\,
      S(0) => \i__carry_i_2__8_n_0\
    );
\index2_inferred__17/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__17/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index251_in,
      CO(0) => \index2_inferred__17/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__17/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__7_n_0\,
      S(0) => \i__carry_i_2__7_n_0\
    );
\index2_inferred__22/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__22/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index266_in,
      CO(0) => \index2_inferred__22/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__22/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__15_n_0\,
      S(0) => \i__carry_i_2__13_n_0\
    );
\index2_inferred__23/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__23/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index269_in,
      CO(0) => \index2_inferred__23/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__23/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__13_n_0\,
      S(0) => \i__carry_i_2__12_n_0\
    );
\index2_inferred__24/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__24/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index272_in,
      CO(0) => \index2_inferred__24/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__24/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__9_n_0\,
      S(0) => \i__carry_i_2__11_n_0\
    );
\index2_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__3/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index29_in,
      CO(0) => \index2_inferred__3/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__3/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__2_n_0\,
      S(0) => \i__carry_i_2__6_n_0\
    );
\index2_inferred__4/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__4/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index212_in,
      CO(0) => \index2_inferred__4/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__4/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__4_n_0\,
      S(0) => \i__carry_i_2__5_n_0\
    );
\index2_inferred__5/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__5/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index215_in,
      CO(0) => \index2_inferred__5/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__5/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__3_n_0\,
      S(0) => \i__carry_i_2__14_n_0\
    );
\index2_inferred__6/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__6/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index218_in,
      CO(0) => \index2_inferred__6/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__6/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__10_n_0\,
      S(0) => \i__carry_i_2__4_n_0\
    );
\index2_inferred__7/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__7/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index221_in,
      CO(0) => \index2_inferred__7/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__7/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__5_n_0\,
      S(0) => \i__carry_i_2__2_n_0\
    );
\index2_inferred__8/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_index2_inferred__8/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => index224_in,
      CO(0) => \index2_inferred__8/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_index2_inferred__8/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1__11_n_0\,
      S(0) => \i__carry_i_2__3_n_0\
    );
\we_d_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(0),
      Q => \we_d_reg_n_0_[0][0]\,
      R => rst
    );
\we_d_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(1),
      Q => \we_d_reg_n_0_[0][1]\,
      R => rst
    );
\we_d_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(2),
      Q => \we_d_reg_n_0_[1][0]\,
      R => rst
    );
\we_d_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(3),
      Q => \we_d_reg_n_0_[1][1]\,
      R => rst
    );
\we_d_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(4),
      Q => \we_d_reg_n_0_[2][0]\,
      R => rst
    );
\we_d_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(5),
      Q => \we_d_reg_n_0_[2][1]\,
      R => rst
    );
\we_d_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(6),
      Q => \we_d_reg_n_0_[3][0]\,
      R => rst
    );
\we_d_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(7),
      Q => \we_d_reg_n_0_[3][1]\,
      R => rst
    );
\we_d_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(8),
      Q => \we_d_reg_n_0_[4][0]\,
      R => rst
    );
\we_d_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(9),
      Q => \we_d_reg_n_0_[4][1]\,
      R => rst
    );
\we_d_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(10),
      Q => \we_d_reg_n_0_[5][0]\,
      R => rst
    );
\we_d_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(11),
      Q => \we_d_reg_n_0_[5][1]\,
      R => rst
    );
\we_d_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(12),
      Q => \we_d_reg_n_0_[6][0]\,
      R => rst
    );
\we_d_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(13),
      Q => \we_d_reg_n_0_[6][1]\,
      R => rst
    );
\we_d_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(14),
      Q => \we_d_reg_n_0_[7][0]\,
      R => rst
    );
\we_d_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(15),
      Q => \we_d_reg_n_0_[7][1]\,
      R => rst
    );
\we_d_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(16),
      Q => \we_d_reg_n_0_[8][0]\,
      R => rst
    );
\we_d_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(17),
      Q => \we_d_reg_n_0_[8][1]\,
      R => rst
    );
\we_d_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(18),
      Q => \we_d_reg_n_0_[9][0]\,
      R => rst
    );
\we_d_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => B_recclk,
      CE => B_en,
      D => DOB(19),
      Q => \we_d_reg_n_0_[9][1]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0_os48_1011x20bTo10b_top2 is
  port (
    A_dout20bEn : out STD_LOGIC;
    B_dout20bEn : out STD_LOGIC;
    B_dout10bEn : out STD_LOGIC;
    A_dout10bEn : out STD_LOGIC;
    A_dout10b : out STD_LOGIC_VECTOR ( 9 downto 0 );
    A_dout20b : out STD_LOGIC_VECTOR ( 19 downto 0 );
    B_dout10b : out STD_LOGIC_VECTOR ( 9 downto 0 );
    B_dout20b : out STD_LOGIC_VECTOR ( 19 downto 0 );
    B_en : in STD_LOGIC;
    rst : in STD_LOGIC;
    A_en : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    B_recclk : in STD_LOGIC;
    B_din20b : in STD_LOGIC_VECTOR ( 19 downto 0 );
    bitOrderDinLSB : in STD_LOGIC;
    B_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    A_din20b : in STD_LOGIC_VECTOR ( 19 downto 0 );
    bitOrderDoutLSB : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_os48_1011x20bTo10b_top2_0_0_os48_1011x20bTo10b_top2 : entity is "os48_1011x20bTo10b_top2";
end design_1_os48_1011x20bTo10b_top2_0_0_os48_1011x20bTo10b_top2;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0_os48_1011x20bTo10b_top2 is
  signal A_dout20bEn0 : STD_LOGIC;
  signal A_dout20bEn_i : STD_LOGIC;
  signal A_dout20b_i : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[10]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[11]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[12]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[13]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[14]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[15]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[16]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[17]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[18]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[19]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[6]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[8]\ : STD_LOGIC;
  signal \A_dout20b_i_reg_n_0_[9]\ : STD_LOGIC;
  signal A_dout_i : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal A_edge : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal A_valid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_bankSel : STD_LOGIC;
  signal \B_bitSel[0]_22\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \B_bitSel[1]_23\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_byteRdy : STD_LOGIC;
  signal B_dSel : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^b_dout10ben\ : STD_LOGIC;
  signal B_dout20bEn0 : STD_LOGIC;
  signal B_dout20bEn_i : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[10]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[11]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[12]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[13]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[14]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[15]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[16]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[17]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[18]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[19]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[6]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[8]\ : STD_LOGIC;
  signal \B_dout20b_i_reg_n_0_[9]\ : STD_LOGIC;
  signal B_dout_i : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal B_edge : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_valid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \B_we[0]_12\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \B_we[1]_13\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \B_we[2]_14\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \B_we[3]_15\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \B_we[4]_16\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \B_we[5]_17\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \B_we[6]_18\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \B_we[7]_19\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \B_we[8]_20\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \B_we[9]_21\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal C_DATAA_n_13 : STD_LOGIC;
  signal C_DATAB_n_14 : STD_LOGIC;
  signal C_DATAB_n_19 : STD_LOGIC;
  signal C_DATAB_n_20 : STD_LOGIC;
  signal C_DATAB_n_21 : STD_LOGIC;
  signal C_DECISION_n_16 : STD_LOGIC;
  signal C_DECISION_n_17 : STD_LOGIC;
  signal C_DECISION_n_18 : STD_LOGIC;
  signal bankSel : STD_LOGIC;
  signal \bitSel[0]_34\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bitSel[1]_35\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal byteRdy : STD_LOGIC;
  signal dSel : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_24_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_34_in : STD_LOGIC;
  signal p_35_in : STD_LOGIC;
  signal p_45_in : STD_LOGIC;
  signal p_46_in : STD_LOGIC;
  signal \we[0]_24\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \we[1]_25\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \we[2]_26\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \we[3]_27\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \we[4]_28\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \we[5]_29\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \we[6]_30\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \we[7]_31\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \we[8]_32\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \we[9]_33\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A_dout10b[0]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \A_dout10b[1]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \A_dout10b[2]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \A_dout10b[3]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \A_dout10b[4]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \A_dout10b[5]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \A_dout10b[6]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \A_dout10b[7]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \A_dout10b[8]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \A_dout10b[9]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \A_dout20b[0]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \A_dout20b[10]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \A_dout20b[11]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \A_dout20b[12]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \A_dout20b[13]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \A_dout20b[14]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \A_dout20b[15]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \A_dout20b[16]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \A_dout20b[17]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \A_dout20b[18]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \A_dout20b[19]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \A_dout20b[1]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \A_dout20b[2]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \A_dout20b[3]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \A_dout20b[4]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \A_dout20b[5]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \A_dout20b[6]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \A_dout20b[7]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \A_dout20b[8]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \A_dout20b[9]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \B_dout10b[0]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \B_dout10b[1]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \B_dout10b[2]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \B_dout10b[3]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \B_dout10b[4]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \B_dout10b[5]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \B_dout10b[6]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \B_dout10b[7]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \B_dout10b[8]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \B_dout10b[9]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \B_dout20b[0]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \B_dout20b[10]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \B_dout20b[11]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \B_dout20b[12]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \B_dout20b[13]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \B_dout20b[14]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \B_dout20b[15]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \B_dout20b[16]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \B_dout20b[17]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \B_dout20b[18]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \B_dout20b[19]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \B_dout20b[1]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \B_dout20b[2]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \B_dout20b[3]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \B_dout20b[4]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \B_dout20b[5]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \B_dout20b[6]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \B_dout20b[7]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \B_dout20b[8]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \B_dout20b[9]_INST_0\ : label is "soft_lutpair82";
begin
  B_dout10bEn <= \^b_dout10ben\;
\A_dout10b[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_dout_i(9),
      I1 => bitOrderDoutLSB,
      I2 => A_dout_i(0),
      O => A_dout10b(0)
    );
\A_dout10b[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_dout_i(8),
      I1 => bitOrderDoutLSB,
      I2 => A_dout_i(1),
      O => A_dout10b(1)
    );
\A_dout10b[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_dout_i(7),
      I1 => bitOrderDoutLSB,
      I2 => A_dout_i(2),
      O => A_dout10b(2)
    );
\A_dout10b[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_dout_i(6),
      I1 => bitOrderDoutLSB,
      I2 => A_dout_i(3),
      O => A_dout10b(3)
    );
\A_dout10b[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_dout_i(5),
      I1 => bitOrderDoutLSB,
      I2 => A_dout_i(4),
      O => A_dout10b(4)
    );
\A_dout10b[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_dout_i(4),
      I1 => bitOrderDoutLSB,
      I2 => A_dout_i(5),
      O => A_dout10b(5)
    );
\A_dout10b[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_dout_i(3),
      I1 => bitOrderDoutLSB,
      I2 => A_dout_i(6),
      O => A_dout10b(6)
    );
\A_dout10b[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_dout_i(2),
      I1 => bitOrderDoutLSB,
      I2 => A_dout_i(7),
      O => A_dout10b(7)
    );
\A_dout10b[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_dout_i(1),
      I1 => bitOrderDoutLSB,
      I2 => A_dout_i(8),
      O => A_dout10b(8)
    );
\A_dout10b[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A_dout_i(0),
      I1 => bitOrderDoutLSB,
      I2 => A_dout_i(9),
      O => A_dout10b(9)
    );
A_dout20bEn_i_reg: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => '1',
      CLR => rst,
      D => C_DATAA_n_13,
      Q => A_dout20bEn_i
    );
A_dout20bEn_reg: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => '1',
      CLR => rst,
      D => A_dout20bEn0,
      Q => A_dout20bEn
    );
\A_dout20b[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[19]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[0]\,
      O => A_dout20b(0)
    );
\A_dout20b[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[9]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[10]\,
      O => A_dout20b(10)
    );
\A_dout20b[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[8]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[11]\,
      O => A_dout20b(11)
    );
\A_dout20b[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[7]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[12]\,
      O => A_dout20b(12)
    );
\A_dout20b[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[6]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[13]\,
      O => A_dout20b(13)
    );
\A_dout20b[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[5]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[14]\,
      O => A_dout20b(14)
    );
\A_dout20b[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[4]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[15]\,
      O => A_dout20b(15)
    );
\A_dout20b[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[3]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[16]\,
      O => A_dout20b(16)
    );
\A_dout20b[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[2]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[17]\,
      O => A_dout20b(17)
    );
\A_dout20b[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[1]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[18]\,
      O => A_dout20b(18)
    );
\A_dout20b[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[0]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[19]\,
      O => A_dout20b(19)
    );
\A_dout20b[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[18]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[1]\,
      O => A_dout20b(1)
    );
\A_dout20b[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[17]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[2]\,
      O => A_dout20b(2)
    );
\A_dout20b[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[16]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[3]\,
      O => A_dout20b(3)
    );
\A_dout20b[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[15]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[4]\,
      O => A_dout20b(4)
    );
\A_dout20b[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[14]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[5]\,
      O => A_dout20b(5)
    );
\A_dout20b[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[13]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[6]\,
      O => A_dout20b(6)
    );
\A_dout20b[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[12]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[7]\,
      O => A_dout20b(7)
    );
\A_dout20b[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[11]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[8]\,
      O => A_dout20b(8)
    );
\A_dout20b[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \A_dout20b_i_reg_n_0_[10]\,
      I1 => bitOrderDoutLSB,
      I2 => \A_dout20b_i_reg_n_0_[9]\,
      O => A_dout20b(9)
    );
\A_dout20b_i_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => A_dout_i(0),
      Q => \A_dout20b_i_reg_n_0_[0]\
    );
\A_dout20b_i_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => \A_dout20b_i_reg_n_0_[0]\,
      Q => \A_dout20b_i_reg_n_0_[10]\
    );
\A_dout20b_i_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => \A_dout20b_i_reg_n_0_[1]\,
      Q => \A_dout20b_i_reg_n_0_[11]\
    );
\A_dout20b_i_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => \A_dout20b_i_reg_n_0_[2]\,
      Q => \A_dout20b_i_reg_n_0_[12]\
    );
\A_dout20b_i_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => \A_dout20b_i_reg_n_0_[3]\,
      Q => \A_dout20b_i_reg_n_0_[13]\
    );
\A_dout20b_i_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => \A_dout20b_i_reg_n_0_[4]\,
      Q => \A_dout20b_i_reg_n_0_[14]\
    );
\A_dout20b_i_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => \A_dout20b_i_reg_n_0_[5]\,
      Q => \A_dout20b_i_reg_n_0_[15]\
    );
\A_dout20b_i_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => \A_dout20b_i_reg_n_0_[6]\,
      Q => \A_dout20b_i_reg_n_0_[16]\
    );
\A_dout20b_i_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => \A_dout20b_i_reg_n_0_[7]\,
      Q => \A_dout20b_i_reg_n_0_[17]\
    );
\A_dout20b_i_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => \A_dout20b_i_reg_n_0_[8]\,
      Q => \A_dout20b_i_reg_n_0_[18]\
    );
\A_dout20b_i_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => \A_dout20b_i_reg_n_0_[9]\,
      Q => \A_dout20b_i_reg_n_0_[19]\
    );
\A_dout20b_i_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => A_dout_i(1),
      Q => \A_dout20b_i_reg_n_0_[1]\
    );
\A_dout20b_i_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => A_dout_i(2),
      Q => \A_dout20b_i_reg_n_0_[2]\
    );
\A_dout20b_i_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => A_dout_i(3),
      Q => \A_dout20b_i_reg_n_0_[3]\
    );
\A_dout20b_i_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => A_dout_i(4),
      Q => \A_dout20b_i_reg_n_0_[4]\
    );
\A_dout20b_i_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => A_dout_i(5),
      Q => \A_dout20b_i_reg_n_0_[5]\
    );
\A_dout20b_i_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => A_dout_i(6),
      Q => \A_dout20b_i_reg_n_0_[6]\
    );
\A_dout20b_i_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => A_dout_i(7),
      Q => \A_dout20b_i_reg_n_0_[7]\
    );
\A_dout20b_i_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => A_dout_i(8),
      Q => \A_dout20b_i_reg_n_0_[8]\
    );
\A_dout20b_i_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => A_recclk,
      CE => A_dout20b_i,
      CLR => rst,
      D => A_dout_i(9),
      Q => \A_dout20b_i_reg_n_0_[9]\
    );
\B_dout10b[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_dout_i(9),
      I1 => bitOrderDoutLSB,
      I2 => B_dout_i(0),
      O => B_dout10b(0)
    );
\B_dout10b[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_dout_i(8),
      I1 => bitOrderDoutLSB,
      I2 => B_dout_i(1),
      O => B_dout10b(1)
    );
\B_dout10b[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_dout_i(7),
      I1 => bitOrderDoutLSB,
      I2 => B_dout_i(2),
      O => B_dout10b(2)
    );
\B_dout10b[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_dout_i(6),
      I1 => bitOrderDoutLSB,
      I2 => B_dout_i(3),
      O => B_dout10b(3)
    );
\B_dout10b[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_dout_i(5),
      I1 => bitOrderDoutLSB,
      I2 => B_dout_i(4),
      O => B_dout10b(4)
    );
\B_dout10b[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_dout_i(4),
      I1 => bitOrderDoutLSB,
      I2 => B_dout_i(5),
      O => B_dout10b(5)
    );
\B_dout10b[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_dout_i(3),
      I1 => bitOrderDoutLSB,
      I2 => B_dout_i(6),
      O => B_dout10b(6)
    );
\B_dout10b[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_dout_i(2),
      I1 => bitOrderDoutLSB,
      I2 => B_dout_i(7),
      O => B_dout10b(7)
    );
\B_dout10b[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_dout_i(1),
      I1 => bitOrderDoutLSB,
      I2 => B_dout_i(8),
      O => B_dout10b(8)
    );
\B_dout10b[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B_dout_i(0),
      I1 => bitOrderDoutLSB,
      I2 => B_dout_i(9),
      O => B_dout10b(9)
    );
B_dout20bEn_i_reg: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => '1',
      CLR => rst,
      D => C_DATAB_n_21,
      Q => B_dout20bEn_i
    );
B_dout20bEn_reg: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => '1',
      CLR => rst,
      D => B_dout20bEn0,
      Q => B_dout20bEn
    );
\B_dout20b[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[19]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[0]\,
      O => B_dout20b(0)
    );
\B_dout20b[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[9]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[10]\,
      O => B_dout20b(10)
    );
\B_dout20b[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[8]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[11]\,
      O => B_dout20b(11)
    );
\B_dout20b[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[7]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[12]\,
      O => B_dout20b(12)
    );
\B_dout20b[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[6]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[13]\,
      O => B_dout20b(13)
    );
\B_dout20b[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[5]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[14]\,
      O => B_dout20b(14)
    );
\B_dout20b[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[4]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[15]\,
      O => B_dout20b(15)
    );
\B_dout20b[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[3]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[16]\,
      O => B_dout20b(16)
    );
\B_dout20b[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[2]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[17]\,
      O => B_dout20b(17)
    );
\B_dout20b[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[1]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[18]\,
      O => B_dout20b(18)
    );
\B_dout20b[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[0]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[19]\,
      O => B_dout20b(19)
    );
\B_dout20b[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[18]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[1]\,
      O => B_dout20b(1)
    );
\B_dout20b[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[17]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[2]\,
      O => B_dout20b(2)
    );
\B_dout20b[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[16]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[3]\,
      O => B_dout20b(3)
    );
\B_dout20b[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[15]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[4]\,
      O => B_dout20b(4)
    );
\B_dout20b[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[14]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[5]\,
      O => B_dout20b(5)
    );
\B_dout20b[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[13]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[6]\,
      O => B_dout20b(6)
    );
\B_dout20b[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[12]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[7]\,
      O => B_dout20b(7)
    );
\B_dout20b[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[11]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[8]\,
      O => B_dout20b(8)
    );
\B_dout20b[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \B_dout20b_i_reg_n_0_[10]\,
      I1 => bitOrderDoutLSB,
      I2 => \B_dout20b_i_reg_n_0_[9]\,
      O => B_dout20b(9)
    );
\B_dout20b_i_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => B_dout_i(0),
      Q => \B_dout20b_i_reg_n_0_[0]\
    );
\B_dout20b_i_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => \B_dout20b_i_reg_n_0_[0]\,
      Q => \B_dout20b_i_reg_n_0_[10]\
    );
\B_dout20b_i_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => \B_dout20b_i_reg_n_0_[1]\,
      Q => \B_dout20b_i_reg_n_0_[11]\
    );
\B_dout20b_i_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => \B_dout20b_i_reg_n_0_[2]\,
      Q => \B_dout20b_i_reg_n_0_[12]\
    );
\B_dout20b_i_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => \B_dout20b_i_reg_n_0_[3]\,
      Q => \B_dout20b_i_reg_n_0_[13]\
    );
\B_dout20b_i_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => \B_dout20b_i_reg_n_0_[4]\,
      Q => \B_dout20b_i_reg_n_0_[14]\
    );
\B_dout20b_i_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => \B_dout20b_i_reg_n_0_[5]\,
      Q => \B_dout20b_i_reg_n_0_[15]\
    );
\B_dout20b_i_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => \B_dout20b_i_reg_n_0_[6]\,
      Q => \B_dout20b_i_reg_n_0_[16]\
    );
\B_dout20b_i_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => \B_dout20b_i_reg_n_0_[7]\,
      Q => \B_dout20b_i_reg_n_0_[17]\
    );
\B_dout20b_i_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => \B_dout20b_i_reg_n_0_[8]\,
      Q => \B_dout20b_i_reg_n_0_[18]\
    );
\B_dout20b_i_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => \B_dout20b_i_reg_n_0_[9]\,
      Q => \B_dout20b_i_reg_n_0_[19]\
    );
\B_dout20b_i_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => B_dout_i(1),
      Q => \B_dout20b_i_reg_n_0_[1]\
    );
\B_dout20b_i_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => B_dout_i(2),
      Q => \B_dout20b_i_reg_n_0_[2]\
    );
\B_dout20b_i_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => B_dout_i(3),
      Q => \B_dout20b_i_reg_n_0_[3]\
    );
\B_dout20b_i_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => B_dout_i(4),
      Q => \B_dout20b_i_reg_n_0_[4]\
    );
\B_dout20b_i_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => B_dout_i(5),
      Q => \B_dout20b_i_reg_n_0_[5]\
    );
\B_dout20b_i_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => B_dout_i(6),
      Q => \B_dout20b_i_reg_n_0_[6]\
    );
\B_dout20b_i_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => B_dout_i(7),
      Q => \B_dout20b_i_reg_n_0_[7]\
    );
\B_dout20b_i_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => B_dout_i(8),
      Q => \B_dout20b_i_reg_n_0_[8]\
    );
\B_dout20b_i_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => B_recclk,
      CE => \^b_dout10ben\,
      CLR => rst,
      D => B_dout_i(9),
      Q => \B_dout20b_i_reg_n_0_[9]\
    );
C_DATAA: entity work.design_1_os48_1011x20bTo10b_top2_0_0_os48_1011x20bTo10b
     port map (
      A_din20b(19 downto 0) => A_din20b(19 downto 0),
      A_dout10bEn => A_dout10bEn,
      A_dout20bEn0 => A_dout20bEn0,
      A_dout20bEn_i => A_dout20bEn_i,
      A_dout20bEn_i_reg => C_DATAA_n_13,
      A_en => A_en,
      A_recclk => A_recclk,
      D(9 downto 0) => A_dout_i(9 downto 0),
      DOA(29) => bankSel,
      DOA(28) => byteRdy,
      DOA(27 downto 24) => \bitSel[1]_35\(3 downto 0),
      DOA(23 downto 20) => \bitSel[0]_34\(3 downto 0),
      DOA(19 downto 18) => \we[9]_33\(1 downto 0),
      DOA(17 downto 16) => \we[8]_32\(1 downto 0),
      DOA(15 downto 14) => \we[7]_31\(1 downto 0),
      DOA(13 downto 12) => \we[6]_30\(1 downto 0),
      DOA(11 downto 10) => \we[5]_29\(1 downto 0),
      DOA(9 downto 8) => \we[4]_28\(1 downto 0),
      DOA(7 downto 6) => \we[3]_27\(1 downto 0),
      DOA(5 downto 4) => \we[2]_26\(1 downto 0),
      DOA(3 downto 2) => \we[1]_25\(1 downto 0),
      DOA(1 downto 0) => \we[0]_24\(1 downto 0),
      E(0) => A_dout20b_i,
      Q(3 downto 0) => A_edge(3 downto 0),
      bitOrderDinLSB => bitOrderDinLSB,
      \edge_reg[3]_0\(3 downto 0) => dSel(3 downto 0),
      rst => rst
    );
C_DATAB: entity work.design_1_os48_1011x20bTo10b_top2_0_0_os48_1011x20bTo10b_0
     port map (
      ADDRB(5 downto 4) => B_mode(1 downto 0),
      ADDRB(3 downto 0) => B_dSel(3 downto 0),
      B_din20b(19 downto 0) => B_din20b(19 downto 0),
      B_dout20bEn0 => B_dout20bEn0,
      B_dout20bEn_i => B_dout20bEn_i,
      B_dout20bEn_i_reg => C_DATAB_n_21,
      B_en => B_en,
      B_recclk => B_recclk,
      D(9 downto 0) => B_dout_i(9 downto 0),
      DOB(29) => B_bankSel,
      DOB(28) => B_byteRdy,
      DOB(27 downto 24) => \B_bitSel[1]_23\(3 downto 0),
      DOB(23 downto 20) => \B_bitSel[0]_22\(3 downto 0),
      DOB(19 downto 18) => \B_we[9]_21\(1 downto 0),
      DOB(17 downto 16) => \B_we[8]_20\(1 downto 0),
      DOB(15 downto 14) => \B_we[7]_19\(1 downto 0),
      DOB(13 downto 12) => \B_we[6]_18\(1 downto 0),
      DOB(11 downto 10) => \B_we[5]_17\(1 downto 0),
      DOB(9 downto 8) => \B_we[4]_16\(1 downto 0),
      DOB(7 downto 6) => \B_we[3]_15\(1 downto 0),
      DOB(5 downto 4) => \B_we[2]_14\(1 downto 0),
      DOB(3 downto 2) => \B_we[1]_13\(1 downto 0),
      DOB(1 downto 0) => \B_we[0]_12\(1 downto 0),
      E(0) => \^b_dout10ben\,
      Q(3) => p_45_in,
      Q(2) => p_46_in,
      Q(1) => p_34_in,
      Q(0) => p_35_in,
      bankSel_d_reg_0(3 downto 0) => B_edge(3 downto 0),
      bitOrderDinLSB => bitOrderDinLSB,
      \din_d_reg[2][18]_0\ => C_DECISION_n_17,
      \din_d_reg[2][28]_0\ => C_DECISION_n_16,
      \din_d_reg[2][9]_0\ => C_DECISION_n_18,
      \doutMux_reg[0][0]_0\ => C_DATAB_n_20,
      \doutMux_reg[0][1]_0\ => C_DATAB_n_19,
      \doutMux_reg[0][2]_0\ => C_DATAB_n_14,
      p_24_in => p_24_in,
      p_25_in => p_25_in,
      rst => rst
    );
C_DECISION: entity work.design_1_os48_1011x20bTo10b_top2_0_0_osDeci20b_48_1011x_BRAM
     port map (
      ADDRB(5 downto 4) => B_mode(1 downto 0),
      ADDRB(3 downto 0) => B_edge(3 downto 0),
      A_en => A_en,
      A_recclk => A_recclk,
      B_en => B_en,
      B_recclk => B_recclk,
      DOA(7 downto 4) => A_valid(3 downto 0),
      DOA(3 downto 0) => dSel(3 downto 0),
      DOB(7 downto 4) => B_valid(3 downto 0),
      DOB(3 downto 0) => B_dSel(3 downto 0),
      Q(3 downto 0) => A_edge(3 downto 0),
      \din_d_reg[2][13]\ => C_DATAB_n_19,
      \din_d_reg[2][17]\ => C_DATAB_n_14,
      \din_d_reg[2][29]\(3) => p_45_in,
      \din_d_reg[2][29]\(2) => p_46_in,
      \din_d_reg[2][29]\(1) => p_34_in,
      \din_d_reg[2][29]\(0) => p_35_in,
      \doutMux_reg[0][0]\ => C_DECISION_n_18,
      \doutMux_reg[0][1]\ => C_DECISION_n_17,
      \doutMux_reg[0][2]\ => C_DECISION_n_16,
      \edge_reg[3]\ => C_DATAB_n_20,
      p_24_in => p_24_in,
      p_25_in => p_25_in,
      rst => rst
    );
C_FIFOCTL: entity work.design_1_os48_1011x20bTo10b_top2_0_0_sipoCtl10b_BRAM_v2
     port map (
      A_en => A_en,
      A_recclk => A_recclk,
      B_en => B_en,
      B_recclk => B_recclk,
      DOA(29) => bankSel,
      DOA(28) => byteRdy,
      DOA(27 downto 24) => \bitSel[1]_35\(3 downto 0),
      DOA(23 downto 20) => \bitSel[0]_34\(3 downto 0),
      DOA(19 downto 18) => \we[9]_33\(1 downto 0),
      DOA(17 downto 16) => \we[8]_32\(1 downto 0),
      DOA(15 downto 14) => \we[7]_31\(1 downto 0),
      DOA(13 downto 12) => \we[6]_30\(1 downto 0),
      DOA(11 downto 10) => \we[5]_29\(1 downto 0),
      DOA(9 downto 8) => \we[4]_28\(1 downto 0),
      DOA(7 downto 6) => \we[3]_27\(1 downto 0),
      DOA(5 downto 4) => \we[2]_26\(1 downto 0),
      DOA(3 downto 2) => \we[1]_25\(1 downto 0),
      DOA(1 downto 0) => \we[0]_24\(1 downto 0),
      DOB(29) => B_bankSel,
      DOB(28) => B_byteRdy,
      DOB(27 downto 24) => \B_bitSel[1]_23\(3 downto 0),
      DOB(23 downto 20) => \B_bitSel[0]_22\(3 downto 0),
      DOB(19 downto 18) => \B_we[9]_21\(1 downto 0),
      DOB(17 downto 16) => \B_we[8]_20\(1 downto 0),
      DOB(15 downto 14) => \B_we[7]_19\(1 downto 0),
      DOB(13 downto 12) => \B_we[6]_18\(1 downto 0),
      DOB(11 downto 10) => \B_we[5]_17\(1 downto 0),
      DOB(9 downto 8) => \B_we[4]_16\(1 downto 0),
      DOB(7 downto 6) => \B_we[3]_15\(1 downto 0),
      DOB(5 downto 4) => \B_we[2]_14\(1 downto 0),
      DOB(3 downto 2) => \B_we[1]_13\(1 downto 0),
      DOB(1 downto 0) => \B_we[0]_12\(1 downto 0),
      \edge_reg[3]\(3 downto 0) => A_valid(3 downto 0),
      \edge_reg[3]_0\(3 downto 0) => B_valid(3 downto 0),
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_os48_1011x20bTo10b_top2_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_os48_1011x20bTo10b_top2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_os48_1011x20bTo10b_top2_0_0 : entity is "design_1_os48_1011x20bTo10b_top2_0_0,os48_1011x20bTo10b_top2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_os48_1011x20bTo10b_top2_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_os48_1011x20bTo10b_top2_0_0 : entity is "os48_1011x20bTo10b_top2,Vivado 2018.1";
end design_1_os48_1011x20bTo10b_top2_0_0;

architecture STRUCTURE of design_1_os48_1011x20bTo10b_top2_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.design_1_os48_1011x20bTo10b_top2_0_0_os48_1011x20bTo10b_top2
     port map (
      A_din20b(19 downto 0) => A_din20b(19 downto 0),
      A_dout10b(9 downto 0) => A_dout10b(9 downto 0),
      A_dout10bEn => A_dout10bEn,
      A_dout20b(19 downto 0) => A_dout20b(19 downto 0),
      A_dout20bEn => A_dout20bEn,
      A_en => A_en,
      A_recclk => A_recclk,
      B_din20b(19 downto 0) => B_din20b(19 downto 0),
      B_dout10b(9 downto 0) => B_dout10b(9 downto 0),
      B_dout10bEn => B_dout10bEn,
      B_dout20b(19 downto 0) => B_dout20b(19 downto 0),
      B_dout20bEn => B_dout20bEn,
      B_en => B_en,
      B_mode(1 downto 0) => B_mode(1 downto 0),
      B_recclk => B_recclk,
      bitOrderDinLSB => bitOrderDinLSB,
      bitOrderDoutLSB => bitOrderDoutLSB,
      rst => rst
    );
end STRUCTURE;
