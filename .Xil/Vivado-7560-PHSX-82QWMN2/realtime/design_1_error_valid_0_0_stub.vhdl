-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_error_valid_0_0 is
  Port ( 
    error : in STD_LOGIC;
    tc : in STD_LOGIC;
    test : in STD_LOGIC;
    valid_error : out STD_LOGIC
  );

end design_1_error_valid_0_0;

architecture stub of design_1_error_valid_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "error_valid,Vivado 2018.1";
begin
end;
