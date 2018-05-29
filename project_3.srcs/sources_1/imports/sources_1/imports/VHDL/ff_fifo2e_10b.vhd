-------------------------------------------------------------------------------
--  Module:   ff_fifo2e_10b.vhd
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
-- Filename: ff_fifo2e_10b.vhd
--
-- Description:
--
--  This is a 2 entry, 10 bit wide synchronous FIFO implemented with FF
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

use work.PKG_XILINX.all;
use work.PKG_OVERSAMP.all;

------------------------------------------------------------
entity ff_fifo2e_10b is
    port(
        rst     : in    std_logic;
        clk     : in    std_logic;
        en      : in    std_logic;

        din     : in    std_logic_vector(9 downto 0);
        dinSel  : in    lv4_array(9 downto 0);
        we_ff   : in    lv2_array(9 downto 0);
        bankSel : in    std_logic;
        byteRdy : in    std_logic;

        doutRdy : out   std_logic;
        dout    : out   std_logic_vector(9 downto 0)
        );
end ff_fifo2e_10b;

------------------------------------------------------------
architecture rtl of ff_fifo2e_10b is

    component ff_fifo2e
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
    end component;

    signal doutSel_i    : std_logic;
    signal doutRdy_i    : std_logic;
begin

--
--  Control Logic
--
--  Delay doutSel by 1 cycle
--  Delay doutRdy by 2 cycles
--
P_CTL : process( clk )
begin
    if clk'event and clk = '1' then
        if rst = '1' then
            doutSel_i   <= '0';
            doutRdy_i   <= '0';
            doutRdy     <= '0';
        else
            if en = '1' then
                doutSel_i   <= BankSel;
                doutRdy_i   <= byteRdy;
                doutRdy     <= doutRdy_i;
            end if;
        end if;
    end if;
end process;

G0 : for i in 0 to 9 generate
begin
    C_FF2E : ff_fifo2e
        port map(
            rst     => rst,
            clk     => clk,
            en      => en,
            din     => din,
            dinSel  => dinSel(i),
            we_ff   => we_ff(i),
            doutSel => doutSel_i,
            dout    => dout(i)
            );
end generate;


end rtl;
