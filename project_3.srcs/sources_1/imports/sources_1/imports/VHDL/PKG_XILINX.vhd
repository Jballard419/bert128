-------------------------------------------------------------------------------
--  Package:   PKG_XILINX.vhd
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
-- Filename: PKG_XILINX.vhd
--
-- Description:
--
--  This package contains components that are commonly used in VHDL Design
--  Use this package in place of std_logic_unsigned and std_logic_signed.
--  This package should be used together with IEEE's numberic_std package.
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
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--use work.PKG_XILINX.all;

package PKG_XILINX is

    --------------------------------------------------
    --      SUBTYPES
    --------------------------------------------------
    type lv2_array  is array( natural range <> ) of std_logic_vector( 1 downto 0);
    type lv3_array  is array( natural range <> ) of std_logic_vector( 2 downto 0);
    type lv4_array  is array( natural range <> ) of std_logic_vector( 3 downto 0);
    type lv5_array  is array( natural range <> ) of std_logic_vector( 4 downto 0);
    type lv6_array  is array( natural range <> ) of std_logic_vector( 5 downto 0);
    type lv7_array  is array( natural range <> ) of std_logic_vector( 6 downto 0);
    type lv8_array  is array( natural range <> ) of std_logic_vector( 7 downto 0);
    type lv9_array  is array( natural range <> ) of std_logic_vector( 8 downto 0);
    type lv10_array is array( natural range <> ) of std_logic_vector( 9 downto 0);
    type lv11_array is array( natural range <> ) of std_logic_vector(10 downto 0);
    type lv12_array is array( natural range <> ) of std_logic_vector(11 downto 0);
    type lv13_array is array( natural range <> ) of std_logic_vector(12 downto 0);
    type lv14_array is array( natural range <> ) of std_logic_vector(13 downto 0);
    type lv15_array is array( natural range <> ) of std_logic_vector(14 downto 0);
    type lv16_array is array( natural range <> ) of std_logic_vector(15 downto 0);
    type lv17_array is array( natural range <> ) of std_logic_vector(16 downto 0);
    type lv18_array is array( natural range <> ) of std_logic_vector(17 downto 0);
    type lv19_array is array( natural range <> ) of std_logic_vector(18 downto 0);
    type lv20_array is array( natural range <> ) of std_logic_vector(19 downto 0);
    type lv21_array is array( natural range <> ) of std_logic_vector(20 downto 0);
    type lv22_array is array( natural range <> ) of std_logic_vector(21 downto 0);
    type lv23_array is array( natural range <> ) of std_logic_vector(22 downto 0);
    type lv24_array is array( natural range <> ) of std_logic_vector(23 downto 0);
    type lv25_array is array( natural range <> ) of std_logic_vector(24 downto 0);
    type lv26_array is array( natural range <> ) of std_logic_vector(25 downto 0);
    type lv27_array is array( natural range <> ) of std_logic_vector(26 downto 0);
    type lv28_array is array( natural range <> ) of std_logic_vector(27 downto 0);
    type lv29_array is array( natural range <> ) of std_logic_vector(28 downto 0);
    type lv30_array is array( natural range <> ) of std_logic_vector(29 downto 0);
    type lv31_array is array( natural range <> ) of std_logic_vector(30 downto 0);
    type lv32_array is array( natural range <> ) of std_logic_vector(31 downto 0);
    type lv33_array is array( natural range <> ) of std_logic_vector(32 downto 0);
    type lv34_array is array( natural range <> ) of std_logic_vector(33 downto 0);
    type lv35_array is array( natural range <> ) of std_logic_vector(34 downto 0);
    type lv36_array is array( natural range <> ) of std_logic_vector(35 downto 0);
    type lv37_array is array( natural range <> ) of std_logic_vector(36 downto 0);
    type lv38_array is array( natural range <> ) of std_logic_vector(37 downto 0);
    type lv39_array is array( natural range <> ) of std_logic_vector(38 downto 0);
    type lv40_array is array( natural range <> ) of std_logic_vector(39 downto 0);
    type lv41_array is array( natural range <> ) of std_logic_vector(40 downto 0);
    type lv42_array is array( natural range <> ) of std_logic_vector(41 downto 0);
    type lv43_array is array( natural range <> ) of std_logic_vector(42 downto 0);
    type lv44_array is array( natural range <> ) of std_logic_vector(43 downto 0);
    type lv45_array is array( natural range <> ) of std_logic_vector(44 downto 0);
    type lv80_array is array( natural range <> ) of std_logic_vector(79 downto 0);

    type un2_array  is array( natural range <> ) of unsigned( 1 downto 0);
    type un3_array  is array( natural range <> ) of unsigned( 2 downto 0);
    type un4_array  is array( natural range <> ) of unsigned( 3 downto 0);
    type un5_array  is array( natural range <> ) of unsigned( 4 downto 0);
    type un6_array  is array( natural range <> ) of unsigned( 5 downto 0);
    type un7_array  is array( natural range <> ) of unsigned( 6 downto 0);
    type un8_array  is array( natural range <> ) of unsigned( 7 downto 0);
    type un9_array  is array( natural range <> ) of unsigned( 8 downto 0);
    type un10_array is array( natural range <> ) of unsigned( 9 downto 0);
    type un11_array is array( natural range <> ) of unsigned(10 downto 0);
    type un12_array is array( natural range <> ) of unsigned(11 downto 0);
    type un13_array is array( natural range <> ) of unsigned(12 downto 0);
    type un14_array is array( natural range <> ) of unsigned(13 downto 0);
    type un15_array is array( natural range <> ) of unsigned(14 downto 0);
    type un16_array is array( natural range <> ) of unsigned(15 downto 0);
    type un17_array is array( natural range <> ) of unsigned(16 downto 0);
    type un18_array is array( natural range <> ) of unsigned(17 downto 0);
    type un19_array is array( natural range <> ) of unsigned(18 downto 0);
    type un20_array is array( natural range <> ) of unsigned(19 downto 0);
    type un21_array is array( natural range <> ) of unsigned(20 downto 0);
    type un22_array is array( natural range <> ) of unsigned(21 downto 0);
    type un23_array is array( natural range <> ) of unsigned(22 downto 0);
    type un24_array is array( natural range <> ) of unsigned(23 downto 0);
    type un25_array is array( natural range <> ) of unsigned(24 downto 0);
    type un26_array is array( natural range <> ) of unsigned(25 downto 0);
    type un27_array is array( natural range <> ) of unsigned(26 downto 0);
    type un28_array is array( natural range <> ) of unsigned(27 downto 0);
    type un29_array is array( natural range <> ) of unsigned(28 downto 0);
    type un30_array is array( natural range <> ) of unsigned(29 downto 0);
    type un31_array is array( natural range <> ) of unsigned(30 downto 0);
    type un32_array is array( natural range <> ) of unsigned(31 downto 0);
    type un33_array is array( natural range <> ) of unsigned(32 downto 0);
    type un34_array is array( natural range <> ) of unsigned(33 downto 0);
    type un35_array is array( natural range <> ) of unsigned(34 downto 0);
    type un36_array is array( natural range <> ) of unsigned(35 downto 0);
    type un37_array is array( natural range <> ) of unsigned(36 downto 0);
    type un38_array is array( natural range <> ) of unsigned(37 downto 0);
    type un39_array is array( natural range <> ) of unsigned(38 downto 0);
    type un40_array is array( natural range <> ) of unsigned(39 downto 0);
    type un80_array is array( natural range <> ) of unsigned(79 downto 0);

    type sn2_array  is array( natural range <> ) of signed( 1 downto 0);
    type sn3_array  is array( natural range <> ) of signed( 2 downto 0);
    type sn4_array  is array( natural range <> ) of signed( 3 downto 0);
    type sn5_array  is array( natural range <> ) of signed( 4 downto 0);
    type sn6_array  is array( natural range <> ) of signed( 5 downto 0);
    type sn7_array  is array( natural range <> ) of signed( 6 downto 0);
    type sn8_array  is array( natural range <> ) of signed( 7 downto 0);
    type sn9_array  is array( natural range <> ) of signed( 8 downto 0);
    type sn10_array is array( natural range <> ) of signed( 9 downto 0);
    type sn11_array is array( natural range <> ) of signed(10 downto 0);
    type sn12_array is array( natural range <> ) of signed(11 downto 0);
    type sn13_array is array( natural range <> ) of signed(12 downto 0);
    type sn14_array is array( natural range <> ) of signed(13 downto 0);
    type sn15_array is array( natural range <> ) of signed(14 downto 0);
    type sn16_array is array( natural range <> ) of signed(15 downto 0);
    type sn17_array is array( natural range <> ) of signed(16 downto 0);
    type sn18_array is array( natural range <> ) of signed(17 downto 0);
    type sn19_array is array( natural range <> ) of signed(18 downto 0);
    type sn20_array is array( natural range <> ) of signed(19 downto 0);
    type sn21_array is array( natural range <> ) of signed(20 downto 0);
    type sn22_array is array( natural range <> ) of signed(21 downto 0);
    type sn23_array is array( natural range <> ) of signed(22 downto 0);
    type sn24_array is array( natural range <> ) of signed(23 downto 0);
    type sn25_array is array( natural range <> ) of signed(24 downto 0);
    type sn26_array is array( natural range <> ) of signed(25 downto 0);
    type sn27_array is array( natural range <> ) of signed(26 downto 0);
    type sn28_array is array( natural range <> ) of signed(27 downto 0);
    type sn29_array is array( natural range <> ) of signed(28 downto 0);
    type sn30_array is array( natural range <> ) of signed(29 downto 0);
    type sn31_array is array( natural range <> ) of signed(30 downto 0);
    type sn32_array is array( natural range <> ) of signed(31 downto 0);
    type sn33_array is array( natural range <> ) of signed(32 downto 0);
    type sn34_array is array( natural range <> ) of signed(33 downto 0);
    type sn35_array is array( natural range <> ) of signed(34 downto 0);
    type sn36_array is array( natural range <> ) of signed(35 downto 0);
    type sn37_array is array( natural range <> ) of signed(36 downto 0);
    type sn38_array is array( natural range <> ) of signed(37 downto 0);
    type sn39_array is array( natural range <> ) of signed(38 downto 0);
    type sn40_array is array( natural range <> ) of signed(39 downto 0);
    type sn80_array is array( natural range <> ) of signed(79 downto 0);

    type char_array is array( natural range <> ) of character;

    type int_array  is array (natural range <> ) of integer;

    --  3D
    --
    type lv16_8_array is array (natural range <>) of lv16_array(7 downto 0);
    type lv16_4_array is array (natural range <>) of lv16_array(3 downto 0);
    type lv16_matrix is array(natural range <>, natural range <>) of std_logic_vector(15 downto 0);
    type lv8_matrix is array(natural range <>, natural range <>) of std_logic_vector(7 downto 0);

    type int_matrix is array (natural range <>, natural range <>) of integer;
    type sn8_matrix is array(natural range <>, natural range <>) of signed(7 downto 0);
    type time_array is array (natural range <> ) of time;

    --------------------------------------------------
    --      FUNCTIONS
    --------------------------------------------------

    ---------------------------------------------------------------------------
    --  Type Conversions
    --

    -- convert an integer into a std_logic_vector
    function int_to_lv (inp, width, arith : integer)
        return std_logic_vector;

    -- Convert std_logic or std_logic_vector to an integer
    function lv_to_int (inp : std_logic_vector; arith : integer)
        return integer;

    -- Convert real to unsigned
    function real_to_un( r : real; INT_W : integer; DEC_W : integer ) return unsigned;

    -- String Operations
    --
    function int_to_h_1( inp : integer range 0 to 15 ) return string;
    function lv_to_h_1( inp : std_logic_vector(3 downto 0) ) return string;
    function lv_to_h(inp : std_logic_vector; N_CHAR : integer) return string;
    function int_to_h( inp : integer range 0 to 9999; N_CHAR : integer ) return string;

    function int_to_a_1 ( inp : integer range 0 to 9) return string;
    function int_to_a ( inp : integer range -9999 to 9999 ) return string;

    ------------------------------------------------
    --  Other Functions

    -- Find the max & min integer.
    function max(L, R: INTEGER) return INTEGER;
    function min(L, R: INTEGER) return INTEGER;

    -- same as max and min, except this operates on std_logic_vectors
    function max_lv(L, R: std_logic_vector) return std_logic_vector;
    function min_lv(L, R: std_logic_vector) return std_logic_vector;

    -- arithmic function for counter increment and decrement
    --      these overloaded operators only work with unsigned numbers
    function "+" (L : std_logic_vector; R : integer) return std_logic_vector;
    function "-" (L : std_logic_vector; R : integer) return std_logic_vector;
    function "=" (L : std_logic_vector; R : integer) return boolean;
    function "+" (L : std_logic_vector; R : std_logic_vector) return std_logic_vector;
    function add_wrap( inpA, inpB, ceiling : integer ) return integer;
    function add_wrap( inpA : std_logic_vector; inpB, ceiling : integer ) return std_logic_vector;
    function sub_wrap( inpA, inpB, ceiling : integer ) return integer;

    --  Bus Fucntion
    function busInv( din : std_logic_vector; inv : std_logic ) return std_logic_vector;
    function bitToBus( din : std_logic; width : integer ) return std_logic_vector;

    -- RLOC Operations
    --
    function GET_RLOC( x : integer; y : integer; orig_x : integer := 0; orig_y : integer := 0 ) return string;
    function Get_RLOC32 ( inp   : integer; orig_x : integer := 0; orig_y : integer := 0 )   return string;
    function Get_RLOC16 ( inp   : integer; orig_x : integer := 0; orig_y : integer := 0 )   return string;
    function Get_RLOC8  ( inp   : integer; orig_x : integer := 0; orig_y : integer := 0 )   return string;

    function GET_RLOC16_GRID ( inp : integer; orig_x : integer := 0; orig_y : integer := 0 )    return string;

    function Get_RLOC16_PACK1 ( inp : integer; orig_x : integer := 0; orig_y : integer := 0 )   return string;
    function Get_RLOC8_PACK1  ( inp : integer; orig_x : integer := 0; orig_y : integer := 0 )   return string;

    --------------------------------------------------
    --      constantS
    --------------------------------------------------

    -- Zero vectors
    constant ZERO_7 : std_logic_vector(6 downto 0) := "0000000";
    constant ZERO_8 : std_logic_vector( 7 downto 0 ) := "00000000";
    constant ZERO_13 : std_logic_vector( 12 downto 0 ) := "0000000000000";
    constant ZERO_14 : std_logic_vector(13 downto 0) := "00" & x"000";
    constant ZERO_16 : std_logic_vector( 15 downto 0 ) := "0000000000000000";
    constant ZERO_18 : std_logic_vector( 17 downto 0 ) := "000000000000000000";
    constant ZERO_32 : std_logic_vector(31 downto 0) := x"00000000";

    constant UZERO_13 : unsigned( 12 downto 0 ) := to_unsigned(0,13);
    constant SZERO_16 : signed(15 downto 0) := to_signed(0, 16);

    -- Control Signals
    constant SNUM       : integer := 0;
    constant UNUM       : integer := 1;
    constant ADD        : std_logic := '1';
    constant SUBSTRACT  : std_logic := '0';
    constant ENABLE     : std_logic := '1';
    constant logic0     : std_logic := '0';
    constant logic1     : std_logic := '1';

