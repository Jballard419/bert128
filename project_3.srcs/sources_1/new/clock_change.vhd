----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/30/2018 01:20:29 PM
-- Design Name: 
-- Module Name: clock_change - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity clock_change is
    Port ( i : in STD_LOGIC;
           o : out STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC);
end clock_change;

architecture Behavioral of clock_change is
signal x,y: std_logic;

begin

   FDRE_inst : FDRE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => x,      -- Data output
      C => clk,      -- Clock input
      CE => '1',    -- Clock enable input
      R => rst,      -- Synchronous reset input
      D => i       -- Data input
   );
   
    FDRE_inst2 : FDRE
     generic map (
        INIT => '0') -- Initial value of register ('0' or '1')  
     port map (
        Q => y,      -- Data output
        C => clk,      -- Clock input
        CE => '1',    -- Clock enable input
        R => rst,      -- Synchronous reset input
        D => x       -- Data input
     );
    FDRE_inst3 : FDRE
      generic map (
         INIT => '0') -- Initial value of register ('0' or '1')  
      port map (
         Q => o,      -- Data output
         C => clk,      -- Clock input
         CE => '1',    -- Clock enable input
         R => rst,      -- Synchronous reset input
         D => y       -- Data input
      );
    


end Behavioral;
