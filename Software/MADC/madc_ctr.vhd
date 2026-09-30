library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

/*
  sw_in, sw_up, sw_dn, sw_rst, sw_vref, sw_vref_n, so_dat, vref_su,
  sw_in - ad_iin
  sw_dn -  ad_irn
  sw_up - ad_irp
  sw_rst - ad_id
  sw_vref - not connected
  sw_vref_n - not connected
  comp_ext - ad_comp

*/

entity madc_ctr is
    generic(
        DATA_SIZE : natural              := 32;
        ADDR_SIZE : natural              := 8;
        PLC       : natural              := 20000;
        VREF      : natural              := 1;
        NVC       : natural range 0 to 1 := 0
    );
    port(
        -- AXI 4 Lite ------------------------------------------------------------
        axi4l_clk    : in  std_logic;
        axi4l_rst_n  : in  std_logic;
        -- Write data
        axi4l_wdata  : in  std_logic_vector(DATA_SIZE - 1 downto 0);
        axi4l_awaddr : in  std_logic_vector(ADDR_SIZE - 1 downto 0);
        axi4l_wstrb  : in  std_logic_vector((DATA_SIZE / 8) - 1 downto 0);
        -- Read data
        axi4l_araddr : in  std_logic_vector(ADDR_SIZE - 1 downto 0);
        axi4l_rdata  : out std_logic_vector(DATA_SIZE - 1 downto 0);
        -- Control
        madc_busy    : out std_logic;
        -- MADC -------------------------------------------------------------------
        ad_iin       : out std_logic;
        ad_irn       : out std_logic;
        ad_irp       : out std_logic;
        sw_vrh       : out std_logic;
        ad_id        : out std_logic;
        ad_cmp       : in  std_logic
    );
end entity madc_ctr;

architecture madc_ctr_arch of madc_ctr is

    -- Constants -------------------------------------------------------------------------------
    constant STATUS_INDEX     : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(0, ADDR_SIZE));
    constant PLC_INDEX        : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(4, ADDR_SIZE));
    constant COUNT_P_INDEX    : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(8, ADDR_SIZE));
    constant COUNT_N_INDEX    : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(12, ADDR_SIZE));
    constant COUNT_TOTL_INDEX : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(16, ADDR_SIZE));
    constant VREF_INDEX       : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(20, ADDR_SIZE));
    constant CALIB_INDEX      : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(24, ADDR_SIZE));
    --constant COUNTER_SIZE : natural                                  := 32;
    constant AD_ON            : std_logic                                := '0';
    constant AD_OFF           : std_logic                                := '1';
    constant MADC_IDLE        : natural range 0 to 2                     := 1;
    constant MADC_RUN         : natural range 0 to 2                     := 2;
    constant INTEGRATE_TIME   : natural                                  := 200;

    -- AXI 4 Lite axi4l_registers -------------------------------------------------------------  
    signal axi4l_reg_status       : std_logic_vector(DATA_SIZE - 1 downto 0); --  0x1: IDLE, 0x2 : BUSY 
    signal axi4l_reg_p_cnt        : std_logic_vector(DATA_SIZE - 1 downto 0);
    signal axi4l_reg_n_cnt        : std_logic_vector(DATA_SIZE - 1 downto 0);
    signal axi4l_reg_totl_cnt     : std_logic_vector(DATA_SIZE - 1 downto 0);
    signal axi4l_reg_nplc         : std_logic_vector(DATA_SIZE - 1 downto 0);
    signal axi4l_reg_vref         : std_logic_vector(DATA_SIZE - 1 downto 0);
    signal axi4l_reg_calib        : std_logic_vector(DATA_SIZE - 1 downto 0);
    ---- Internal signals ----------------------------------------------------------n := 32------------
    signal madc_clk               : std_logic;
    signal madc_p_cnt             : unsigned(DATA_SIZE - 1 downto 0);
    signal madc_n_cnt             : unsigned(DATA_SIZE - 1 downto 0);
    signal cnt, totl_cnt, max_cnt : unsigned(DATA_SIZE - 1 downto 0);
    type   state_t                is (INIT, PRE_CHARGE, P_VREF_START, SELECT_VREF, P_VREF, N_VREF, DISCHARGE, UPDATE_REGS);
    signal state                  : state_t   := INIT;
    signal pll_locked             : std_logic := '0';
    signal rst                    : std_logic;
    signal calib                  : std_logic;
    -- Constants -------------------------------------------------------------------------------

    -- Component -------------------------------------------------------------------------------

    component hardware_clk_gen_1mhz
        port(
            clk_100mhz_in : in  std_logic;
            rst           : in  std_logic;
            clk_1mhz_out  : out std_logic;
            pll_locked    : out std_logic
        );
    end component hardware_clk_gen_1mhz;

