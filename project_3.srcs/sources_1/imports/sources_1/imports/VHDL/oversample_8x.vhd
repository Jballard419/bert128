-------------------------------------------------------------------------------- 
-- Copyright (c) 2006 Xilinx, Inc. 
-- All Rights Reserved 
-------------------------------------------------------------------------------- 
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /   Vendor: Xilinx 
-- \   \   \/    Author: John F. Snow, Advanced Product Division, Xilinx, Inc.
--  \   \        Filename: $RCSfile: oversample_8x.vhd,rcs $
--  /   /        Date Last Modified:  $Date: 2006-09-22 14:00:41-06 $
-- /___/   /\    Date Created: July 17, 2006
-- \   \  /  \ 
--  \___\/\___\ 
-- 
--
-- Revision History: 
-- $Log: oversample_8x.vhd,rcs $
-- Revision 1.0  2006-09-22 14:00:41-06  jsnow
-- Initial release.
--
-------------------------------------------------------------------------------- 
--   
--   XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" 
--   AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND 
--   SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, 
--   OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, 
--   APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION 
--   THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT, 
--   AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE 
--   FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY 
--   WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE 
--   IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR 
--   REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF 
--   INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS 
--   FOR A PARTICULAR PURPOSE. 
--
-------------------------------------------------------------------------------- 
--
-- This is a single channel 8X oversampling data recovery unit using bit-rate
-- clocks. It requires two phases of a clock running at the bit rate and uses 
-- two IDELAY primitives to provide the 45 degree phase shifting of the serial 
-- data.
--
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library UNISIM;
use UNISIM.vcomponents.all;


entity oversample_8x is
generic (
    IDELAY_45_DEGREES : integer := 6);              -- Specifices the delay for a
                                                    -- 1/8 bit delay with IDELAY. 6 is
                                                    -- the correct value for 270 Mb/s.
port (
    clk0:       in  std_logic;                      -- bit rate clock
    clk90:      in  std_logic;                      -- clk0 delayed 90 degrees
    sdat_0_dly:  in  std_logic;                      -- serial input data
    sdatb_45_dly:  in  std_logic;                      -- inverted serial input data
    dout_rdy:   out std_logic;  
    rst: in std_logic;                    -- output data ready
    dout:       out std_logic_vector(19 downto 0)   -- output data
);
end oversample_8x;

architecture synth of oversample_8x is

-------------------------------------------------------------------------------
-- Signal definitions
--
signal clk_180,clk_270: std_logic;

signal a1, a2, a3 : std_logic;                              -- 0 degree capture pipeline
signal b1, b2, b3 : std_logic;                              -- 45 degree capture pipeline
signal c1, c2, c3 : std_logic;                              -- 90 degree capture pipeline
signal d1, d2, d3 : std_logic;                              -- 135 degree capture pipeline
signal e1, e2, e3 : std_logic;                              -- 180 degree capture pipeline
signal f1, f2, f3 : std_logic;                              -- 225 degree capture pipeline
signal g1, g2, g3 : std_logic;                              -- 270 degree capture pipeline
signal h1, h2, h3 : std_logic;                              -- 315 degree capture pipeline
signal instage_dout:std_logic_vector(7 downto 0);           -- 8X oversampled data from input state
signal samples_0 :  std_logic_vector(7 downto 0) := X"00";  -- used to make 20-bit dout vector
signal samples_1 :  std_logic_vector(7 downto 0) := X"00";  -- used to make 20-bit dout vector
signal samples_2 :  std_logic_vector(7 downto 0) := X"00";  -- used to make 20-bit dout vector
signal period :     std_logic_vector(4 downto 0) := "00001";-- sequencer for 20-bit vector creation

--------------------------------------------------------------------------------
-- Attributes
--
attribute DIFF_TERM : string;
attribute KEEP : string;
attribute SHREG_EXTRACT : string;
attribute IOB : string;
attribute RLOC : string;
attribute EQUIVALENT_REGISTER_REMOVAL : string;



attribute EQUIVALENT_REGISTER_REMOVAL of a1 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of a2 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of a3 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of c1 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of c2 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of c3 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of d1 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of d2 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of d3 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of e1 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of e2 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of e3 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of f1 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of f2 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of f3 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of g1 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of g2 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of g3 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of h1 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of h2 : signal is "TRUE";
attribute EQUIVALENT_REGISTER_REMOVAL of h3 : signal is "TRUE";

