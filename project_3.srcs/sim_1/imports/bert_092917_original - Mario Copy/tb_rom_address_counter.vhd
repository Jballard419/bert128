library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_address_counter is
--  port ( );
end tb_address_counter;

architecture behavioral of tb_address_counter is
    component address_counter is
        generic (
            repeat : natural := 1; -- how many times to repeat address loop before raising tc (ignored)
            terminalcount : natural := 14399 -- terminal count value
        );
        port (
            rst     : in std_logic; -- synchronous reset, active high, managed by uC, not reset system
            clk     : in std_logic; 
            tc      : out std_logic; -- terminal count flag
            address : out std_logic_vector(13 downto 0)
        );
    end component;

    signal rst : std_logic;
    signal clk : std_logic;
    
    signal tc : std_logic;
    signal address : std_logic_vector(13 downto 0);

    constant PERIOD : time := 10ns;
begin

    uut : address_counter 
    generic map (
        repeat => 0,
        terminalcount => 12 -- normally 14399, but smaller for testing
    )
    port map (
        rst => rst,
        clk => clk,
        tc => tc,
        address => address
    );

    simclk : process
    begin
        clk <= '0';
        wait for PERIOD/2;
        clk <= '1';
        wait for PERIOD/2;
    end process;
    
    process
    begin
        rst <= '1';
        wait for 20ns;
        wait until clk = '1';
        rst <= '0';
        wait until tc = '1';
        --wait for 100ns;
        rst <= '1';
        wait for 20 ns;
        rst <= '0';
        wait;
    end process;
end behavioral;