begin

    -- Xilinx PLL is in a generate block because the nvc simulation is very slow with xilinx specific code

    generate_madc_clock : if NVC = 0 generate
    begin

        hardware_clk_gen_1mhz_inst : component hardware_clk_gen_1mhz
            port map(
                clk_100mhz_in => axi4l_clk,
                rst           => rst,
                clk_1mhz_out  => madc_clk,
                pll_locked    => pll_locked
            );

    elsif NVC = 1 generate
    begin

        madc_clk_proc : process(all) is
            constant COUNT_MAX_LIMIT : natural range 0 to 100 := 50;
            variable count           : unsigned(5 downto 0);
        begin
            if (axi4l_rst_n = '0') then
                count    := (others => '0');
                madc_clk <= '0';
            elsif (rising_edge(axi4l_clk)) then
                if (count = COUNT_MAX_LIMIT - 1) then
                    count    := (others => '0');
                    madc_clk <= not madc_clk;
                else
                    count := count + 1;
                end if;
            end if;
        end process madc_clk_proc;

        pll_locked <= '1';

    end generate generate_madc_clock;

    rst <= not axi4l_rst_n;

    -- sw_vrh <= '0' when (axi4l_reg_vref = std_logic_vector(to_unsigned(1, DATA_SIZE))) else '1';
    sw_vrh <= '1';

    axi4l_rdata <= axi4l_reg_status when (axi4l_araddr = STATUS_INDEX) else
                   axi4l_reg_nplc when (axi4l_awaddr = PLC_INDEX) else
                   axi4l_reg_p_cnt when (axi4l_araddr = COUNT_P_INDEX) else
                   axi4l_reg_n_cnt when (axi4l_araddr = COUNT_N_INDEX) else
                   axi4l_reg_totl_cnt when (axi4l_araddr = COUNT_TOTL_INDEX) else
                   axi4l_reg_vref when (axi4l_awaddr = VREF_INDEX) else
                   axi4l_reg_calib when (axi4l_awaddr = CALIB_INDEX) else
                   (others => '0');

    axi4_write : process(all) is
    begin
        if (axi4l_rst_n = '0') then
            axi4l_reg_nplc  <= std_logic_vector(to_unsigned(PLC, DATA_SIZE));
            axi4l_reg_vref  <= std_logic_vector(to_unsigned(VREF, DATA_SIZE));
            axi4l_reg_calib <= std_logic_vector(to_unsigned(0, DATA_SIZE));
        elsif rising_edge(axi4l_clk) then
            if axi4l_awaddr = PLC_INDEX then
                for i in 0 to 3 loop
                    if (axi4l_wstrb(i)) then
                        axi4l_reg_nplc((i * 8 + 7) downto (i * 8)) <= axi4l_wdata((i * 8 + 7) downto (i * 8));
                    end if;
                end loop;
            elsif axi4l_awaddr = VREF_INDEX then
                for i in 0 to 3 loop
                    if (axi4l_wstrb(i)) then
                        axi4l_reg_vref((i * 8 + 7) downto (i * 8)) <= axi4l_wdata((i * 8 + 7) downto (i * 8));
                    end if;
                end loop;
            elsif axi4l_awaddr = CALIB_INDEX then
                for i in 0 to 3 loop
                    if (axi4l_wstrb(i)) then
                        axi4l_reg_calib((i * 8 + 7) downto (i * 8)) <= axi4l_wdata((i * 8 + 7) downto (i * 8));
                    end if;
                end loop;
            end if;
        end if;
    end process axi4_write;

    madc_proc : process(all) is
        variable T1, T2, T3, T4 : natural range 0 to 1000 := 0;

    begin
        if (axi4l_rst_n = '0') then
            state              <= INIT;
            madc_n_cnt         <= (others => '0');
            madc_p_cnt         <= (others => '0');
            madc_n_cnt         <= (others => '0');
            axi4l_reg_n_cnt    <= (others => '0');
            axi4l_reg_p_cnt    <= (others => '0');
            axi4l_reg_totl_cnt <= (others => '0');
            ad_id              <= AD_OFF;
            ad_iin             <= AD_OFF;
            ad_irn             <= AD_OFF;
            ad_irp             <= AD_OFF;
            cnt                <= (others => '0');
            totl_cnt           <= (others => '0');
            max_cnt            <= (others => '0');
            T1                 := 0;
            T2                 := 0;
            T3                 := 0;
            T4                 := 0;
            axi4l_reg_status   <= (others => '0');
            madc_busy          <= '0';
            calib              <= '0';
        elsif (rising_edge(madc_clk)) then
            case state is
                when INIT =>
                    madc_busy  <= '1';
                    ad_id      <= AD_OFF;
                    ad_iin     <= AD_OFF;
                    ad_irn     <= AD_OFF;
                    ad_irp     <= AD_OFF;
                    T1         := INTEGRATE_TIME - 1;
                    T2         := INTEGRATE_TIME / 2 - 1;
                    T3         := INTEGRATE_TIME / 2 - 1;
                    T4         := INTEGRATE_TIME / 2 - 1;
                    max_cnt    <= unsigned(axi4l_reg_nplc);
                    madc_n_cnt <= (others => '0');
                    madc_p_cnt <= (others => '0');
                    totl_cnt   <= (others => '0');
                    calib      <= axi4l_reg_calib(0);
                    if pll_locked then
                        state <= PRE_CHARGE;
                    else
                        state <= INIT;
                    end if;
                when PRE_CHARGE =>
                    axi4l_reg_status <= std_logic_vector(to_unsigned(MADC_RUN, DATA_SIZE));
                    ad_irp           <= AD_OFF;
                    ad_irn           <= AD_OFF;
                    ad_iin           <= AD_OFF when (calib) else AD_ON;
                    if (cnt < T2) then
                        cnt      <= cnt + 1;
                        totl_cnt <= totl_cnt + 1;
                        if ad_cmp = '0' then
                            madc_n_cnt <= madc_n_cnt + 1;
                        else
                            madc_p_cnt <= madc_p_cnt + 1;
                        end if;
                    else
                        cnt   <= (others => '0');
                        state <= P_VREF_START;
                    end if;
                when P_VREF_START =>
                    ad_irn <= AD_OFF;
                    ad_irp <= AD_ON;
                    if (cnt < T1 - T2) then
                        cnt      <= cnt + 1;
                        totl_cnt <= totl_cnt + 1;
                        if ad_cmp = '0' then
                            madc_n_cnt <= madc_n_cnt + 1;
                        else
                            madc_p_cnt <= madc_p_cnt + 1;
                        end if;

                    else
                        cnt   <= (others => '0');
                        state <= SELECT_VREF;
                    end if;
                when SELECT_VREF =>
                    totl_cnt <= totl_cnt + 1;
                    if (ad_cmp = '0') and (totl_cnt < max_cnt) then
                        ad_irn <= AD_ON;
                        ad_irp <= AD_OFF;
                        state  <= N_VREF;
                    elsif (ad_cmp = '1') and (totl_cnt < max_cnt) then
                        ad_irn <= AD_OFF;
                        ad_irp <= AD_ON;
                        state  <= P_VREF;
                    elsif ((totl_cnt = max_cnt) or (totl_cnt > max_cnt)) then
                        state <= DISCHARGE;
                    else
                        state <= DISCHARGE;
                    end if;
                when P_VREF =>
                    if (cnt < T1) then
                        cnt        <= cnt + 1;
                        totl_cnt   <= totl_cnt + 1;
                        madc_p_cnt <= madc_p_cnt + 1;
                    else
                        cnt   <= (others => '0');
                        state <= SELECT_VREF;
                    end if;
                when N_VREF =>
                    if (cnt < T1) then
                        cnt        <= cnt + 1;
                        totl_cnt   <= totl_cnt + 1;
                        madc_n_cnt <= madc_n_cnt + 1;
                    else
                        cnt   <= (others => '0');
                        state <= SELECT_VREF;
                    end if;
                when DISCHARGE =>
                    ad_irn <= AD_OFF;
                    ad_irp <= AD_OFF;
                    ad_id  <= AD_ON;
                    ad_iin <= AD_OFF;
                    if (cnt < T3) then
                        cnt   <= cnt + 1;
                        state <= DISCHARGE;
                    else
                        cnt   <= (others => '0');
                        state <= UPDATE_REGS;
                    end if;
                when UPDATE_REGS =>
                    axi4l_reg_status   <= std_logic_vector(to_unsigned(MADC_IDLE, DATA_SIZE));
                    axi4l_reg_n_cnt    <= std_logic_vector(madc_n_cnt);
                    axi4l_reg_p_cnt    <= std_logic_vector(madc_p_cnt);
                    axi4l_reg_totl_cnt <= std_logic_vector(totl_cnt);
                    madc_busy          <= '0';
                    if (cnt < T4) then
                        cnt   <= cnt + 1;
                        state <= UPDATE_REGS;
                    else
                        cnt   <= (others => '0');
                        state <= INIT;
                    end if;
            end case;

        end if;
    end process madc_proc;

end architecture madc_ctr_arch;

