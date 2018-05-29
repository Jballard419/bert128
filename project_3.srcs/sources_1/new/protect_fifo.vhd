----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2018 05:53:00 PM
-- Design Name: 
-- Module Name: protect_fifo - Struct
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

entity error_valid is
    Port ( error : in STD_LOGIC;
           tc : in STD_LOGIC;
           test: in STD_logic;
           valid_error : out STD_LOGIC);
end error_valid;

architecture Struct of error_valid is

begin

      valid_error<= not(tc) and error and test ;

end Struct;