end PKG_XILINX;

---------------------------------------------------------------------------
-- Package Body
---------------------------------------------------------------------------

package body PKG_XILINX is

    --  int_to_lv
    --
    --  Convert an integer into a std_logic_vector
    function int_to_lv (inp, width, arith : integer)
    return std_logic_vector is
        variable result : std_logic_vector(width-1 downto 0);
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
    begin
        if (arith = SNUM) then
            signed_val := to_signed(inp, width);
            result := std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(inp, width);
            result := std_logic_vector(unsigned_val);
        end if;
        return result;
    end;

    --  lv_to_int
    --
    --  Convert an std_logic or std_logic_vector to an integer
    function lv_to_int (inp : std_logic_vector; arith : integer)
    return integer is
        constant width : integer := inp'length;
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
        variable result : integer;
    begin
        if (arith = SNUM) then
            signed_val := signed(inp);
            result := to_integer(signed_val);
        else
            unsigned_val := unsigned(inp);
            result := to_integer(unsigned_val);
        end if;
        return result;
    end;

    --  Convert a real value to an unsigned vector
    --      e.g real_to_usigned(3.25, 3, 2) = 011_01
    --
    function real_to_un( r : real; INT_W : integer; DEC_W : integer )
    return unsigned is
        variable unit       : real;
        variable int        : integer;
        variable dec        : real;
        variable dec_int    : integer;
        variable un         : unsigned(INT_W+DEC_W-1 downto 0);
    begin
        unit    := 1.0 / 2.0**DEC_W;  -- 1/2^DEC_W
        int     := integer(r);
        dec     := r - real(int);
        dec_int := integer(dec / unit);

        un := to_unsigned(int, INT_W) & to_unsigned(dec_int, DEC_W);

        return un;
    end;

    --  max
    --
    function max(L, R: INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;

    --  min
    --
    function min(L, R: INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end;

    --  max_lv
    --
    function max_lv(L, R: std_logic_vector)
    return std_logic_vector is
        constant wL : integer := L'length;
        constant wR : integer := L'length;
        variable width : integer;
        variable Lint : integer;
        variable Rint : integer;
        variable maxval : integer;
    begin
        Lint := lv_to_int(L, SNUM);
        Rint := lv_to_int(R, SNUM);
        maxval := max(Lint,Rint);
        width := max(wL,wR);
        return int_to_lv(maxval, width, SNUM);
    end;

    --  min_lv
    --
    function min_lv(L, R: std_logic_vector)
    return std_logic_vector is
        constant wL : integer := L'length;
        constant wR : integer := L'length;
        variable width : integer;
        variable Lint : integer;
        variable Rint : integer;
        variable minval : integer;
    begin
        Lint := lv_to_int(L, SNUM);
        Rint := lv_to_int(R, SNUM);
        minval := min(Lint,Rint);
        width := min(wL,wR);
        return int_to_lv(minval, width, SNUM);
    end;

    --
    --  operator +      LHS must have more bits than RHS.  Unsigned add.
    --
    function "+" (L : std_logic_vector; R : std_logic_vector)
    return std_logic_vector is
        constant wL : integer := L'length;
        constant wR : integer := R'length;
        variable Lun : unsigned(wL-1 downto 0);
        variable Run : unsigned(wL-1 downto 0);
        variable sum : unsigned(wL-1 downto 0);
    begin
        if wL < wR then
            ASSERT false
            REPORT "PKG_XILINX (251): left hand side must contain more bits than right hand side."
            SEVERITY error;
        end if;

        Lun := unsigned(L);

        if wR = wL then
            Run := unsigned(R);
        elsif wR < wL then
            Run(wR-1 downto 0) := unsigned(R);
            Run(wL-1 downto wR) := (others => '0');
        else
            Run := (others => 'X');
        end if;

        sum := Lun + Run;

        return std_logic_vector(sum);
    end;

    function "+" (L : std_logic_vector; R : integer)
    return std_logic_vector is
        constant wL : integer := L'length;
        variable Lun : unsigned(wL-1 downto 0);
        variable sum : unsigned(wL-1 downto 0);
    begin
        Lun := unsigned(L);
        sum := Lun + to_unsigned(R,wL);
        return std_logic_vector(sum);
    end;

    --  operator -
    --
    function "-" (L : std_logic_vector; R : integer)
    return std_logic_vector is
        constant wL : integer := L'length;
        variable Lun : unsigned(wL-1 downto 0);
        variable sum : unsigned(wL-1 downto 0);
    begin
        Lun := unsigned(L);
        sum := Lun - to_unsigned(R,wL);
        return std_logic_vector(sum);
    end;

    --  operator =
    --
    function "=" (L : std_logic_vector; R : integer)
    return boolean is
        constant wL : integer := L'length;
        variable Lint : integer;
        variable result : boolean;
    begin
        Lint := lv_to_int(L, UNUM);
        if Lint = R then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;

    --  Wrap around unsigned adder
    --
    function add_wrap( inpA, inpB, ceiling : integer ) return integer is
        variable result : integer;
    begin
        if inpA + inpB <= ceiling then
            result := inpA + inpB;
        else
            result := inpA + inpB - (ceiling+1);
        end if;

        return result;
    end;

    --  Wrap around unsigned adder
    --
    function add_wrap( inpA : std_logic_vector; inpB, ceiling : integer ) return std_logic_vector is
        constant W_A    : integer := inpA'length;

        variable inpA_i : integer;
        variable r_i    : integer;
        variable result : std_logic_vector(W_A-1 downto 0);
    begin
        inpA_i  := lv_to_int( inpA, UNUM );
        r_i     := add_wrap( inpA_i, inpB, ceiling );
        result  := int_to_lv( r_i, W_A, UNUM );
        return result;
    end;


    --  Wrap around unsigned substractor
    --
    function sub_wrap( inpA, inpB, ceiling : integer ) return integer is
        variable result : integer;
    begin
        if inpA - inpB >= 0 then
            result := inpA - inpB;
        else
            result := inpA - inpB + (ceiling+1);
        end if;

        return result;
    end;

    --  Bus inversion.  Invert din when inv = '1'
    --
    function busInv( din : std_logic_vector; inv : std_logic ) return std_logic_vector is
        constant W      : integer := din'length;

        variable dout   : std_logic_vector( W-1 downto 0);
    begin
        if inv = '0' then
            dout := din;
        else
            for i in 0 to W-1 loop
                dout(i) := din(W-1-i);
            end loop;
        end if;

        return dout;
    end;

    --  Making 1 bit into a bus with the value of that bit
    --
    function bitToBus( din : std_logic; width : integer ) return std_logic_vector is
        constant W      : integer := width;
        variable dout   : std_logic_vector(W-1 downto 0);
    begin
        for i in 0 to W-1 loop
            dout(i) := din;
        end loop;

        return dout;
    end;

    --  Integer to Hex for 1 char
    --
    function int_to_h_1( inp : integer range 0 to 15 ) return string is
        type TABLE is array (0 to 15) of string (1 to 1);
        constant conv_table : TABLE := ("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F");
    begin
        if inp < 0 or inp > 15 then
            return "0";
        end if;
        return conv_table(inp);
    end;

    --  Vector to hex for 1 char
    --
    function lv_to_h_1( inp : std_logic_vector(3 downto 0) ) return string is
        variable int    : integer;
    begin
        int := lv_to_int( inp, UNUM );
        return int_to_h_1(int);
    end;

    --  Vector to hex for multiple char
    --
    function lv_to_h(inp : std_logic_vector; N_CHAR : integer) return string is
        constant W      : integer := N_CHAR*4;
        variable inp_i  : std_logic_vector(W-1 downto 0);
        variable lv4    : std_logic_vector(3 downto 0);
        variable str    : string( N_CHAR downto 1);
    begin
        if inp'length /= W then
            inp_i := std_logic_vector(resize( unsigned(inp), W ));
        else
            inp_i := inp;
        end if;

        for i in 1 to N_CHAR loop
            lv4     := inp_i( (i-1)*4+3 downto (i-1)*4 );
            str     := lv_to_h_1(lv4) & str(N_CHAR downto 2);
        end loop;

        return str;
    end;

    --  Integer to Hex for multiple char
    --
    function int_to_h( inp : integer range 0 to 9999; N_CHAR : integer ) return string is
        constant W      : integer := N_CHAR*4;
        variable lv     : std_logic_vector(W-1 downto 0);
    begin
        lv  := int_to_lv(inp, W, UNUM);
        return lv_to_h(lv, N_CHAR);
    end;

    -- sub-function for int_to_a. convert 1-digit integer to string
    --
    function int_to_a_1 (inp : integer range 0 to 9) return string is
        type TABLE is array (0 to 9) of string (1 to 1);
        constant conv_table : TABLE := ("0", "1", "2", "3", "4", "5", "6", "7", "8", "9");
    begin
        if inp < 0 or inp > 9 then
            return "0";
        end if;
        return conv_table(inp);
    end int_to_a_1;

    -- convert integer value to string
    function int_to_a (inp : integer range -9999 to 9999) return string is
        variable str1   : string(1 downto 1);
        variable str2   : string(2 downto 1);
        variable str3   : string(3 downto 1);
        variable str4   : string(4 downto 1);
        variable str5   : string(5 downto 1);

        variable abs_i  : natural;
        variable sign   : integer;
        variable dig1   : integer;
        variable dig2   : integer;
        variable dig3   : integer;
        variable dig4   : integer;
    begin

        if inp < 0 then sign := -1;
        else sign :=  1;
        end if;

        abs_i := abs(inp);

        if abs_i > 9999 then
            return "0";
        end if;

        dig4 := abs_i / 1000;
        dig3 := (abs_i - dig4*1000) / 100;
        dig2 := (abs_i - dig4*1000 - dig3*100) / 10;
        dig1 := (abs_i - dig4*1000 - dig3*100 - dig2*10);

        if sign > 0 then
            if dig4 > 0 then
                str4 := int_to_a_1(dig4) & int_to_a_1(dig3) & int_to_a_1(dig2) & int_to_a_1(dig1);
                return str4;
            elsif dig3 > 0 then
                str3 := int_to_a_1(dig3) & int_to_a_1(dig2) & int_to_a_1(dig1);
                return str3;
            elsif dig2 > 0 then
                str2 := int_to_a_1(dig2) & int_to_a_1(dig1);
                return str2;
            else
                str1 := int_to_a_1(dig1);
                return str1;
            end if;
        else
            if dig4 > 0 then
                str5 := "-" & int_to_a_1(dig4) & int_to_a_1(dig3) & int_to_a_1(dig2) & int_to_a_1(dig1);
                return str5;
            elsif dig3 > 0 then
                str4 := "-" & int_to_a_1(dig3) & int_to_a_1(dig2) & int_to_a_1(dig1);
                return str4;
            elsif dig2 > 0 then
                str3 := "-" & int_to_a_1(dig2) & int_to_a_1(dig1);
                return str3;
            else
                str2 := "-" & int_to_a_1(dig1);
                return str2;
            end if;
        end if;
    end function int_to_a;

    -- Create an RLOC string with offset
    function GET_RLOC( x : integer; y : integer; orig_x : integer := 0; orig_y : integer := 0)
    return string is
        variable Col    : integer;
        variable Row    : integer;
    begin
        Col := x + orig_x;
        Row := y + orig_y;

        return "X" & int_to_a(Col) & "Y" & int_to_a(Row);
    end function GET_RLOC;

    -- Get_RLOC32
    -- place d-ff within 4 CLBs. Virtex2 only.
    function GET_RLOC32 ( inp   : integer; orig_x : integer := 0; orig_y : integer := 0 )
    return string is
        variable Row    : integer;
        variable Col    : integer;
    begin
        Row := (inp mod 32) / 2 + orig_y;
        Col := inp / 32 + orig_x;
        return "X" & int_to_a(Col) & "Y" & int_to_a(Row);
    end function GET_RLOC32;

    -- GET_RLOC16
    -- place d-ff within 2 CLBs. Virtex2 only.
    function GET_RLOC16 ( inp   : integer; orig_x : integer := 0; orig_y : integer := 0  )
    return string is
        variable Row    : integer;
        variable Col    : integer;
    begin
        Row := (inp mod 16) / 2 + orig_y;
        Col := inp / 16 + orig_x;
        return "X" & int_to_a(Col) & "Y" & int_to_a(Row);
    end function GET_RLOC16;

    -- GET_RLOC16_GRID
    -- place d-ff within 2 CLBs. Virtex2 only. RPM_GRID system
    function GET_RLOC16_GRID ( inp : integer; orig_x : integer := 0; orig_y : integer := 0  )
    return string is
        variable Row    : integer;
        variable Col    : integer;
    begin
        Row := (inp mod 16) + orig_y;
        Col := (inp / 16)*3 + orig_x;
        return "X" & int_to_a(Col) & "Y" & int_to_a(Row);
    end function GET_RLOC16_GRID;

    -- GET_RLOC16_PACK1
    -- place one d-ff in one slice. Virtex2 only.
    function GET_RLOC16_PACK1 ( inp : integer; orig_x : integer := 0; orig_y : integer := 0  )
    return string is
        variable Row    : integer;
        variable Col    : integer;
    begin
        Row := (inp mod 16) + orig_y;
        Col := inp / 16 + orig_x;
        return "X" & int_to_a(Col) & "Y" & int_to_a(Row);
    end function GET_RLOC16_PACK1;


    -- GET_RLOC8
    -- place d-ff within 1 CLBs. Virtex2 only.
    function GET_RLOC8 ( inp    : integer; orig_x : integer := 0; orig_y : integer := 0  )
    return string is
        variable Row    : integer;
        variable Col    : integer;
    begin
        Row := (inp mod 8) / 2 + orig_y;
        Col := inp / 8 + orig_x;
        return "X" & int_to_a(Col) & "Y" & int_to_a(Row);
    end function GET_RLOC8;

    -- GET_RLOC8_PACK1
    -- place one d-ff in one slice. Virtex2 only.
    function GET_RLOC8_PACK1 ( inp  : integer; orig_x : integer := 0; orig_y : integer := 0  )
    return string is
        variable Row    : integer;
        variable Col    : integer;
    begin
        Row := (inp mod 8) + orig_y;
        Col := inp / 8 + orig_x;
        return "X" & int_to_a(Col) & "Y" & int_to_a(Row);
    end function GET_RLOC8_PACK1;

end PKG_XILINX;
