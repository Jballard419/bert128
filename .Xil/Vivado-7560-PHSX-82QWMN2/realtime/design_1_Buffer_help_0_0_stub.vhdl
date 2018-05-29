-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Buffer_help_0_0 is
  Port ( 
    PAD_din_p : in STD_LOGIC;
    PAD_din_n : in STD_LOGIC;
    clk0 : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    rdy : out STD_LOGIC;
    sdat_0_dly : out STD_LOGIC;
    sdatb_45_dly : out STD_LOGIC
  );

end design_1_Buffer_help_0_0;

architecture stub of design_1_Buffer_help_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Buffer_help,Vivado 2018.1";
begin
end;
