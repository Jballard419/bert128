----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2018 06:50:03 PM
-- Design Name: 
-- Module Name: FIFO_enabler - Structal
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

entity FIFO_enabler is
    Port ( d_write : in STD_LOGIC;
           tc : in STD_LOGIC;
           gpio: in STD_LOGIc;
           isreading : in STD_LOGIC;
           wr_en : out STD_LOGIC);
end FIFO_enabler;

architecture Structal of FIFO_enabler is 
begin

wr_en<=d_write and not(tc) and not(gpio) and not(isreading);

end Structal;
