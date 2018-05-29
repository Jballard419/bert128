-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_oversample_8x_0_0 is
  Port ( 
    clk0 : in STD_LOGIC;
    clk90 : in STD_LOGIC;
    sdat_0_dly : in STD_LOGIC;
    sdatb_45_dly : in STD_LOGIC;
    dout_rdy : out STD_LOGIC;
    rst : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );

end design_1_oversample_8x_0_0;

architecture stub of design_1_oversample_8x_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "oversample_8x,Vivado 2018.1";
begin
end;
