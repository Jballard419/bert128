
----------------------------------------------------------------------------------
-- company: Instrumentation Design Lab
-- engineer: Rob Young rwyoung@ku.edu
-- 
-- description: Count the number of ones in an 8-bit word (byte).  Return this
-- count as a 4 bit value. 
-- 
-- revision:
-- revision 0.01 - file created
-- additional comments:
-- 
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity count_ones_8 is
    port (
        rst : in std_logic; -- active high reset
        clk : in std_logic; -- system clock
        en: in std_logic;
        regword : in std_logic_vector(7 downto 0); -- input word, count the 1's
        count : out std_logic_vector(3 downto 0) -- count of ones
     );
end count_ones_8;

architecture behavioral of count_ones_8 is

    signal c : integer;

    --
    -- By using a function, I will let the compiler figure out
    -- how to best implement logic for counting up the bits.
    -- I believe the compiler will implement this as a look-up-table
    -- or series of LUTs.
    --
    function count_ones(s : std_logic_vector) return integer is
        variable t : integer := 0;
    begin
        for i in s'range loop
            if s(i) = '1'  then 
                t := t + 1;
            end if;
        end loop;
        return (t);
    end function count_ones;

begin

    process(rst, clk)
    begin
        if rising_edge(clk)  then
            if rst = '1'  then -- active high reset
                c <= 0;
            else 
                c <= count_ones(regword);
            end if;
        end if;
    end process;
    count <= std_logic_vector(to_unsigned(c, count'length));
    
end behavioral;