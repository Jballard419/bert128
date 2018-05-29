library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity serial_pipeline_delay is
    generic (
        stages : natural := 1 
    ); 
    port ( 
        clk : in std_logic;
        delayin : in std_logic;
        delayout : out std_logic
    );
end serial_pipeline_delay;

architecture behavioral of serial_pipeline_delay is
    signal temp : std_logic_vector(stages downto 0);
    
begin

    process(clk)
    begin
        if rising_edge(clk) then
        if stages=0 then
            temp(0)<=delayin;
        else
            for i in 0 to (stages-1) loop
                temp(i+1) <= temp(i);
            end loop;
            temp(0) <= delayin;
        end if;
        end if;
    end process;

    delayout <= temp(stages);
    
end behavioral;
