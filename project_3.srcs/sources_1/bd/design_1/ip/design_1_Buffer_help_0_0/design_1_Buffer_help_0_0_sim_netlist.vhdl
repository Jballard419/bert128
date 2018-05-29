-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu May 17 14:02:37 2018
-- Host        : PHSX-82QWMN2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Projects/04-23-test/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_Buffer_help_0_0/design_1_Buffer_help_0_0_sim_netlist.vhdl
-- Design      : design_1_Buffer_help_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Buffer_help_0_0_Buffer_help is
  port (
    rdy : out STD_LOGIC;
    sdat_0_dly : out STD_LOGIC;
    sdatb_45_dly : out STD_LOGIC;
    PAD_din_p : in STD_LOGIC;
    PAD_din_n : in STD_LOGIC;
    ref_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Buffer_help_0_0_Buffer_help : entity is "Buffer_help";
end design_1_Buffer_help_0_0_Buffer_help;

architecture STRUCTURE of design_1_Buffer_help_0_0_Buffer_help is
  signal sdata_in : STD_LOGIC;
  signal sdata_inb : STD_LOGIC;
  signal NLW_IDELAYE2_a_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute box_type : string;
  attribute box_type of IBUFSDI : label is "PRIMITIVE";
  attribute IODELAY_GROUP : string;
  attribute IODELAY_GROUP of IDELAYCTRL_inst : label is "<iodelay_group_name>";
  attribute box_type of IDELAYCTRL_inst : label is "PRIMITIVE";
  attribute IODELAY_GROUP of IDELAYE2_a : label is "<iodelay_group_name>";
  attribute box_type of IDELAYE2_a : label is "PRIMITIVE";
  attribute IODELAY_GROUP of IDELAYE2_inst : label is "<iodelay_group_name>";
  attribute box_type of IDELAYE2_inst : label is "PRIMITIVE";
begin
IBUFSDI: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => PAD_din_p,
      IB => PAD_din_n,
      O => sdata_in,
      OB => sdata_inb
    );
IDELAYCTRL_inst: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => rdy,
      REFCLK => ref_clk,
      RST => '0'
    );
IDELAYE2_a: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 5,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 400.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => '0',
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => NLW_IDELAYE2_a_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => sdat_0_dly,
      IDATAIN => sdata_in,
      INC => '0',
      LD => '1',
      LDPIPEEN => '0',
      REGRST => '0'
    );
IDELAYE2_inst: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 400.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => '0',
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => NLW_IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => sdatb_45_dly,
      IDATAIN => sdata_inb,
      INC => '0',
      LD => '1',
      LDPIPEEN => '0',
      REGRST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Buffer_help_0_0 is
  port (
    PAD_din_p : in STD_LOGIC;
    PAD_din_n : in STD_LOGIC;
    clk0 : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    rdy : out STD_LOGIC;
    sdat_0_dly : out STD_LOGIC;
    sdatb_45_dly : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Buffer_help_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Buffer_help_0_0 : entity is "design_1_Buffer_help_0_0,Buffer_help,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Buffer_help_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Buffer_help_0_0 : entity is "Buffer_help,Vivado 2018.1";
end design_1_Buffer_help_0_0;

architecture STRUCTURE of design_1_Buffer_help_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of ref_clk : signal is "xilinx.com:signal:clock:1.0 ref_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ref_clk : signal is "XIL_INTERFACENAME ref_clk, FREQ_HZ 400000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
begin
U0: entity work.design_1_Buffer_help_0_0_Buffer_help
     port map (
      PAD_din_n => PAD_din_n,
      PAD_din_p => PAD_din_p,
      rdy => rdy,
      ref_clk => ref_clk,
      sdat_0_dly => sdat_0_dly,
      sdatb_45_dly => sdatb_45_dly
    );
end STRUCTURE;