attribute SHREG_EXTRACT of a1 : signal is "NO";
attribute SHREG_EXTRACT of a2 : signal is "NO";
attribute SHREG_EXTRACT of a3 : signal is "NO";
attribute SHREG_EXTRACT of c1 : signal is "NO";
attribute SHREG_EXTRACT of c2 : signal is "NO";
attribute SHREG_EXTRACT of c3 : signal is "NO";
attribute SHREG_EXTRACT of d1 : signal is "NO";
attribute SHREG_EXTRACT of d2 : signal is "NO";
attribute SHREG_EXTRACT of d3 : signal is "NO";
attribute SHREG_EXTRACT of e1 : signal is "NO";
attribute SHREG_EXTRACT of e2 : signal is "NO";
attribute SHREG_EXTRACT of e3 : signal is "NO";
attribute SHREG_EXTRACT of f1 : signal is "NO";
attribute SHREG_EXTRACT of f2 : signal is "NO";
attribute SHREG_EXTRACT of f3 : signal is "NO";
attribute SHREG_EXTRACT of g1 : signal is "NO";
attribute SHREG_EXTRACT of g2 : signal is "NO";
attribute SHREG_EXTRACT of g3 : signal is "NO";
attribute SHREG_EXTRACT of h1 : signal is "NO";
attribute SHREG_EXTRACT of h2 : signal is "NO";
attribute SHREG_EXTRACT of h3 : signal is "NO";

attribute IOB of a1FF : label is "FALSE";
attribute RLOC of a1FF : label is "X1Y1";

attribute IOB of b1FF : label is "FALSE";
attribute RLOC of b1FF : label is "X1Y1";

attribute IOB of c1FF : label is "FALSE";
attribute RLOC of c1FF : label is "X1Y0";

attribute IOB of d1FF : label is "FALSE";
attribute RLOC of d1FF : label is "X1Y0";

attribute IOB of e1FF : label is "FALSE";
attribute RLOC of e1FF : label is "X0Y1";

attribute IOB of f1FF : label is "FALSE";
attribute RLOC of f1FF : label is "X0Y1";

attribute IOB of g1FF : label is "FALSE";
attribute RLOC of g1FF : label is "X0Y0";

attribute IOB of h1FF : label is "FALSE";
attribute RLOC of h1FF : label is "X0Y0";

attribute KEEP of period : signal is "TRUE";

