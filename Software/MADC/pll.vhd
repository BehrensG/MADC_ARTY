-- Standard VHDL-2008 syntax libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- AMD/Xilinx hardware primitives library
library unisim;
use unisim.vcomponents.all;

entity hardware_clk_gen_1mhz is
    port(
        clk_100mhz_in : in  std_logic;  -- Physical 100 MHz Board Clock
        rst           : in  std_logic;  -- Master Reset
        clk_1mhz_out  : out std_logic;  -- Low-skew, true hardware 1 MHz clock
        pll_locked    : out std_logic   -- Status: High when clock is stable
    );
end entity hardware_clk_gen_1mhz;

architecture hardware_clk_gen_1mhz_arch of hardware_clk_gen_1mhz is

    -- VHDL-2008 allows matching type initializations easily
    signal clk_fb        : std_logic;
    signal clk_10mhz_raw : std_logic;
    signal clk_10mhz_buf : std_logic;
    signal ce_1mhz       : std_logic := '0';

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
            O => clk_10mhz_buf
        );

    ---------------------------------------------------------------------------
    -- STAGE 2: Down-convert 10 MHz to 1 MHz using a Clock-Gated Tree
    ---------------------------------------------------------------------------
    -- Synchronous clock enable pulse generator running inside the 10 MHz domain
    process(clk_10mhz_buf, rst)

        variable ce_counter : integer range 0 to 9 := 0;
    begin
        if rst = '1' then
            ce_counter := 0;
            ce_1mhz    <= '0';
        elsif rising_edge(clk_10mhz_buf) then
            if ce_counter = 9 then
                ce_counter := 0;
                ce_1mhz    <= '1';      -- High for exactly 1 out of every 10 cycles
            else
                ce_counter := ce_counter + 1;
                ce_1mhz    <= '0';
            end if;
        end if;
    end process;

    -- Glitchless Global Clock Buffer with integrated Clock Enable.
    -- Passes the targeted 10 MHz clock edge through only when ce_1mhz is active.
    bufgce_1mhz : BUFGCE
        port map(
            I  => clk_10mhz_buf,
            CE => ce_1mhz,
            O  => clk_1mhz_out
        );

end architecture hardware_clk_gen_1mhz_arch;
