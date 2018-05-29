----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2018 06:28:18 PM
-- Design Name: 
-- Module Name: fifo_filled_lock - Behavioral
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

entity fifo_filled_lock is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           data_in: in std_logic_vector (15 downto 0);
    test : out STD_LOGIC);
end fifo_filled_lock;

architecture Behavioral of fifo_filled_lock is
    signal temp:std_logic:='0';
begin
    process(rst, clk)

begin
    if rising_edge(clk) then
        if rst = '1' then -- synchronous reset/restart
            temp<='0';
        elsif data_in= "0011100001000000" then --data_in= 14,400
            temp<='1';
       end if;
     end if;

end process;

test<=temp;

end Behavioral;
