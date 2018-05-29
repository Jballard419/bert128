-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_b10_to_2b_0_0 is
  Port ( 
    input_10 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    new_set : in STD_LOGIC;
    out_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_ready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end design_1_b10_to_2b_0_0;

architecture stub of design_1_b10_to_2b_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "b10_to_2b,Vivado 2018.1";
begin
end;
