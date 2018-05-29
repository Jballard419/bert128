-------------------------------------------------------------------------------
--  Module:   os48_1011x20bTo10b_top2.vhd
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
-- Filename: os48_1011x20bTo10b_top2.vhd
--
-- Description:
--
--  Top Level for 4/8/10/11X oversampling module
--  Input is 20b from MGT.  Output is 10 bit oversampled data
--
--  Serial and parallel data is MSB First.
--
--  mode
--      "00"     4X
--      "01"     8X
--      "10"    10X
--      "11"    11X
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
entity os48_1011x20bTo10b_top2 is
    port(
        rst             : in    std_logic;

        -- Configuration vectors
        bitOrderDinLSB  : in    std_logic;                      -- '1'-LSB first, '0'-MSB first
        bitOrderDoutLSB : in    std_logic;

        -- Data Path
        A_recclk        : in    std_logic;                      -- Recovered Clock from SERDES
        A_en            : in    std_logic;                      -- Clock enable
         -- 4/8/10/11X oversampling
        A_din20b        : in    std_logic_vector(19 downto 0);  -- 20b oversampled data from RocketIO
        A_dout10bEn     : out   std_logic;                      -- 10b recovered data enable
        A_dout10b       : out   std_logic_vector( 9 downto 0);  -- 10b recovered data
        A_dout20bEn     : out   std_logic;                      -- 20b recovered data enable
        A_dout20b       : out   std_logic_vector(19 downto 0);  -- 20b recovered data

        B_recclk        : in    std_logic;
        B_en            : in    std_logic;
        B_mode          : in    std_logic_vector( 1 downto 0);
        B_din20b        : in    std_logic_vector(19 downto 0);
        B_dout10bEn     : out   std_logic;
        B_dout10b       : out   std_logic_vector( 9 downto 0);
        B_dout20bEn     : out   std_logic;
        B_dout20b       : out   std_logic_vector(19 downto 0)
        );
end os48_1011x20bTo10b_top2;

----------------------------------------------------------------------
architecture rtl of os48_1011x20bTo10b_top2 is

    attribute RLOC : string;
    component os48_1011x20bTo10b
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
    end component;

    component osDeci20b_48_1011x_BRAM
        port(
            A_rst       : in    std_logic;
            A_clk       : in    std_logic;
            A_en        : in    std_logic;
            A_mode      : in    std_logic_vector(1 downto 0);   -- 4/8/10/11X
            A_edge      : in    std_logic_vector(3 downto 0);   -- Edge Info bits
            A_valid     : out   std_logic_vector(3 downto 0);   -- Valid bits
            A_dSel      : out   std_logic_vector(3 downto 0);   -- Data Mux

            B_rst       : in    std_logic;
            B_clk       : in    std_logic;
            B_en        : in    std_logic;
            B_mode      : in    std_logic_vector(1 downto 0);
            B_edge      : in    std_logic_vector(3 downto 0);
            B_valid     : out   std_logic_vector(3 downto 0);
            B_dSel      : out   std_logic_vector(3 downto 0)
            );
    end component;

    component sipoCtl10b_BRAM_v2
        port(
            -- Port A
            A_rst       : in    std_logic;
            A_clk       : in    std_logic;
            A_en        : in    std_logic;
            A_valid     : in    std_logic_vector(3 downto 0);   -- Number of valid bits

            A_bankSel   : out   std_logic;              -- '0' select bank0 read from, '1' select bank1
            A_byteRdy   : out   std_logic;              -- Byte Ready
            A_bitSel    : out   lv4_array(1 downto 0);  -- Select which bit the storage element should use
            A_we        : out   lv2_array(9 downto 0);  -- Select which FF should be enabled

            -- Port B
            B_rst       : in    std_logic;
            B_clk       : in    std_logic;
            B_en        : in    std_logic;
            B_valid     : in    std_logic_vector(3 downto 0);

            B_bankSel   : out   std_logic;
            B_byteRdy   : out   std_logic;
            B_bitSel    : out   lv4_array(1 downto 0);
            B_we        : out   lv2_array(9 downto 0)
            );
    end component;

    signal A_din20b_i       : std_logic_vector(19 downto 0);
    signal A_doutDly_i      : std_logic_vector( 9 downto 0);
    signal A_dout20b_i      : std_logic_vector(19 downto 0);
    signal A_dout20bEn_i    : std_logic;
    signal A_doutEn_i       : std_logic;
    signal A_dout_i         : std_logic_vector(9 downto 0);
    signal A_mode           : std_logic_vector( 1 downto 0):="01"; 
    signal A_edge           : std_logic_vector(3 downto 0);
    signal A_dSel           : std_logic_vector(3 downto 0);
    signal A_bankSel        : std_logic;
    signal A_byteRdy        : std_logic;
    signal A_bitSel         : lv4_array(1 downto 0);
    signal A_we             : lv2_array(9 downto 0);

    signal B_din20b_i       : std_logic_vector(19 downto 0);
    signal B_doutDly_i      : std_logic_vector( 9 downto 0);
    signal B_dout20b_i      : std_logic_vector(19 downto 0);
    signal B_dout20bEn_i    : std_logic;
    signal B_doutEn_i       : std_logic;
    signal B_dout_i         : std_logic_vector(9 downto 0);

    signal B_edge           : std_logic_vector(3 downto 0);
    signal B_dSel           : std_logic_vector(3 downto 0);
    signal B_bankSel        : std_logic;
    signal B_byteRdy        : std_logic;
    signal B_bitSel         : lv4_array(1 downto 0);
    signal B_we             : lv2_array(9 downto 0);

    signal A_valid  : std_logic_vector(3 downto 0);
    signal B_valid  : std_logic_vector(3 downto 0);
    
    attribute RLOC of C_DATAA : label is "X0Y0";
    attribute Rloc of C_DATAB: label is "X1Y0";
    attribute RLOC of C_decision : label is "X0Y1";
    attribute RLOC of C_FIFOCTL : label is "X1Y1";


