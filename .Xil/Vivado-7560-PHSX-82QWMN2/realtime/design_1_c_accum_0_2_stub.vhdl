-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_c_accum_0_2 is
  Port ( 
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_c_accum_0_2;

architecture stub of design_1_c_accum_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_accum_v12_0_12,Vivado 2018.1";
begin
end;
