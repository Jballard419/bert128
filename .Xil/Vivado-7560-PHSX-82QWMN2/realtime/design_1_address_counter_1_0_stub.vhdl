-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_address_counter_1_0 is
  Port ( 
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    tc : out STD_LOGIC;
    address : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );

end design_1_address_counter_1_0;

architecture stub of design_1_address_counter_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "address_counter,Vivado 2018.1";
begin
end;
