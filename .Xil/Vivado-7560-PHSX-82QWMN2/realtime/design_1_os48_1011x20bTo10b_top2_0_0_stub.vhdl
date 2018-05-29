-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_os48_1011x20bTo10b_top2_0_0 is
  Port ( 
    rst : in STD_LOGIC;
    bitOrderDinLSB : in STD_LOGIC;
    bitOrderDoutLSB : in STD_LOGIC;
    A_recclk : in STD_LOGIC;
    A_en : in STD_LOGIC;
    A_din20b : in STD_LOGIC_VECTOR ( 19 downto 0 );
    A_dout10bEn : out STD_LOGIC;
    A_dout10b : out STD_LOGIC_VECTOR ( 9 downto 0 );
    A_dout20bEn : out STD_LOGIC;
    A_dout20b : out STD_LOGIC_VECTOR ( 19 downto 0 );
    B_recclk : in STD_LOGIC;
    B_en : in STD_LOGIC;
    B_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    B_din20b : in STD_LOGIC_VECTOR ( 19 downto 0 );
    B_dout10bEn : out STD_LOGIC;
    B_dout10b : out STD_LOGIC_VECTOR ( 9 downto 0 );
    B_dout20bEn : out STD_LOGIC;
    B_dout20b : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );

end design_1_os48_1011x20bTo10b_top2_0_0;

architecture stub of design_1_os48_1011x20bTo10b_top2_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "os48_1011x20bTo10b_top2,Vivado 2018.1";
begin
end;
