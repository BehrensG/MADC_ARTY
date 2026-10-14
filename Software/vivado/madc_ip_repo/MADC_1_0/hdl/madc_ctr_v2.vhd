library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity madc_ctr_v2 is
    port(
        clk       : in  std_logic;
        comp_ext  : in  std_logic;
        con_start : in  std_logic;
        si_dat    : in  std_logic;
        sw_in     : out std_logic;
        sw_up     : out std_logic;
        sw_dn     : out std_logic;
        sw_rst    : out std_logic;
        sw_vref   : out std_logic;
        sw_vref_n : out std_logic;
        so_dat    : out std_logic;
        vref_su   : out std_logic

    );
end entity madc_ctr_v2;

architecture madc_ctr_v2_arch of madc_ctr_v2 is

    -- Component Declarations
    component pll is
        port(
            clock_in  : in  std_logic;
            clock_out : out std_logic
        );
    end component;

    component uart_tx is
        port(
            uart_tx_bclk  : in  std_logic;
            uart_tx_start : in  std_logic;
            uart_tx_data  : in  std_logic_vector(7 downto 0);
            uart_tx_pin   : out std_logic;
            uart_tx_busy  : out std_logic
        );
    end component;

    component uart_rx is
        port(
            uart_rx_bclk    : in  std_logic;
            uart_rx_pin_raw : in  std_logic;
            uart_rx_data    : out std_logic_vector(7 downto 0);
            uart_rx_rdy     : out std_logic;
            uart_rx_clr     : in  std_logic;
            uart_rx_dbg     : out std_logic
        );
    end component;

    -- Signal Declarations
    signal cnt          : unsigned(5 downto 0)  := (others => '0');
    signal uart_divider : unsigned(5 downto 0)  := (others => '0');
    signal cnt_stat     : unsigned(14 downto 0) := (others => '0');
    signal cnt_runup    : unsigned(14 downto 0) := (others => '0');
    type state_t is (S0,S1,S2,S3,S19);
    signal state        : state_t := S19;

    signal sw_up_r   : std_logic := '0';
    signal sw_dn_r   : std_logic := '0';
    signal sw_rst_r  : std_logic := '0';
    signal sw_vref_r : std_logic := '0';
    signal sw_in_r   : std_logic := '0';

    signal runup_state_r  : std_logic := '0';
    signal timer_gate_r   : std_logic := '0';
    signal timer_enable_r : std_logic := '0';

    signal uart_tx_start    : std_logic := '0';
    signal uart_frame_start : std_logic := '0';
    signal uart_rx_rst      : std_logic := '0';

    signal uart_frame_state : integer range 0 to 7 := 0;
    signal uart_frame_r     : std_logic            := '0';
    signal uart_frame_cnt   : unsigned(3 downto 0) := (others => '0');

    signal uart_busy         : std_logic;
    signal uart_tx_bit_clock : std_logic;
    signal uart_rx_bit_clock : std_logic;
    signal uart_rx_ready     : std_logic;
    signal mclk              : std_logic;

    -- Internal mirrors for LEDs
    signal w_green : std_logic := '0';
    signal w_red   : std_logic := '0';

    signal deb              : std_logic := '0';
    signal comp_fast        : std_logic := '0';
    signal comp_fast_sync   : std_logic := '0';
    signal comp_slow        : std_logic := '0';
    signal comp_slow_sync   : std_logic := '0';
    signal cstart_slow      : std_logic := '0';
    signal cstart_slow_sync : std_logic := '0';

    signal runup_cnt    : unsigned(14 downto 0) := (others => '0');
    signal runup_set    : unsigned(14 downto 0) := to_unsigned(1999, 15);
    signal rundown_cnt  : unsigned(15 downto 0) := (others => '0');
    signal rundown_sign : std_logic             := '0';

    signal frame_content    : std_logic_vector(47 downto 0) := (others => '0');
    signal result_content   : std_logic_vector(47 downto 0) := (others => '0');
    signal uart_tx_register : std_logic_vector(7 downto 0)  := (others => '0');
    signal uart_rx_state    : integer range 0 to 7          := 0;
    signal uart_rx_register : std_logic_vector(7 downto 0);

