-------------------------------------------------------------------------------
--  Package:   PKG_OVERSAMP.vhd
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
-- Filename: PKG_OVERSAMP.vhd
--
-- Description:
--
--  This package contains components that are needed for oversampling.
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
--   11/13/2004   JC      Initial Release
--   11/23/2004   JC      Fixed firstOne() to enable 12X and 20X oversampling
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.PKG_XILINX.all;
--use work.PKG_OVERSAMP.all;

package PKG_OVERSAMP is

    -----------------------
    --  Transition Scheme
    -----------------------
    function distToLeft( edge : std_logic_vector; ppt, samp, valid_range : integer ) return integer;
    function distToRight( edge : std_logic_vector; ppt, samp, valid_range : integer ) return integer;
    function firstOne( inp : std_logic_vector ) return integer;

    -----------------------
    --  Accumulator Scheme
    -----------------------
    function busDemux( din : std_logic_vector; period, offset, width : integer) return std_logic_vector;
    function busOR( din : std_logic_vector ) return std_logic;
    function extractEdge( din : std_logic_vector; samp : integer) return std_logic_vector;
    function N1_2b( d : std_logic_vector(1 downto 0) ) return unsigned;
    function N1_4b( d : std_logic_vector(3 downto 0) ) return unsigned;
    function N1_5b( d : std_logic_vector(4 downto 0) ) return unsigned;
    function N1_10b( d : std_logic_vector(9 downto 0) ) return unsigned;

end PKG_OVERSAMP;

---------------------------------------------------------------------------
-- Package Body
---------------------------------------------------------------------------

