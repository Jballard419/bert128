----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2018 04:25:27 PM
-- Design Name: 
-- Module Name: 10b_to_2b - Behavioral
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity b10_to_2b is
    Port ( input_10 : in STD_LOGIC_VECTOR (9 downto 0);
            clk :in Std_logic;
           new_set : in STD_LOGIC;
           out_2 : out STD_LOGIC_VECTOR (1 downto 0);
           out_ready : out STD_LOGIC_VECTOR (1 downto 0));
end b10_to_2b;

architecture Behavioral of b10_to_2b is
    signal  cout: integer  := 0;
    
begin

 process(clk,new_set)
        begin 
        if rising_edge(clk) then
        if new_set='1' then 
            cout <= 0;
             out_ready<="11";   
   
         else
            if cout=4 then
                out_ready<="00";
            else 
              cout <= cout+1;
              out_ready<="11";
            end if;   
         end if;
         end if;
        
    end process;


with cout select out_2 <=
    input_10(1 downto 0) when 0,
    input_10(3 downto 2) when 1,
    input_10(5 downto 4) when 2,
    input_10(7 downto 6) when 3,
    input_10(9 downto 8) when others;
    
    


end Behavioral;
