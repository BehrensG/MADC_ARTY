
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
        DATA_SIZE : natural := 32;
        ADDR_SIZE : natural := 4;
        NPLC      : natural := 20000;
        VREF      : natural := 1
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
        madc_busy : out std_logic;
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
    constant NPLC_INDEX       : natural                                  := 1;
    constant COUNT_P_INDEX    : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(2, ADDR_SIZE));
    constant COUNT_N_INDEX    : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(3, ADDR_SIZE));
    constant COUNT_TOTL_INDEX : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(4, ADDR_SIZE));
    constant VREF_INDEX       : natural                                  := 5;
    --constant COUNTER_SIZE : natural                                  := 32;
    constant AD_ON            : std_logic                                := '0';
    constant AD_OFF           : std_logic                                := '1';
    constant MADC_IDLE        : natural range 0 to 2                     := 1;
    constant MADC_RUN         : natural range 0 to 2                     := 2;

    -- AXI 4 Lite axi4l_registers -------------------------------------------------------------  
    signal axi4l_reg_status       : std_logic_vector(DATA_SIZE - 1 downto 0); --  0x1: IDLE, 0x2 : BUSY 
    signal axi4l_reg_p_cnt        : std_logic_vector(DATA_SIZE - 1 downto 0);
    signal axi4l_reg_n_cnt        : std_logic_vector(DATA_SIZE - 1 downto 0);
    signal axi4l_reg_totl_cnt     : std_logic_vector(DATA_SIZE - 1 downto 0);
    signal axi4l_reg_nplc         : std_logic_vector(DATA_SIZE - 1 downto 0);
    signal axi4l_reg_vref         : std_logic_vector(DATA_SIZE - 1 downto 0);
    ---- Internal signals ----------------------------------------------------------n := 32------------
    signal madc_clk               : std_logic;
    signal madc_nplc              : unsigned(DATA_SIZE - 1 downto 0);
    signal madc_p_cnt             : unsigned(DATA_SIZE - 1 downto 0);
    signal madc_n_cnt             : unsigned(DATA_SIZE - 1 downto 0);
    signal cnt, totl_cnt, max_cnt : unsigned(DATA_SIZE - 1 downto 0);
    type   state_t                is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10);
    signal state                  : state_t := S0;
    -- Constants -------------------------------------------------------------------------------

