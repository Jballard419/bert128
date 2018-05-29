-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed May 23 17:59:14 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_Head_state_0_0/design_1_Head_state_0_0_sim_netlist.vhdl
-- Design      : design_1_Head_state_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Head_state_0_0_Head_state is
  port (
    d_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    go : out STD_LOGIC;
    Failed : out STD_LOGIC;
    en : in STD_LOGIC;
    d_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Head_state_0_0_Head_state : entity is "Head_state";
end design_1_Head_state_0_0_Head_state;

architecture STRUCTURE of design_1_Head_state_0_0_Head_state is
  signal \FSM_sequential_STATE[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STATE[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STATE[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STATE[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STATE[3]_i_2_n_0\ : STD_LOGIC;
  signal \^failed\ : STD_LOGIC;
  signal Failed_i_1_n_0 : STD_LOGIC;
  signal \STATE__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \STATE__0\ : signal is "yes";
  signal \^d_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^go\ : STD_LOGIC;
  signal held_i_1_n_0 : STD_LOGIC;
  signal held_i_2_n_0 : STD_LOGIC;
  signal held_reg_n_0 : STD_LOGIC;
  signal \temp_array[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \temp_array[0]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \temp_array_reg[0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \temp_array_reg[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \temp_array_reg[2]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \temp_array_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \temp_array_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \temp_d_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp_d_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \temp_d_out[1]_i_2_n_0\ : STD_LOGIC;
  signal temp_go_i_1_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_STATE_reg[0]\ : label is "iSTATE:1001,iSTATE0:0111,iSTATE1:0110,iSTATE2:1000,iSTATE3:0101,iSTATE4:0011,iSTATE5:0100,iSTATE6:0010,iSTATE7:1010,iSTATE8:0001,iSTATE9:0000";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_STATE_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_STATE_reg[1]\ : label is "iSTATE:1001,iSTATE0:0111,iSTATE1:0110,iSTATE2:1000,iSTATE3:0101,iSTATE4:0011,iSTATE5:0100,iSTATE6:0010,iSTATE7:1010,iSTATE8:0001,iSTATE9:0000";
  attribute KEEP of \FSM_sequential_STATE_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_STATE_reg[2]\ : label is "iSTATE:1001,iSTATE0:0111,iSTATE1:0110,iSTATE2:1000,iSTATE3:0101,iSTATE4:0011,iSTATE5:0100,iSTATE6:0010,iSTATE7:1010,iSTATE8:0001,iSTATE9:0000";
  attribute KEEP of \FSM_sequential_STATE_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_STATE_reg[3]\ : label is "iSTATE:1001,iSTATE0:0111,iSTATE1:0110,iSTATE2:1000,iSTATE3:0101,iSTATE4:0011,iSTATE5:0100,iSTATE6:0010,iSTATE7:1010,iSTATE8:0001,iSTATE9:0000";
  attribute KEEP of \FSM_sequential_STATE_reg[3]\ : label is "yes";
begin
  Failed <= \^failed\;
  d_out(1 downto 0) <= \^d_out\(1 downto 0);
  go <= \^go\;
\FSM_sequential_STATE[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA00AF41AA00"
    )
        port map (
      I0 => \STATE__0\(3),
      I1 => \STATE__0\(1),
      I2 => \STATE__0\(2),
      I3 => d_in(1),
      I4 => d_in(0),
      I5 => \STATE__0\(0),
      O => \FSM_sequential_STATE[0]_i_1_n_0\
    );
\FSM_sequential_STATE[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44441554EAEEEFEE"
    )
        port map (
      I0 => \STATE__0\(3),
      I1 => \STATE__0\(1),
      I2 => \STATE__0\(2),
      I3 => \STATE__0\(0),
      I4 => d_in(0),
      I5 => d_in(1),
      O => \FSM_sequential_STATE[1]_i_1_n_0\
    );
\FSM_sequential_STATE[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004083024"
    )
        port map (
      I0 => \STATE__0\(0),
      I1 => d_in(0),
      I2 => d_in(1),
      I3 => \STATE__0\(2),
      I4 => \STATE__0\(1),
      I5 => \STATE__0\(3),
      O => \FSM_sequential_STATE[2]_i_1_n_0\
    );
\FSM_sequential_STATE[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2220222A"
    )
        port map (
      I0 => en,
      I1 => \STATE__0\(3),
      I2 => \STATE__0\(0),
      I3 => \STATE__0\(1),
      I4 => \STATE__0\(2),
      O => \FSM_sequential_STATE[3]_i_1_n_0\
    );
\FSM_sequential_STATE[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFBFAAAAAAAA"
    )
        port map (
      I0 => \STATE__0\(3),
      I1 => d_in(1),
      I2 => d_in(0),
      I3 => \STATE__0\(0),
      I4 => \STATE__0\(2),
      I5 => \STATE__0\(1),
      O => \FSM_sequential_STATE[3]_i_2_n_0\
    );
\FSM_sequential_STATE_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_STATE[3]_i_1_n_0\,
      CLR => rst,
      D => \FSM_sequential_STATE[0]_i_1_n_0\,
      Q => \STATE__0\(0)
    );
\FSM_sequential_STATE_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_STATE[3]_i_1_n_0\,
      CLR => rst,
      D => \FSM_sequential_STATE[1]_i_1_n_0\,
      Q => \STATE__0\(1)
    );
\FSM_sequential_STATE_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_STATE[3]_i_1_n_0\,
      CLR => rst,
      D => \FSM_sequential_STATE[2]_i_1_n_0\,
      Q => \STATE__0\(2)
    );
\FSM_sequential_STATE_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_STATE[3]_i_1_n_0\,
      CLR => rst,
      D => \FSM_sequential_STATE[3]_i_2_n_0\,
      Q => \STATE__0\(3)
    );
Failed_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA800"
    )
        port map (
      I0 => \STATE__0\(3),
      I1 => \STATE__0\(2),
      I2 => \STATE__0\(1),
      I3 => en,
      I4 => \^failed\,
      O => Failed_i_1_n_0
    );
Failed_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Failed_i_1_n_0,
      Q => \^failed\
    );
held_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => d_in(0),
      I1 => held_i_2_n_0,
      I2 => rst,
      I3 => held_reg_n_0,
      O => held_i_1_n_0
    );
held_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A800"
    )
        port map (
      I0 => en,
      I1 => d_in(1),
      I2 => \STATE__0\(0),
      I3 => \STATE__0\(3),
      I4 => \STATE__0\(2),
      I5 => \STATE__0\(1),
      O => held_i_2_n_0
    );
