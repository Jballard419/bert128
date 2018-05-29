----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2018 01:57:45 PM
-- Design Name: 
-- Module Name: Buffer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.vcomponents.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Buffer_help is
    Port ( PAD_din_p : in STD_LOGIC;
           PAD_din_n : in STD_LOGIC;
           clk0:in std_logic;
           ref_clk:in std_logic;
           rdy: out STD_Logic;
           sdat_0_dly : out STD_LOGIC;
           sdatb_45_dly : out STD_LOGIC);
end Buffer_help;

architecture Struct of Buffer_help is 
signal sdata_in :   std_logic;                              -- true output of IBUFDS_DIFF_OUT
signal sdata_inb :  std_logic; 

signal CNTVALUEOUT,CNTVALUEOUTb: std_logic_vector(4 downto 0);
attribute DIFF_TERM : string;
attribute DIFF_TERM of IBUFSDI : label is "TRUE";


attribute IODELAY_GROUP : STRING;
attribute IODELAY_GROUP of IDELAYCTRL_inst: label is "<iodelay_group_name>";
attribute IODELAY_GROUP of IDELAYE2_a: label is "<iodelay_group_name>";
attribute IODELAY_GROUP of IDELAYE2_inst: label is "<iodelay_group_name>";

begin
    IBUFSDI : IBUFDS_DIFF_OUT 
generic map (
    IOSTANDARD  => "LVDS_25")
port map (
    I           => PAD_din_p,
    IB          => PAD_din_n,
    O           => sdata_in,
    OB          => sdata_inb);
    
    


-- <-----Cut code below this line and paste into the architecture body---->

   -- IDELAYCTRL: IDELAYE2/ODELAYE2 Tap Delay Value Control
   --             Virtex-7
   -- Xilinx HDL Language Template, version 2017.4

   IDELAYCTRL_inst : IDELAYCTRL
   port map (
      RDY => RDY,       -- 1-bit output: Ready output
      REFCLK => ref_clk, -- 1-bit input: Reference clock input
      RST => '0'        -- 1-bit input: Active high reset input
   );
    -- <-----Cut code below this line and paste into the architecture body---->
    
       -- IDELAYE2: Input Fixed or Variable Delay Element
       --           Virtex-7
       -- Xilinx HDL Language Template, version 2017.4
  

       
       -- <-----Cut code below this line and paste into the architecture body---->
       
          -- IDELAYE2: Input Fixed or Variable Delay Element
          --           Virtex-7
          -- Xilinx HDL Language Template, version 2017.4
       
          IDELAYE2_a : IDELAYE2
          generic map (
             CINVCTRL_SEL => "FALSE",          -- Enable dynamic clock inversion (FALSE, TRUE)
             DELAY_SRC => "IDATAIN",           -- Delay input (IDATAIN, DATAIN)
             HIGH_PERFORMANCE_MODE => "TRUE", -- Reduced jitter ("TRUE"), Reduced power ("FALSE")
             IDELAY_TYPE => "FIXED",           -- FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
             IDELAY_VALUE => 8,                -- Input delay tap setting (0-31)
             PIPE_SEL => "FALSE",              -- Select pipelined mode, FALSE, TRUE
             REFCLK_FREQUENCY => 400.0,        -- IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
             SIGNAL_PATTERN => "DATA"          -- DATA, CLOCK input signal
          )
          port map (
             CNTVALUEOUT => CNTVALUEOUT, -- 5-bit output: Counter value output
             DATAOUT => sdat_0_dly,         -- 1-bit output: Delayed data output
             C => '0',                     -- 1-bit input: Clock input
             CE => '0',                   -- 1-bit input: Active high enable increment/decrement input
             CINVCTRL => '0',       -- 1-bit input: Dynamic clock inversion input
             CNTVALUEIN => "00000",   -- 5-bit input: Counter value input
             DATAIN => '0',           -- 1-bit input: Internal delay data input
             IDATAIN => sdata_in,         -- 1-bit input: Data input from the I/O
             INC => '0',                 -- 1-bit input: Increment / Decrement tap delay input
             LD => '1',                   -- 1-bit input: Load IDELAY_VALUE input
             LDPIPEEN => '0',       -- 1-bit input: Enable PIPELINE register to load data input
             REGRST => '0'            -- 1-bit input: Active-high reset tap-delay input
          );
       IDELAYE2_inst : IDELAYE2
        generic map (
                   CINVCTRL_SEL => "FALSE",          -- Enable dynamic clock inversion (FALSE, TRUE)
                   DELAY_SRC => "IDATAIN",           -- Delay input (IDATAIN, DATAIN)
                   HIGH_PERFORMANCE_MODE => "TRUE", -- Reduced jitter ("TRUE"), Reduced power ("FALSE")
                   IDELAY_TYPE => "FIXED",           -- FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
                   IDELAY_VALUE => 0,                -- Input delay tap setting (0-31)
                   PIPE_SEL => "FALSE",              -- Select pipelined mode, FALSE, TRUE
                   REFCLK_FREQUENCY => 400.0,        -- IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
                   SIGNAL_PATTERN => "DATA"          -- DATA, CLOCK input signal
                )
                port map (
                   CNTVALUEOUT => CNTVALUEOUTb, -- 5-bit output: Counter value output
                   DATAOUT => sdatb_45_dly,         -- 1-bit output: Delayed data output
                   C => '0',                     -- 1-bit input: Clock input
                   CE => '0',                   -- 1-bit input: Active high enable increment/decrement input
                   CINVCTRL => '0',       -- 1-bit input: Dynamic clock inversion input
                   CNTVALUEIN => "00000",   -- 5-bit input: Counter value input
                   DATAIN => '0',           -- 1-bit input: Internal delay data input
                   IDATAIN => sdata_inb,         -- 1-bit input: Data input from the I/O
                   INC => '0',                 -- 1-bit input: Increment / Decrement tap delay input
                   LD => '1',                   -- 1-bit input: Load IDELAY_VALUE input
                   LDPIPEEN => '0',       -- 1-bit input: Enable PIPELINE register to load data input
                   REGRST => '0'            -- 1-bit input: Active-high reset tap-delay input
                );

end struct;
