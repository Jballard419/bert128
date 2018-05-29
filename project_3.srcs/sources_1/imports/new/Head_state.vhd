----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2018 11:29:21 AM
-- Design Name: 
-- Module Name: Head_state - Behavioral
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

entity Head_state is
    Port ( d_in : in STD_LOGIC_VECTOR (1 downto 0);
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en: in STD_logic;
           d_out : out STD_LOGIC_VECTOR (1 downto 0);
           go : out STD_LOGIC;
           Failed: out Std_logic);
end Head_state;

architecture Behavioral of Head_state is
type Array_vec is array(3 downto 0) of STD_LOGIC_VECTOR (1 downto 0);
signAL STATE: integer  :=0;
signal temp_array : Array_vec;
signal temp_d_out: STD_LOGIC_VECTOR (1 downto 0);
signal held,temp_go: std_logic :='0';

begin
process(clk)
    begin
    if rst='1' then
        temp_array(3)<="11";
        temp_array(2)<="00"; 
        temp_array(1)<="11";     
        temp_array(0)<="01";     
        state<=0;
        temp_d_out<="00";
        temp_go<='0';
        failed<='0';
    elsif rising_edge(clk) then 
    if en='0' then temp_go<='0';
    else
        case state is
        when 0 =>
            case d_in is
            when "11" =>
                state<=1;
            when "01" =>
                state<=5;
            when others=>
                state<=0;
            end case;
        when 1 =>
            case d_in is
            when "00" =>
                state<=2;         
            when "10" =>
                state<=6;
            when others=>
                state<=0;
            end case; 
        when 2 =>
            case d_in is
            when "11" =>
                state<=3; 
            when others=>
                state<=10;
            end case;
        when 3 =>
            case d_in is
            when "01" =>
                state<=4; 
            when others=>
                state<=10;
            end case;             
        when 4 => --
            temp_d_out<=temp_array(3);
            for i in 0 to 2 loop
                temp_array(3-i)<=temp_array(2-i);
            end loop;
            temp_array(0)<=d_in;
            temp_go<='1';
        when 5 =>
            case d_in is
            when "10" =>
                state<=6;
            when others=>
                state<=0;
            end case; 
        when 6 =>
            case d_in is
            when "01" =>
                state<=7;
            when others=>
                state<=10;
            end case;
      when 7 =>
            case d_in is
            when "10" =>
                state<=8;
            when others=>
                state<=10;
            end case;  
      when 8 =>
            case d_in is
            when "10" | "11" =>
                held<=d_in(0);
                
                state<=9;
            when others=>
                state<=10;
            end case; 
      when 9 =>
           temp_d_out<=temp_array(3);
           for i in 0 to 2 loop
                 temp_array(3-i)<=temp_array(2-i);
           end loop;
           temp_go<='1';
           temp_array(0)<=held & d_in(1);
           held<=d_in(0);
      when others=>
        Failed<='1';
        temp_d_out<="00";
        temp_go<='0';
        
       end case;
    end if; end if;
    go<=temp_go;
    d_out<=temp_d_out;
    

end process;

end Behavioral;
