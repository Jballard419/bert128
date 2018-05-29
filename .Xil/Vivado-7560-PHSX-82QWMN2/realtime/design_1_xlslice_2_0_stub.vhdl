-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_xlslice_2_0 is
  Port ( 
    Din : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_xlslice_2_0;

architecture stub of design_1_xlslice_2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlslice_v1_0_1_xlslice,Vivado 2018.1";
begin
end;
