-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_CDR_state_machine_0_0 is
  Port ( 
    d_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    dv : in STD_LOGIC_VECTOR ( 1 downto 0 );
    d_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    d_write : out STD_LOGIC
  );

end design_1_CDR_state_machine_0_0;

architecture stub of design_1_CDR_state_machine_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "CDR_state_machine,Vivado 2018.1";
begin
end;