begin

    -- Static Assignments
    sw_up             <= sw_up_r;
    sw_dn             <= sw_dn_r;
    sw_rst            <= not sw_rst_r;
    sw_vref           <= not sw_vref_r;
    sw_vref_n         <= sw_vref_r;
    sw_in             <= not sw_in_r;
    vref_su           <= '1';

    -- PLL Instance
    pll_inst : pll
        port map(
            clock_in  => clk,
            clock_out => mclk
        );

    -- Base Counter Process
    process(mclk)
    begin
        if rising_edge(mclk) then
            if (cnt >= 39) then
                cnt <= (others => '0');
            else
                cnt <= cnt + 1;
            end if;
        end if;
    end process;

    -- Core State Machine and UART RX Sync Process
    process(cnt(5))
    begin
        if rising_edge(cnt(5)) then
            uart_divider     <= uart_divider + 1;
            comp_slow_sync   <= not comp_ext;
            comp_slow        <= comp_slow_sync;
            cstart_slow_sync <= con_start;
            cstart_slow      <= cstart_slow_sync;

            -- UART RX Parsing Logic
            if (uart_rx_state = 0) then
                if (uart_rx_ready = '1') then
                    w_red <= not w_red;

                    if (uart_rx_register(7 downto 4) = "0101") then
                        w_red <= not w_red;

                        case uart_rx_register(3 downto 0) is
                            when "0000" => runup_set <= to_unsigned(199, 15);
                            when "0001" => runup_set <= to_unsigned(399, 15);
                            when "0010" => runup_set <= to_unsigned(599, 15);
                            when "0011" => runup_set <= to_unsigned(799, 15);
                            when "0100" => runup_set <= to_unsigned(999, 15);
                            when "0101" => runup_set <= to_unsigned(1199, 15);
                            when "0110" => runup_set <= to_unsigned(1399, 15);
                            when "0111" => runup_set <= to_unsigned(1599, 15);
                            when "1000" => runup_set <= to_unsigned(1799, 15);
                            when "1001" => runup_set <= to_unsigned(1999, 15);
                            when others => runup_set <= to_unsigned(1999, 15);
                        end case;
                    end if;
                    uart_rx_state <= 1;
                end if;
            elsif (uart_rx_state = 1) then
                uart_rx_rst   <= '1';
                uart_rx_state <= 2;
            elsif (uart_rx_state = 2) then
                if (uart_rx_ready = '0') then
                    uart_rx_rst   <= '0';
                    uart_rx_state <= 0;
                end if;
            end if;

            -- State Machine Overrides
            if (cstart_slow = '0') then
                state <= S19;
            end if;

            -- Main Case State Structure
            case state is
                when S0 =>
                    if (cnt_stat = 0) then
                        sw_rst_r         <= '1';
                        sw_in_r          <= '0';
                        sw_vref_r        <= '1';
                        sw_up_r          <= '0';
                        sw_dn_r          <= '0';
                        uart_frame_start <= '1';
                    end if;

                    if (cnt_stat >= 3999) then
                        cnt_stat <= (others => '0');
                        state    <= S19;
                    else
                        cnt_stat <= cnt_stat + 1;
                    end if;

                when S19 =>
                    cnt_stat      <= (others => '0');
                    cnt_runup     <= (others => '0');
                    runup_state_r <= '0';
                    runup_cnt     <= (others => '0');
                    sw_rst_r      <= '1';
                    sw_in_r       <= '0';
                    sw_vref_r     <= '1';
                    sw_up_r       <= '0';
                    sw_dn_r       <= '0';
                    if (cstart_slow = '1') then
                        state <= S1;
                    end if;

                when S1 =>
                    uart_divider     <= (others => '0');
                    uart_frame_start <= '0';
                    sw_rst_r         <= '0';
                    sw_in_r          <= '1';
                    sw_vref_r        <= '1';

                    if (runup_state_r = '0') then
                        if (cnt_stat >= 90) then
                            sw_up_r <= '1';
                            sw_dn_r <= '0';
                        else
                            sw_up_r <= '0';
                            sw_dn_r <= '1';
                        end if;
                    else
                        if (cnt_stat >= 10) then
                            sw_up_r <= '1';
                            sw_dn_r <= '0';
                        else
                            sw_up_r <= '0';
                            sw_dn_r <= '1';
                        end if;
                    end if;

                    if (cnt_stat >= 99) then
                        cnt_stat  <= (others => '0');
                        cnt_runup <= cnt_runup + 1;
                        if (cnt_runup >= runup_set) then
                            state <= S2;
                        else
                            if (comp_slow = '1') then
                                runup_state_r <= '1';
                                runup_cnt     <= runup_cnt + 1;
                            else
                                runup_state_r <= '0';
                            end if;
                        end if;
                    else
                        cnt_stat <= cnt_stat + 1;
                    end if;
                when S2 =>
                    sw_rst_r  <= '0';
                    sw_in_r   <= '0';
                    sw_vref_r <= '0';
                    sw_up_r   <= '0';
                    sw_dn_r   <= '0';
                    if (cnt_stat >= 19) then
                        cnt_stat <= (others => '0');
                        state    <= S3;
                        if (comp_slow = '1') then
                            runup_state_r <= '1';
                        else
                            runup_state_r <= '0';
                        end if;
                    else
                        cnt_stat <= cnt_stat + 1;
                    end if;
                when S3 =>
                    sw_rst_r       <= '0';
                    sw_in_r        <= '0';
                    sw_vref_r      <= '0';
                    timer_enable_r <= '1';
                    if (runup_state_r = '0') then
                        sw_up_r      <= '0';
                        sw_dn_r      <= '1';
                        rundown_sign <= '0';
                    else
                        sw_up_r      <= '1';
                        sw_dn_r      <= '0';
                        rundown_sign <= '1';
                    end if;
                    if (cnt_stat >= 1199) then
                        cnt_stat                     <= (others => '0');
                        state                        <= S0;
                        result_content(46 downto 32) <= std_logic_vector(runup_cnt);
                        result_content(31)           <= rundown_sign;
                        result_content(30 downto 16) <= std_logic_vector(runup_set);
                        result_content(15 downto 0)  <= std_logic_vector(rundown_cnt);
                    else
                        cnt_stat <= cnt_stat + 1;
                    end if;
                when others =>
                    state <= S0;
            end case;
        end if;
    end process;
    -- High-Speed Signal Fast Sampling Process
    process(mclk)
    begin
        if rising_edge(mclk) then
            comp_fast_sync <= not comp_ext;
            comp_fast      <= comp_fast_sync;
            if (state = S2) then
                rundown_cnt  <= (others => '0');
                timer_gate_r <= '1';
            end if;
            if (state = S3) then
                if (runup_state_r = comp_fast) then
                    if (timer_gate_r = '1') then
                        rundown_cnt <= rundown_cnt + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;
   
end architecture madc_ctr_v2_arch;