begin

    clk_270<= not clk90;
    clk_180<= not clk0;
    --
    -- The IBUFDS_DIFF_OUT primitive provides both true and complementary outputs
    -- of an LVDS input pair.
    --
 
    --
    -- Data capture flip flops
    --
    -- These FFs sample the data and transfer all samples into a common clock 
    -- domain -- the rising edge of the clk0 phase.
    --
    -- All FFs are instantiated as FF primitives so that they can be easily RLOCed
    -- relative to each other to keep routing delay and skew to a minimum.
    --

    --
    -- These 3 FFs provide the 0 degree sample point.
    --
    a1FF : FDCPE
    port map (
        
        Q          => a1,
        C          => clk0,
        CE         => '1',
        CLR        => '0',
        D          => sdat_0_dly,
        PRE        => '0');

    a2FF : FDCPE
    port map (    
        Q          => a2,
        C          => clk0,
        CE         => '1',
        CLR        => '0',
        D          => a1,
        PRE        => '0');

    a3FF : FDCPE
    port map (
        Q          => a3,
        C          => clk0,
        CE         => '1',
        CLR        => '0',
        D          => a2,
        PRE        => '0');

    -- 
    -- These 3 FFs provide the 45 degree sample point.
    --
    b1FF : FDCPE 
    port map (
        Q          => b1,
        C          => clk0,
        CE         => '1',
        CLR        => '0',
        D          => sdatb_45_dly,
        PRE        => '0');
        
    b2FF : FDCPE
    port map (
        Q          => b2,
        C          => clk0,
        CE         => '1',
        CLR        => '0',
        D          => b1,
        PRE        => '0');

    b3FF : FDCPE
    port map (
        Q          => b3,
        C          => clk0,
        CE         => '1',
        CLR        => '0',
        D          => b2,
        PRE        => '0');

    --
    -- These 3 FFs provide the 90 degree sample point.
    --
    c1FF : FDCPE
    port map (
        Q          => c1,
        C          => clk90,
        CE         => '1',
        CLR        => '0',
        D          => sdat_0_dly,
        PRE        => '0');

    c2FF : FDCPE
    port map (    
        Q          => c2,
        C          => clk0,
        CE         => '1',
        CLR        => '0',
        D          => c1,
        PRE        => '0');

    c3FF : FDCPE 
    port map (
        Q          => c3,
        C          => clk0,
        CE         => '1',
        CLR        => '0',
        D          => c2,
        PRE        => '0');

    --
    -- These 3 FFs provide the 135 degree sample point.
    --
    d1FF : FDCPE
    port map (
        Q          => d1,
        C          => clk90,
        CE         => '1',
        CLR        => '0',
        D          => sdatb_45_dly,
        PRE        => '0');
        
    d2FF : FDCPE
    port map (
        Q          => d2,
        C          => clk0,
        CE         => '1',
        CLR        => '0',
        D          => d1,
        PRE        => '0');

    d3FF: FDCPE
    port map (
        Q          => d3,
        C          => clk0,
        CE         => '1',
        CLR        => '0',
        D          => d2,
        PRE        => '0');

    --
    -- These 3 FFs provide the 180 degree sample point.
    --
    e1FF : FDCPE
    port map (
        Q          => e1,
        C          => clk_180,
        CE         => '1',
        CLR        => '0',
        D          => sdat_0_dly,
        PRE        => '0');
        
    e2FF : FDCPE
    port map (
        Q          => e2,
        C          => clk_180,
        CE         => '1',
        CLR        => '0',
        D          => e1,
        PRE        => '0');

    e3FF : FDCPE
    port map (
        Q          => e3,
        C          => clk0,
        CE         => '1',
        CLR        => '0',
        D          => e2,
        PRE        => '0');

    --
    -- These 3 FFs provide the 225 degree sample point.
    --
    f1FF : FDCPE
    port map (
        Q          => f1,
        C          => clk_180,
        CE         => '1',
        CLR        => '0',
        D          => sdatb_45_dly,
        PRE        => '0');
        
    f2FF : FDCPE
    port map (
        Q          => f2,
        C          =>clk_180,
        CE         => '1',
        CLR        => '0',
        D          => f1,
        PRE        => '0');

    f3FF : FDCPE
    port map (
        Q          => f3,
        C          => clk0,
        CE         => '1',
        CLR        => '0',
        D          => f2,
        PRE        => '0');

    --
    -- These 3 FFs provide the 270 degree sample point.
    --
    g1FF : FDCPE
    port map (
        Q          => g1,
        C          => clk_270,
        CE         => '1',
        CLR        => '0',
        D          => sdat_0_dly,
        PRE        => '0');
        
    g2FF : FDCPE
    port map (
        Q          => g2,
        C          => clk_180,
        CE         => '1',
        CLR        => '0',
        D          => g1,
        PRE        => '0');

    g3FF : FDCPE
    port map (
        Q          => g3,
        C          => clk0,
        CE         => '1',
        CLR        => '0',
        D          => g2,
        PRE        => '0');

    -- 
    -- These 3 FFs provide the 315 degree sample point.
    --
    h1FF : FDCPE
    port map (
        Q          => h1,
        C          =>  clk_270,
        CE         => '1',
        CLR        => '0',
        D          => sdatb_45_dly,
        PRE        => '0');
        
    h2FF : FDCPE
    port map (
        Q          => h2,
        C          => clk_180,
        CE         => '1',
        CLR        => '0',
        D          => h1,
        PRE        => '0');

    h3FF : FDCPE
    port map (
        Q          => h3,
        C          => clk0,
        CE         => '1',
        CLR        => '0',
        D          => h2,
        PRE        => '0');

    -- 
    -- Input stage vector assignment. All samples created from the 45 degree data 
    -- must be inverted to compensate for the fact that the 45 degree data is 
    -- inverted.
    --
    instage_dout <= (not h3 & g3 &  not f3 & e3 & not d3 & c3 & not b3 & a3);
                                                                                                                                            
    --
    -- 8-bit to 20-bit conversion
    --
    -- This logic takes the 8 samples produced by the input stage every rising edge
    -- of clk0 and saves up 5 consecutive sets of these samples to create two
    -- 20-bit sample output vectors.
    --
    process(clk0)
    begin
        if rising_edge(clk0) then
            period <= (period(3 downto 0) & period(4));
        end if;
    end process;

    process(clk0)
    begin
        if rising_edge(clk0) then
            if period(0) = '1' or period(3) = '1' then
                samples_0 <= instage_dout;
            end if;
        end if;
    end process;
        
    process(clk0)
    begin
        if rising_edge(clk0) then
            if period(1) = '1' or period(4) = '1' then
                samples_1 <= instage_dout;
            end if;
        end if;
    end process;

    process(clk0)
    begin
        if rising_edge(clk0) then
            if period(2) = '1' then
            samples_2 <= instage_dout;
            end if;
        end if;
    end process;

    process(clk0)
    begin
        if rising_edge(clk0) then
            if period(3) = '1' then
                dout <= (samples_2(3 downto 0) & samples_1 & samples_0);
            elsif period(0) = '1' then
                dout <= (samples_1 & samples_0 & samples_2(7 downto 4));
            end if;
        end if;
    end process;
                       
    --
    -- To provide the maximum amount of setup time into the DRU, the dout_rdy signal
    -- is asserted during the clock cycle just before dout is updated. Thus, the
    -- DRU takes the last data on the same clock edge on which dout is updated with
    -- new data.
    --
    process(clk0)
    begin
        if rising_edge(clk0) then
            dout_rdy <= period(4) or period(2);
        end if;
    end process;
                                                
end synth;
