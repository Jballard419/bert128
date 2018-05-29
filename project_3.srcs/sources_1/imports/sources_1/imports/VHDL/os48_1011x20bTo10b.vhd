-------------------------------------------------------------------------------
--  Module:   os48_1011x20bTo10b.vhd
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
-- Filename: os48_1011x20bTo10b.vhd
--
-- Description:
--
--  This is an oversampling module that takes in 20b of oversampled data and
--  produce 10 bits of actual data.
--
--  The oversampling ratio supported in this module is 4/8/10/11X
--
--  mode
--      "00"     4X
--      "01"     8X
--      "10"    10X
--      "11"    11X
--
--  Serial and parallel data is MSB First.
--
-- Design Notes:
-- 1.
-- 2.
-- 3.
-------------------------------------------------------------------------------
-- Owners:         Jerry Chuang
-- Revision:       2.0
--
--     Modification History:
--     Date     Init          Description
--   ---------  ------ --------------------------------------------------------
--   03/16/2005   JC      Initial Release
--   02/23/2006   JC      Adding clock enable
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library unisim;
use unisim.vcomponents.all;

use work.PKG_XILINX.all;
use work.PKG_OVERSAMP.all;

----------------------------------------------------------------------
entity os48_1011x20bTo10b is
    port(
        rst         : in    std_logic;
        recclk      : in    std_logic;                      -- Recovered Clock from SERDES
        en          : in    std_logic;
        mode        : in    std_logic_vector( 1 downto 0);  -- Oversampling Modes: 3/4/5/6X Oversampling
        din20b      : in    std_logic_vector(19 downto 0);

        doutEn      : out   std_logic;
        dout        : out   std_logic_vector( 9 downto 0);

        --  Internal signalling
        edge        : out   std_logic_vector(3 downto 0);
        dSel        : in    std_logic_vector(3 downto 0);
        bankSel     : in    std_logic;
        byteRdy     : in    std_logic;
        bitSel      : in    lv4_array(1 downto 0);
        we          : in    lv2_array(9 downto 0)
        );
end os48_1011x20bTo10b;

----------------------------------------------------------------------
architecture rtl of os48_1011x20bTo10b is

    ---------------------------
    --  Componets
    ---------------------------
    component ff_fifo2e_10b
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
    end component;


    ---------------------------
    --  Signal
    ---------------------------
    signal din20b_d     : std_logic_vector(19 downto 0);
    signal din_d        : lv30_array(2 downto 0);
    signal doutMux      : lv10_array(1 downto 0);

    --  For Sipo V2
    --
    signal bitSel_d     : lv4_array(1 downto 0);
    signal bitSel_array : lv4_array(9 downto 0);
    signal we_d         : lv2_array(9 downto 0);
    signal bankSel_d    : std_logic;
    signal byteRdy_d    : std_logic;

    signal edge4x       : std_logic_vector( 3 downto 0);
    signal edge8x       : std_logic_vector( 7 downto 0);
    signal edge10x      : std_logic_vector( 9 downto 0);
    signal edge11x      : std_logic_vector(10 downto 0);

begin

--------------------------------------------------------------
--
--  Data Path Processing
--
P_DATAPATH : process( rst, recclk )
    variable din_v      : std_logic_vector(29 downto 0);

    variable din4x_d    : std_logic_vector(23 downto 0);
    variable mux4xD     : std_logic_vector( 5 downto 0);

    variable edgeNo8x   : integer;
    variable din8x_d    : std_logic_vector(23 downto 0);
    variable mux8xD     : std_logic_vector( 2 downto 0);

    variable edgeNo10x  : integer;
    variable din10x_d   : std_logic_vector(29 downto 0);
    variable mux10xD    : std_logic_vector( 2 downto 0);

    variable edgeNo11x  : integer;
    variable din11x_d   : std_logic_vector(21 downto 0);
    variable mux11xD    : std_logic_vector( 1 downto 0);


