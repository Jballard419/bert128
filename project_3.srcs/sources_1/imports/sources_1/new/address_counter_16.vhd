----------------------------------------------------------------------------------
-- company: Instrumentation Design Lab
-- engineer: Rob Young rwyoung@ku.edu
-- 
-- description: run an address counter from 0 to "terminalcount".
-- once terminalcount has been reached, the counter freezes and raises a signal
-- "tc" that will be used as an interrup request to the MicroBlaze CPU.  The CPU
-- will control the "rst" line (synchronous to the address clock) that will
-- reset and restart the counter. 
-- 
-- revision:
-- revision 0.01 - file created
-- additional comments:
-- 
-- 
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity address_counter_16 is
    generic (
        repeat          : natural := 1; -- how many times to repeat address loop before raising tc 
        terminalcount   : natural := 14400 -- terminal count value
    );
    port (
        en      : in std_logic;
        rst     : in std_logic; -- synchronous reset, active high, managed by uC, not reset system
        clk     : in std_logic; -- system clock (eventually 1GHz)
        tc      : out std_logic; -- terminal count flag to act as interrupt request to CPU
        address : out std_logic_vector(13 downto 0) -- address bus for test data pattern ROM
    );
end address_counter_16;

architecture behavioral of address_counter_16 is
    signal rep_count : unsigned(15 downto 0) := (others => '0'); -- count how many times run through the addresses
    signal addr : unsigned(13 downto 0) := (others => '0'); -- internal copy of address counter
    signal i_tc : std_logic := '0'; -- internal copy of terminal count signal
begin
    
    process(rst, clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then -- synchronous reset/restart
                addr <= (others => '0');
                rep_count <= (others => '0');
                i_tc <= '0';
            elsif en= '1' then
                if i_tc = '0' then
                    addr <= addr + 1;  -- haven't reached terminal count, keep counting
--                else
--                    i_tc <='0';
                end if;
                if addr = (terminalcount -1) then
                    rep_count <= rep_count + 1;
                    addr <= (others => '0');
                    if rep_count = repeat then
                        i_tc <= '1'; -- reached terminal count
                    end if;
                end if;
            end if;
        end if; 
    end process;
    
    address <= std_logic_vector(addr); -- set out ROM address
    tc <= i_tc; -- ISR flag
    
end behavioral;