begin

    madc_nplc <= unsigned(axi4l_reg_nplc);
    madc_busy <= '0';

    sw_vrh <= '0' when (axi4l_reg_vref = std_logic_vector(to_unsigned(1,DATA_SIZE))) else '1';

    axi4l_rdata <= axi4l_reg_status when (axi4l_araddr = STATUS_INDEX) else
                   axi4l_reg_nplc when (to_integer(unsigned(axi4l_awaddr)) = NPLC_INDEX) else
                   axi4l_reg_p_cnt when (axi4l_araddr = COUNT_P_INDEX) else
                   axi4l_reg_n_cnt when (axi4l_araddr = COUNT_N_INDEX) else
                   axi4l_reg_totl_cnt when (axi4l_araddr = COUNT_TOTL_INDEX) else
                   axi4l_reg_vref when (to_integer(unsigned(axi4l_awaddr)) = VREF_INDEX) else
                   (others => '0');

    axi4_write : process(all) is
    begin
        if (axi4l_rst_n = '0') then
            axi4l_reg_nplc <= std_logic_vector(to_unsigned(NPLC, DATA_SIZE));
            axi4l_reg_vref <= std_logic_vector(to_unsigned(VREF, DATA_SIZE));
        elsif rising_edge(axi4l_clk) then
            case to_integer(unsigned(axi4l_awaddr)) is
                when NPLC_INDEX =>
                    for i in 0 to 3 loop
                        if (axi4l_wstrb(i)) then
                            axi4l_reg_nplc((i * 8 + 7) downto (i * 8)) <= axi4l_wdata((i * 8 + 7) downto (i * 8));
                        end if;
                    end loop;
                when VREF_INDEX =>
                    for i in 0 to 3 loop
                        if (axi4l_wstrb(i)) then
                            axi4l_reg_vref((i * 8 + 7) downto (i * 8)) <= axi4l_wdata((i * 8 + 7) downto (i * 8));
                        end if;
                    end loop;
                when others => null;
            end case;
        end if;

    end process axi4_write;

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

    madc_proc : process(all) is
        variable T1, T2, T3, T4 : natural range 0 to 1000 := 0;

    begin
        if (axi4l_rst_n = '0') then
            state              <= S0;
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
        elsif (rising_edge(madc_clk)) then
            case state is
                when S0 =>
                    ad_id      <= AD_ON;
                    ad_iin     <= AD_OFF;
                    ad_irn     <= AD_OFF;
                    ad_irp     <= AD_OFF;
                    state      <= S3;
                    T1         := 200 - 1;
                    T2         := 100 - 1;
                    T3         := 100 - 1;
                    T4         := 100 - 1;
                    max_cnt    <= unsigned(axi4l_reg_nplc);
                    madc_n_cnt <= (others => '0');
                    madc_p_cnt <= (others => '0');
                    totl_cnt   <= (others => '0');

                when S3 =>
                    axi4l_reg_status <= std_logic_vector(to_unsigned(MADC_RUN, DATA_SIZE));
                    ad_irp           <= AD_OFF;
                    ad_irn           <= AD_OFF;
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
                        state <= S4;
                    end if;
                when S4 =>
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
                        state <= S5;
                    end if;
                when S5 =>
                    totl_cnt <= totl_cnt + 1;
                    if (ad_cmp = '0') and (totl_cnt < max_cnt) then
                        ad_irn <= AD_ON;
                        ad_irp <= AD_OFF;
                        state  <= S7;
                    elsif (ad_cmp = '1') and (totl_cnt < max_cnt) then
                        ad_irn <= AD_OFF;
                        ad_irp <= AD_ON;
                        state  <= S6;
                    elsif (totl_cnt = max_cnt) then
                        state <= S8;
                    else
                        state <= S8;
                    end if;
                when S6 =>
                    if (cnt < T1) then
                        cnt        <= cnt + 1;
                        totl_cnt   <= totl_cnt + 1;
                        madc_p_cnt <= madc_p_cnt + 1;
                    else
                        cnt   <= (others => '0');
                        state <= S5;
                    end if;
                when S7 =>
                    if (cnt < T1) then
                        cnt        <= cnt + 1;
                        totl_cnt   <= totl_cnt + 1;
                        madc_n_cnt <= madc_n_cnt + 1;
                    else
                        cnt   <= (others => '0');
                        state <= S5;
                    end if;
                when S8 =>
                    axi4l_reg_status <= std_logic_vector(to_unsigned(MADC_IDLE, DATA_SIZE));
                    ad_irn           <= AD_OFF;
                    ad_irp           <= AD_OFF;
                    ad_id            <= AD_OFF;
                    ad_iin           <= AD_OFF;
                    if (cnt < T3) then
                        cnt <= cnt + 1;
                    else
                        cnt   <= (others => '0');
                        state <= S9;

                    end if;
                when S9 =>
                    axi4l_reg_n_cnt    <= std_logic_vector(madc_n_cnt);
                    axi4l_reg_p_cnt    <= std_logic_vector(madc_p_cnt);
                    axi4l_reg_totl_cnt <= std_logic_vector(totl_cnt);
                    ad_iin             <= AD_ON;
                    if (cnt < T4) then
                        cnt <= cnt + 1;
                    else
                        cnt   <= (others => '0');
                        state <= S0;
                    end if;

                /*
                when S9 =>
                    axi4l_reg_status <= std_logic_vector(to_unsigned(0, DATA_SIZE));
                    ad_irn           <= AD_OFF;
                    ad_irp           <= AD_ON;
                    ad_iin           <= AD_OFF;
                    if (cnt < T3) then
                        cnt <= cnt + 1;
                        if (ad_cmp = '0') then
                            state <= S10;
                        else
                            state <= S9;
                        end if;
                    else
                        state <= S17;
                    end if;
                when S10 =>
                    ad_irn <= AD_ON;
                    ad_irp <= AD_ON;
                    state  <= S11;
                when S11 =>
                    ad_irp <= AD_OFF;
                    if (cnt < T3) then
                        cnt <= cnt + 1;
                        if (ad_cmp = '1') then
                            state <= S12;
                        else
                            state <= S11;
                        end if;
                    else
                        state <= S17;
                    end if;
                when S12 =>
                    ad_irn <= AD_OFF;
                    state  <= S13;
                when S13 =>
                    ad_irp <= AD_ON;
                    if (cnt < T3) then
                        cnt <= cnt + 1;
                        if (ad_cmp = '0') then
                            state <= S14;
                        else
                            state <= S13;
                        end if;
                    else
                        state <= S17;
                    end if;
                when S14 =>
                    ad_irp <= AD_OFF;
                    if (cnt < T3) then
                        cnt <= cnt + 1;
                    else
                        state <= S15;
                    end if;
                when S17 =>
                    -- Error handling 
                    state <= S18;
                when S18 =>
                    -- DONE
                    state <= S0;
                    */
                when others => null;
            end case;

        end if;
    end process madc_proc;

end architecture madc_ctr_arch;