begin
    if recclk'event and recclk = '1' then
        if rst = '1' then
            din20b_d    <= (others => '0');

            for i in 0 to 2 loop
                din_d(i)    <= (others => '0');
            end loop;

            edge        <= (others => '0');

            --
            --  Ease timing for SIPO 10b version 2
            --
            for i in 0 to 1 loop
                doutMux(i)  <= (others => '0');
                bitSel_d(i) <= (others => '0');
            end loop;

            for i in 0 to 9 loop
                we_d(i) <= (others => '0');
            end loop;

            bankSel_d   <= '0';
            byteRdy_d   <= '0';

        else
            if en = '1' then

                --
                --  Setup Correct Data Order and width
                --  Delay data to match control logic processing time
                --
                --  Note Valid Ranges are:
                --  4X: 9 to 29
                --  8X: 5 to 29
                --
                din_d(2)    <= din_d(1);
                din_d(1)    <= din_d(0);
                din_d(0)    <= din20b_d & din20b(19 downto 10);
                din20b_d    <= din20b;



                din_v    := din20b_d & din20b(19 downto 10);

                --
                --  Extract Edge Information
                --
                edge4x  <= extractEdge( din_v(29 downto 9),  4);
                edge8x  <= extractEdge( din_v(29 downto 5),  8);
                edge10x <= extractEdge( din_v(29 downto 9), 10);
                edge11x <= extractEdge( din_v(29 downto 7), 11);

                edgeNo8x  := firstOne(edge8x);
                edgeNo10x := firstOne(edge10x);
                edgeNo11x := firstOne(edge11x);

                --
                --  Output Edge
                --
                case mode is
                    when "00"   => edge <= edge4x;
                    when "01"   => edge <= int_to_lv(edgeNo8x,  4, UNUM);
                    when "10"   => edge <= int_to_lv(edgeNo10x, 4, UNUM);
                    when others => edge <= int_to_lv(edgeNo11x, 4, UNUM);
                end case;

                --
                --  Wait 1 Cycle for BRAM controller to return control data dSel
                --  bitSel and we_ff comes back another cycle after.
                --

                --------------------------------
                --  Mux Setup
                --------------------------------

                --
                -- 4X Oversampling
                --

                -- Select the right bits
                --
                din4x_d := din_d(2)(29 downto 6);

                for i in 0 to 5 loop
                    case dSel is
                        when "0000" =>  mux4xD(i) := din4x_d(i*4);
                        when "0001" =>  mux4xD(i) := din4x_d(i*4+1);
                        when "0010" =>  mux4xD(i) := din4x_d(i*4+2);
                        when others =>  mux4xD(i) := din4x_d(i*4+3);
                    end case;
                end loop;

                --
                -- 8X Oversampling
                --
                din8x_d := din_d(2)(29 downto 6);

                for i in 0 to 2 loop
                    case dSel is
                        when "0000" =>  mux8xD(i) := din8x_d(i*8);
                        when "0001" =>  mux8xD(i) := din8x_d(i*8+1);
                        when "0010" =>  mux8xD(i) := din8x_d(i*8+2);
                        when "0011" =>  mux8xD(i) := din8x_d(i*8+3);
                        when "0100" =>  mux8xD(i) := din8x_d(i*8+4);
                        when "0101" =>  mux8xD(i) := din8x_d(i*8+5);
                        when "0110" =>  mux8xD(i) := din8x_d(i*8+6);
                        when others =>  mux8xD(i) := din8x_d(i*8+7);
                    end case;
                end loop;

                --
                -- 10X Oversampling
                --
                din10x_d := din_d(2)(29 downto 0);

                for i in 0 to 2 loop
                    case dSel is
                        when "0000" =>  mux10xD(i) := din10x_d(i*10);
                        when "0001" =>  mux10xD(i) := din10x_d(i*10+1);
                        when "0010" =>  mux10xD(i) := din10x_d(i*10+2);
                        when "0011" =>  mux10xD(i) := din10x_d(i*10+3);
                        when "0100" =>  mux10xD(i) := din10x_d(i*10+4);
                        when "0101" =>  mux10xD(i) := din10x_d(i*10+5);
                        when "0110" =>  mux10xD(i) := din10x_d(i*10+6);
                        when "0111" =>  mux10xD(i) := din10x_d(i*10+7);
                        when "1000" =>  mux10xD(i) := din10x_d(i*10+8);
                        when others =>  mux10xD(i) := din10x_d(i*10+9);
                    end case;
                end loop;

                --
                -- 11X Oversampling
                --
                din11x_d := din_d(2)(29 downto 8);

                for i in 0 to 1 loop
                    case dSel is
                        when "0000" =>  mux11xD(i) := din11x_d(i*11);
                        when "0001" =>  mux11xD(i) := din11x_d(i*11+1);
                        when "0010" =>  mux11xD(i) := din11x_d(i*11+2);
                        when "0011" =>  mux11xD(i) := din11x_d(i*11+3);
                        when "0100" =>  mux11xD(i) := din11x_d(i*11+4);
                        when "0101" =>  mux11xD(i) := din11x_d(i*11+5);
                        when "0110" =>  mux11xD(i) := din11x_d(i*11+6);
                        when "0111" =>  mux11xD(i) := din11x_d(i*11+7);
                        when "1000" =>  mux11xD(i) := din11x_d(i*11+8);
                        when "1001" =>  mux11xD(i) := din11x_d(i*11+9);
                        when others =>  mux11xD(i) := din11x_d(i*11+10);
                    end case;
                end loop;

                --
                --  Output Muxed Data
                --
                case mode is
                    when "00"   => doutMux(0) <= "0000"      & mux4xD;
                    when "01"   => doutMux(0) <= "0000000"   & mux8xD;
                    when "10"   => doutMux(0) <= "0000000"   & mux10xD;
                    when others => doutMux(0) <= "00000000" & mux11xD;
                end case;

                ----------------------------------------------------
                --  Pipeline FIFO control logic to increase timing
                --  For Sipo v2
                ----------------------------------------------------
                doutMux(1)  <= doutMux(0);
                we_d        <= we;
                bankSel_d   <= bankSel;
                byteRdy_d   <= byteRdy;

                -- Duplicate to reduce fanout
                bitSel_d(0) <= bitSel(0);
                bitSel_d(1) <= bitSel(1);

            end if;

        end if;
    end if;