begin

--
-- Bit ordering modification
--  The oversampling core uses MSB first
--
A_din20b_i <= busInv(A_din20b, bitOrderDinLSB);
B_din20b_i <= busInv(B_din20b, bitOrderDinLSB);

-----------------------------------------------------------------
-- 10b interface top level glue
-----------------------------------------------------------------

A_dout10b  <= busInv(A_dout_i, bitOrderDoutLSB);
B_dout10b  <= busInv(B_dout_i, bitOrderDoutLSB);

A_dout10bEn <= A_doutEn_i and A_en;
B_dout10bEn <= B_doutEn_i and B_en;

-----------------------------------------------------------------
-- 20b interface top level glue
-----------------------------------------------------------------
A_dout20b   <= busInv(A_dout20b_i, bitOrderDoutLSB);
B_dout20b   <= busInv(B_dout20b_i, bitOrderDoutLSB);

--
--  Creating a 20b output and control
--
P_ADOUT20B : process( rst, A_recclk )
begin
    if rst = '1' then
        A_dout20bEn_i   <= '0';
        A_dout20bEn     <= '0';
        A_dout20b_i     <= (others => '0');

    elsif A_recclk'event and A_recclk = '1' then

        if A_en = '1' then
            if A_doutEn_i = '1' then
                A_dout20bEn_i   <= not A_dout20bEn_i;
                A_dout20b_i     <= A_dout20b_i(9 downto 0) & A_dout_i;
            end if;
        end if;

        if A_doutEn_i = '1' and A_dout20bEn_i = '1' and A_en = '1' then
            A_dout20bEn <= '1';
        else
            A_dout20bEn <= '0';
        end if;

    end if;
end process;

P_BDOUT20B : process( rst, B_recclk )
begin
    if rst = '1' then
        B_dout20bEn_i   <= '0';
        B_dout20bEn     <= '0';
        B_dout20b_i     <= (others => '0');

    elsif B_recclk'event and B_recclk = '1' then

        if B_en = '1' then
            if B_doutEn_i = '1' then
                B_dout20bEn_i   <= not B_dout20bEn_i;
                B_dout20b_i     <= B_dout20b_i(9 downto 0) & B_dout_i;
            end if;

        end if;

        if B_doutEn_i = '1' and B_dout20bEn_i = '1' and B_en = '1' then
            B_dout20bEn <= '1';
        else
            B_dout20bEn <= '0';
        end if;


    end if;
end process;

-----------------------------------------------------------------
--  Oversampling Logic
-----------------------------------------------------------------

C_DATAA : os48_1011x20bTo10b
    port map(
        rst         => rst,
        recclk      => A_recclk,
        en          => A_en,
        mode        => A_mode,
        din20b      => A_din20b_i,
        doutEn      => A_doutEn_i,
        dout        => A_dout_i,
        edge        => A_edge,
        dSel        => A_dSel,
        bankSel     => A_bankSel,
        byteRdy     => A_byteRdy,
        bitSel      => A_bitSel,
        we          => A_we
        );

C_DATAB : os48_1011x20bTo10b
    port map(
        rst         => rst,
        recclk      => B_recclk,
        en          => B_en,
        mode        => B_mode,
        din20b      => B_din20b_i,
        doutEn      => B_doutEn_i,
        dout        => B_dout_i,
        edge        => B_edge,
        dSel        => B_dSel,
        bankSel     => B_bankSel,
        byteRdy     => B_byteRdy,
        bitSel      => B_bitSel,
        we          => B_we
        );

--
--  Control Signals
--
C_DECISION : osDeci20b_48_1011x_BRAM
    port map(
        A_rst       => rst,
        A_clk       => A_recclk,
        A_en        => A_en,
        A_mode      => A_mode,
        A_edge      => A_edge,
        A_valid     => A_valid,
        A_dSel      => A_dSel,

        B_rst       => rst,
        B_clk       => B_recclk,
        B_en        => B_en,
        B_mode      => B_mode,
        B_edge      => B_edge,
        B_valid     => B_valid,
        B_dSel      => B_dSel
        );

C_FIFOCTL : sipoCtl10b_BRAM_v2
    port map(
        A_rst       => rst,
        A_clk       => A_recclk,
        A_en        => A_en,
        A_valid     => A_valid,
        A_bankSel   => A_bankSel,
        A_byteRdy   => A_byteRdy,
        A_bitSel    => A_bitSel,
        A_we        => A_we,

        B_rst       => rst,
        B_clk       => B_recclk,
        B_en        => B_en,
        B_valid     => B_valid,

        B_bankSel   => B_bankSel,
        B_byteRdy   => B_byteRdy,
        B_bitSel    => B_bitSel,
        B_we        => B_we
        );

end rtl;
