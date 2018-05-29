-------------------------------------------------------------------------------
--  Module:   ff_fifo2e.vhd
-------------------------------------------------------------------------------
--**************************************************************************
--
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
--     FOR A PARTICULAR PURPOSE.
--
--     (c) Copyright 2004 Xilinx, Inc.
--     All rights reserved.
--
--**************************************************************************
-------------------------------------------------------------------------------
-- Filename: ff_fifo2e.vhd
--
-- Description:
--
--  This is a 2 enty, 1 bit wide synchronous FIFO implemented with FF.
--
--  This FIFO has a selector at the front end to choose which
--  input bit to store into the fifo.
--
--  It also has 2 write enable signals to control the 2 FFs
--  independently
--
-- Design Notes:
-- 1.
-- 2.
-- 3.
-------------------------------------------------------------------------------
-- Owners:         Jerry Chuang
-- Revision:       1.0
--
--     Modification History:
--     Date     Init          Description
--   ---------  ------ --------------------------------------------------------
--   08/10/2004   JC      Initial Release
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library unisim ;                -- for functional simulation
use unisim.vcomponents.all ;

----------------------------------------------------
entity ff_fifo2e is
    port(
        rst     : in    std_logic;
        clk     : in    std_logic;
        en      : in    std_logic;

        din     : in    std_logic_vector(9 downto 0);
        dinSel  : in    std_logic_vector(3 downto 0);
        we_ff   : in    std_logic_vector(1 downto 0);

        doutSel : in    std_logic;
        dout    : out   std_logic
        );
end ff_fifo2e;

----------------------------------------------------
architecture rtl of ff_fifo2e is
    signal din_i    : std_logic;
    signal ff       : std_logic_vector(1 downto 0);
begin

--  Do not register input to reduce logic
--
P_DINSEL : process( din, dinSel )
begin
    case dinSel is
        when "0000" =>  din_i <= din(0);
        when "0001" =>  din_i <= din(1);
        when "0010" =>  din_i <= din(2);
        when "0011" =>  din_i <= din(3);
        when "0100" =>  din_i <= din(4);
        when "0101" =>  din_i <= din(5);
        when "0110" =>  din_i <= din(6);
        when "0111" =>  din_i <= din(7);
        when "1000" =>  din_i <= din(8);
        when "1001" =>  din_i <= din(9);
        when others =>  din_i <= 'X';
    end case;
end process;

P_DOUT : process( clk )
begin
    if clk'event and clk = '1' then
        if rst = '1' then
            ff      <= (others => '0');
            dout    <= '0';
        else
            if en = '1' then
                if we_ff(0) = '1' then
                    ff(0) <= din_i;
                end if;

                if we_ff(1) = '1' then
                    ff(1) <= din_i;
                end if;

                if doutSel = '0' then
                    dout <= ff(0);
                else
                    dout <= ff(1);
                end if;
            end if;
        end if;
    end if;
end process;

end rtl;
