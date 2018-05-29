----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2018 04:07:11 PM
-- Design Name: 
-- Module Name: CDR_state_machine - Behavioral
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

entity CDR_state_machine is
    Port ( d_in : in STD_LOGIC_VECTOR (1 downto 0);
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           dv : in STD_LOGIC_VECTOR (1 downto 0);
           d_out : out STD_LOGIC_VECTOR (1 downto 0);
           d_write : out STD_LOGIC);
end CDR_state_machine;

architecture Behavioral of CDR_state_machine is

signal s,held,en: std_logic :='0';
signal output: std_logic_vector (1 downto 0):= "00";


begin
process(clk)
    begin
        if rst='1' then
            s<='0';
            held<='0';
            en<='0';
            output<="00";
        elsif rising_edge(clk) then
        
        if s='0' then
            case dv is
            
            when "01" =>
                s<='1';
                en<='0';
                held<=d_in(0);
                output<="00";
            when "11" =>
                s<='0';
                en<='1';
                held<='0';
                output<=d_in(0)&d_in(1);  
            when others =>
                s<='0';
                en<='0';
                held<='0';
                output<="10";
          end case;
          
        else
          case dv is
              when "01" =>
                  s<='0';
                  en<='1';
                  output<= held & d_in(0);
              when "11" =>
                  s<='1';
                  en<='1';
                  output<= held & d_in(0);
                  held<=d_in(1);   --please be s       
              when others =>
                  s<='1';
                  en<='0';
           end case;
        end if;
     end if;
d_out<=output;
d_write<=en;                 
end process;





end Behavioral;
