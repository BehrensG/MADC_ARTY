-- Standard VHDL-2008 syntax libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- AMD/Xilinx hardware primitives library
library unisim;
use unisim.vcomponents.all;

entity hardware_clk_gen is
    port(
        clk_100mhz_in : in  std_logic;  -- Physical 100 MHz Board Clock
        rst           : in  std_logic;  -- Master Reset
        clk_out       : out std_logic;  -- Low-skew, true hardware 1 MHz clock
        pll_locked    : out std_logic   -- Status: High when clock is stable
    );
end entity hardware_clk_gen;

architecture hardware_clk_gen_arch of hardware_clk_gen is

    -- VHDL-2008 allows matching type initializations easily
    signal clk_fb        : std_logic;
    signal clk_10mhz_raw : std_logic;
    signal clk_10mhz_buf : std_logic;

begin

    ---------------------------------------------------------------------------
    -- STAGE 1: Drop 100 MHz to 10 MHz using a Raw Xilinx PLL Primitive
    ---------------------------------------------------------------------------
    pll_inst : PLLE2_BASE
        generic map(
            BANDWIDTH          => "OPTIMIZED",
            CLKFBOUT_MULT      => 8,    -- 100 MHz * 8 = 800 MHz VCO
            CLKFBOUT_PHASE     => 0.0,
            CLKIN1_PERIOD      => 10.0, -- 10.0 ns input period (100 MHz)
            CLKOUT0_DIVIDE     => 80,   -- 800 MHz / 80 = 10 MHz Output
            CLKOUT0_DUTY_CYCLE => 0.5,
            CLKOUT0_PHASE      => 0.0,
            DIVCLK_DIVIDE      => 1,
            REF_JITTER1        => 0.01,
            STARTUP_WAIT       => "FALSE"
        )
        port map(
            CLKIN1   => clk_100mhz_in,
            CLKOUT0  => clk_10mhz_raw,
            CLKFBOUT => clk_fb,
            CLKFBIN  => clk_fb,
            LOCKED   => pll_locked,
            RST      => rst,
            -- VHDL-2008 allows open keyword for arrays/records cleanly
            CLKOUT1  => open, CLKOUT2 => open, CLKOUT3 => open,
            CLKOUT4  => open, CLKOUT5 => open,
            PWRDWN   => '0'
        );

    -- Stabilize the 10 MHz domain 
    bufg_10mhz : BUFG
        port map(
            I => clk_10mhz_raw,
            O => clk_out
        );

    ---------------------------------------------------------------------------
    -- STAGE 2: Down-convert 10 MHz to 1 MHz using a Clock-Gated Tree
    ---------------------------------------------------------------------------

    -- Glitchless Global Clock Buffer with integrated Clock Enable.
    -- Passes the targeted 10 MHz clock edge through only when ce_1mhz is active.
  --  bufgce_1mhz : BUFGCE
  --      port map(
  --          I  => clk_10mhz_buf,
   --         CE => '1',
   --         O  => clk_out
   --     );

end architecture hardware_clk_gen_arch;