package body PKG_OVERSAMP is

    --------------------------------------------------------------------------------
    --  Transition Scheme
    --------------------------------------------------------------------------------
    function distToLeft( edge : std_logic_vector; ppt, samp, valid_range : integer )
    return integer is
        constant searchStart    : integer := ppt + samp * 2;
        variable edge_x         : std_logic_vector( samp*4-1 downto 0);
        variable dist           : integer := 0;
    begin
        edge_x  := edge(samp-1 downto 0) & edge(samp-1 downto 0) & edge(samp-1 downto 0) & edge(samp-1 downto 0);

        for i in searchStart downto searchStart-valid_range loop
            if edge_x(i) = '1' then
                return dist;
            else
                dist := dist + 1;
            end if;
        end loop;

        return dist;
    end;

    function distToRight( edge : std_logic_vector; ppt, samp, valid_range : integer )
    return integer is
        constant searchStart    : integer := ppt + 1 + samp;
        variable edge_x         : std_logic_vector( samp*4-1 downto 0);
        variable dist           : integer := 0;
    begin
        edge_x  := edge(samp-1 downto 0) & edge(samp-1 downto 0) & edge(samp-1 downto 0) & edge(samp-1 downto 0);

        for i in searchStart to searchStart+valid_range loop
            if edge_x(i) = '1' then
                return dist;
            else
                dist := dist + 1;
            end if;
        end loop;

        return dist;
    end;

    function firstOne ( inp : std_logic_vector )
    return integer is
        constant W      : integer := inp'length;
        variable index  : integer;
    begin
        index := W;

        for i in 0 to W-1 loop
            if inp(i) = '1' and index = W then
                index := i;
            end if;
        end loop;

        return index;
    end;

    --------------------------------------------------------------------------------
    --  Accumulator Scheme
    --------------------------------------------------------------------------------

    --
    --  Extract bits from a bus
    --
    function busDemux( din : std_logic_vector; period, offset, width : integer)
    return std_logic_vector is
        variable newBus     : std_logic_vector( width-1 downto 0);
    begin
        for i in 0 to width-1 loop
            newBus(i) := din( period * i + offset);
        end loop;

        return newBus;
    end;

    function busOR( din : std_logic_vector )
    return std_logic is
        variable W      : integer := din'length;
        variable bOR    : std_logic := '0';
    begin
        for i in 0 to W-1 loop
            bOR := bOR or din(i);
        end loop;

        return bOR;
    end;

    function extractEdge( din : std_logic_vector; samp : integer)
    return std_logic_vector is
        constant W_DIN  : integer := din'length;
        constant W_OR   : integer := W_DIN/samp;
        variable din_i  : std_logic_vector( W_DIN-1 downto 0);
        variable dXOR   : std_logic_vector( W_DIN-2 downto 0);
        variable dOR    : std_logic_vector( W_OR-1 downto 0);
        variable edge   : std_logic_vector( samp-1 downto 0);
    begin
        din_i := din;

        for i in 0 to W_DIN-2 loop
            dXOR(i) := din_i(i) xor din_i(i+1);
        end loop;

        for i in 0 to samp-1 loop
            dOR     := busDemux(dXOR, samp, i, W_OR);
            edge(i) := busOR( dOR);
        end loop;

        return edge;
    end;


    function N1_2b( d : std_logic_vector(1 downto 0) )
    return unsigned is
        variable sum    : unsigned(1 downto 0);
    begin
        case d is
            when "00" => sum := to_unsigned(0, 2);
            when "01" => sum := to_unsigned(1, 2);
            when "10" => sum := to_unsigned(1, 2);
            when "11" => sum := to_unsigned(2, 2);
            when others => sum := "XX";
        end case;

        return sum;
    end;

    function N1_4b( d : std_logic_vector(3 downto 0) )
    return unsigned is
        variable sum    : unsigned(2 downto 0);
    begin
        case d is
            when "0000" => sum := to_unsigned(0, 3);
            when "0001" => sum := to_unsigned(1, 3);
            when "0010" => sum := to_unsigned(1, 3);
            when "0011" => sum := to_unsigned(2, 3);
            when "0100" => sum := to_unsigned(1, 3);
            when "0101" => sum := to_unsigned(2, 3);
            when "0110" => sum := to_unsigned(2, 3);
            when "0111" => sum := to_unsigned(3, 3);
            when "1000" => sum := to_unsigned(1, 3);
            when "1001" => sum := to_unsigned(2, 3);
            when "1010" => sum := to_unsigned(2, 3);
            when "1011" => sum := to_unsigned(3, 3);
            when "1100" => sum := to_unsigned(2, 3);
            when "1101" => sum := to_unsigned(3, 3);
            when "1110" => sum := to_unsigned(3, 3);
            when "1111" => sum := to_unsigned(4, 3);
            when others => sum := "XXX";
        end case;

        return sum;
    end;

    function N1_5b( d : std_logic_vector(4 downto 0) )
    return unsigned is
        variable sum3   : unsigned(1 downto 0);
        variable sum5   : unsigned(2 downto 0);
    begin
        case d(2 downto 0) is
            when "000" => sum3 := to_unsigned(0, 2);
            when "001" => sum3 := to_unsigned(1, 2);
            when "010" => sum3 := to_unsigned(1, 2);
            when "011" => sum3 := to_unsigned(2, 2);
            when "100" => sum3 := to_unsigned(1, 2);
            when "101" => sum3 := to_unsigned(2, 2);
            when "110" => sum3 := to_unsigned(2, 2);
            when "111" => sum3 := to_unsigned(3, 2);
            when others => sum3 := "XX";
        end case;

        if  (sum3 = "00" and d(4 downto 3) = "00") or
            (sum3 = "10" and d(4 downto 3) = "00") or
            (sum3 = "01" and d(4 downto 3) = "01") or
            (sum3 = "11" and d(4 downto 3) = "01") or
            (sum3 = "01" and d(4 downto 3) = "10") or
            (sum3 = "11" and d(4 downto 3) = "10") or
            (sum3 = "00" and d(4 downto 3) = "11") or
            (sum3 = "10" and d(4 downto 3) = "11") then

            sum5(0) := '0';
        else
            sum5(0) := '1';
        end if;

        if  (sum3 = "00" and d(4 downto 3) = "00") or
            (sum3 = "01" and d(4 downto 3) = "00") or
            (sum3 = "00" and d(4 downto 3) = "01") or
            (sum3 = "11" and d(4 downto 3) = "01") or
            (sum3 = "00" and d(4 downto 3) = "10") or
            (sum3 = "11" and d(4 downto 3) = "10") or
            (sum3 = "10" and d(4 downto 3) = "11") or
            (sum3 = "11" and d(4 downto 3) = "11") then

            sum5(1) := '0';
        else
            sum5(1) := '1';
        end if;

        if  (sum3 = "11" and d(4 downto 3) = "01") or
            (sum3 = "11" and d(4 downto 3) = "10") or
            (sum3 = "10" and d(4 downto 3) = "11") or
            (sum3 = "11" and d(4 downto 3) = "11") then

            sum5(2) := '1';
        else
            sum5(2) := '0';
        end if;

        return sum5;
    end;

    function N1_10b( d : std_logic_vector(9 downto 0) )
    return unsigned is
        variable sum5a  : unsigned(3 downto 0);
        variable sum5b  : unsigned(3 downto 0);
        variable sum10  : unsigned(3 downto 0);
    begin
        sum5a := '0' & N1_5b( d(4 downto 0) );
        sum5b := '0' & N1_5b( d(9 downto 5) );

        sum10 := sum5a + sum5b;

        return sum10;
    end;


end PKG_OVERSAMP;