end process;

--
--  Customize the bitSel for each of the storage element
--  For Sipo V2
--
P_BITSEL : process( bitSel_d )
begin
    bitSel_array( 0) <= bitSel_d(0);
    bitSel_array( 1) <= add_wrap( bitSel_d(0),  1, 9);
    bitSel_array( 2) <= add_wrap( bitSel_d(0),  2, 9);
    bitSel_array( 3) <= add_wrap( bitSel_d(0),  3, 9);
    bitSel_array( 4) <= add_wrap( bitSel_d(0),  4, 9);

    bitSel_array( 5) <= bitSel_d(1);
    bitSel_array( 6) <= add_wrap( bitSel_d(1),  1, 9);
    bitSel_array( 7) <= add_wrap( bitSel_d(1),  2, 9);
    bitSel_array( 8) <= add_wrap( bitSel_d(1),  3, 9);
    bitSel_array( 9) <= add_wrap( bitSel_d(1),  4, 9);
end process;

--------------------------------------------------------------
--
--  FF based FIFO
--
C_FFFIFO : ff_fifo2e_10b
    port map(
        rst         => rst,
        clk         => recclk,
        en          => en,
        din         => doutMux(1),
        bankSel     => bankSel_d,
        byteRdy     => byteRdy_d,
        dinSel      => bitSel_array,
        we_ff       => we_d,

        doutRdy     => doutEn,
        dout        => dout
        );

end rtl;