held_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => held_i_1_n_0,
      Q => held_reg_n_0,
      R => '0'
    );
\temp_array[0][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => d_in(1),
      I1 => \STATE__0\(0),
      I2 => d_in(0),
      O => \temp_array[0]_0\(0)
    );
\temp_array[0][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000280"
    )
        port map (
      I0 => en,
      I1 => \STATE__0\(0),
      I2 => \STATE__0\(3),
      I3 => \STATE__0\(2),
      I4 => \STATE__0\(1),
      O => \temp_array[0][1]_i_1_n_0\
    );
\temp_array[0][1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => held_reg_n_0,
      I1 => \STATE__0\(0),
      I2 => d_in(1),
      O => \temp_array[0]_0\(1)
    );
\temp_array_reg[0][0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => \temp_array[0][1]_i_1_n_0\,
      D => \temp_array[0]_0\(0),
      PRE => rst,
      Q => \temp_array_reg[0]\(0)
    );
\temp_array_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \temp_array[0][1]_i_1_n_0\,
      CLR => rst,
      D => \temp_array[0]_0\(1),
      Q => \temp_array_reg[0]\(1)
    );
\temp_array_reg[1][0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => \temp_array[0][1]_i_1_n_0\,
      D => \temp_array_reg[0]\(0),
      PRE => rst,
      Q => \temp_array_reg[1]\(0)
    );
\temp_array_reg[1][1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => \temp_array[0][1]_i_1_n_0\,
      D => \temp_array_reg[0]\(1),
      PRE => rst,
      Q => \temp_array_reg[1]\(1)
    );
\temp_array_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \temp_array[0][1]_i_1_n_0\,
      CLR => rst,
      D => \temp_array_reg[1]\(0),
      Q => \temp_array_reg[2]\(0)
    );
\temp_array_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \temp_array[0][1]_i_1_n_0\,
      CLR => rst,
      D => \temp_array_reg[1]\(1),
      Q => \temp_array_reg[2]\(1)
    );
\temp_array_reg[3][0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => \temp_array[0][1]_i_1_n_0\,
      D => \temp_array_reg[2]\(0),
      PRE => rst,
      Q => \temp_array_reg_n_0_[3][0]\
    );
\temp_array_reg[3][1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => \temp_array[0][1]_i_1_n_0\,
      D => \temp_array_reg[2]\(1),
      PRE => rst,
      Q => \temp_array_reg_n_0_[3][1]\
    );
\temp_d_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1500FFFF15000000"
    )
        port map (
      I0 => \STATE__0\(1),
      I1 => \STATE__0\(2),
      I2 => \STATE__0\(3),
      I3 => \temp_array_reg_n_0_[3][0]\,
      I4 => \temp_d_out[1]_i_2_n_0\,
      I5 => \^d_out\(0),
      O => \temp_d_out[0]_i_1_n_0\
    );
\temp_d_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1500FFFF15000000"
    )
        port map (
      I0 => \STATE__0\(1),
      I1 => \STATE__0\(2),
      I2 => \STATE__0\(3),
      I3 => \temp_array_reg_n_0_[3][1]\,
      I4 => \temp_d_out[1]_i_2_n_0\,
      I5 => \^d_out\(1),
      O => \temp_d_out[1]_i_1_n_0\
    );
\temp_d_out[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA80008"
    )
        port map (
      I0 => en,
      I1 => \STATE__0\(2),
      I2 => \STATE__0\(1),
      I3 => \STATE__0\(0),
      I4 => \STATE__0\(3),
      O => \temp_d_out[1]_i_2_n_0\
    );
\temp_d_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \temp_d_out[0]_i_1_n_0\,
      Q => \^d_out\(0)
    );
\temp_d_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \temp_d_out[1]_i_1_n_0\,
      Q => \^d_out\(1)
    );
temp_go_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11FF000010020000"
    )
        port map (
      I0 => \STATE__0\(2),
      I1 => \STATE__0\(1),
      I2 => \STATE__0\(0),
      I3 => \STATE__0\(3),
      I4 => en,
      I5 => \^go\,
      O => temp_go_i_1_n_0
    );
temp_go_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => temp_go_i_1_n_0,
      Q => \^go\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Head_state_0_0 is
  port (
    d_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    d_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    go : out STD_LOGIC;
    Failed : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Head_state_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Head_state_0_0 : entity is "design_1_Head_state_0_0,Head_state,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Head_state_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Head_state_0_0 : entity is "Head_state,Vivado 2018.1";
end design_1_Head_state_0_0;

architecture STRUCTURE of design_1_Head_state_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_second_clk";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.design_1_Head_state_0_0_Head_state
     port map (
      Failed => Failed,
      clk => clk,
      d_in(1 downto 0) => d_in(1 downto 0),
      d_out(1 downto 0) => d_out(1 downto 0),
      en => en,
      go => go,
      rst => rst
    );
end STRUCTURE;
