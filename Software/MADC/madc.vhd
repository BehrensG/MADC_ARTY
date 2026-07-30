
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

entity madc is
    generic(
        DATA_SIZE : natural := 32;
        ADRR_SIZE : natural := 8
    );
    port(
        -- AXI 4 Lite ------------------------------------------------------------
        axi4l_clk    : in  std_logic;
        axi4l_rst_n  : in  std_logic;
        -- Write data
        axi4l_wdata  : in  std_logic_vector(DATA_SIZE - 1 downto 0);
        axi4l_awaddr : in  std_logic_vector(ADRR_SIZE - 1 downto 0);
        axi4l_wstrb  : in  std_logic_vector((DATA_SIZE / 8) - 1 downto 0);
        -- Read data
        axi4l_araddr : in  std_logic_vector(ADRR_SIZE - 1 downto 0);
        axi4l_rdata  : out std_logic_vector(DATA_SIZE - 1 downto 0);
        -- MADC -------------------------------------------------------------------
        ad_iin       : out std_logic;
        ad_irn       : out std_logic;
        ad_irp       : out std_logic;
        sw_vrh       : out std_logic;
        ad_id        : out std_logic;
        ad_cmp       : in  std_logic
    );
end entity madc;

architecture madc_arch of madc is

    -- Constants -------------------------------------------------------------------------------
    constant STATUS_INDEX : std_logic_vector(ADRR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(0, ADRR_SIZE));
    constant NPLC_INDEX   : natural                                  := 1;
    constant RESULT_HI    : std_logic_vector(ADRR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(2, ADRR_SIZE));
    constant RESULT_LO    : std_logic_vector(ADRR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(3, ADRR_SIZE));
    constant COUNTER_SIZE : natural                                  := 16;

    -- AXI 4 Lite axi4l_registers -------------------------------------------------------------  
    signal axi4l_reg_status        : std_logic_vector(DATA_SIZE - 1 downto 0); --  0x1: IDLE, 0x2 : BUSY 
    signal axi4l_reg_result_hi     : std_logic_vector(DATA_SIZE - 1 downto 0);
    signal axi4l_reg_result_lo     : std_logic_vector(DATA_SIZE - 1 downto 0);
    signal axi4l_reg_nplc          : std_logic_vector(DATA_SIZE - 1 downto 0);
    ---- Internal signals ----------------------------------------------------------n := 32------------
    signal madc_clk                : std_logic;
    signal madc_result             : std_logic_vector(48 downto 0);
    signal madc_nplc               : unsigned(DATA_SIZE - 1 downto 0);
    signal ref_p_count             : unsigned(COUNTER_SIZE - 1 downto 0);
    signal ref_n_count             : unsigned(COUNTER_SIZE - 1 downto 0);
    signal CNT, TOTL_CNT, TOTL_MAX : unsigned(COUNTER_SIZE - 1 downto 0);
    type   state_t                 is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15, S16, S17, S18);
    signal state                   : state_t := S0;
    -- Constants -------------------------------------------------------------------------------

    --

begin

    madc_nplc <= unsigned(axi4l_reg_nplc);

    axi4l_rdata <= axi4l_reg_status when (axi4l_araddr = STATUS_INDEX) else
                   axi4l_reg_nplc when (to_integer(unsigned(axi4l_awaddr)) = NPLC_INDEX) else
                   axi4l_reg_result_hi when (axi4l_araddr = RESULT_HI) else
                   axi4l_reg_result_lo when (axi4l_araddr = RESULT_LO) else
                   (others => '0');

    axi4_write : process(all) is
    begin
        if (axi4l_rst_n = '0') then
            axi4l_reg_nplc <= (others => '0');
        elsif rising_edge(axi4l_clk) then
            case to_integer(unsigned(axi4l_awaddr)) is
                when NPLC_INDEX =>
                    for i in 0 to 3 loop
                        if (axi4l_wstrb(i)) then
                            axi4l_reg_nplc((i * 8 + 7) downto (i * 8)) <= axi4l_wdata((i * 8 + 7) downto (i * 8));
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
            state       <= S0;
            ref_n_count <= (others => '0');
            ref_p_count <= (others => '0');
            ad_id       <= '0';
            ad_iin      <= '1';
            ad_irn      <= '1';
            ad_irp      <= '1';
            CNT         <= (others => '0');
            TOTL_CNT    <= (others => '0');
            TOTL_MAX    <= (others => '0');
            T1          := 0;
            T2          := 0;
        elsif (rising_edge(madc_clk)) then
            case state is
                when S0 =>
                    ad_id    <= '0';
                    ad_iin   <= '1';
                    ad_irn   <= '1';
                    ad_irp   <= '1';
                    state    <= S2;
                    T1       := 100;
                    T2       := 10;
                    TOTL_MAX <= to_unsigned(2000, COUNTER_SIZE);
                    TOTL_CNT <= (others => '0');
                when S1 => null;
                when S2 =>
                    ad_id  <= '1';
                    ad_iin <= '0';
                    state  <= S3;
                when S3 =>
                    if (CNT < T2 - 1) then
                        CNT      <= CNT + 1;
                        TOTL_CNT <= TOTL_CNT + 1;
                    else
                        CNT   <= (others => '0');
                        state <= S4;
                    end if;
                when S4 =>
                    ad_irn <= '0';
                    ad_irp <= '1';
                    if (CNT < T1 - 1 - T2) then
                        CNT      <= CNT + 1;
                        TOTL_CNT <= TOTL_CNT + 1;
                    else
                        CNT <= (others => '0');
                        if (ad_cmp = '0') then
                            state <= S5;
                        elsif (ad_cmp = '1') then
                            state <= S8;
                        end if;
                    end if;
                when S5 =>
                    ad_irn <= '0';
                    ad_irp <= '1';
                    if (ad_cmp = '0') and (TOTL_CNT < TOTL_MAX - 1) then
                        state <= S7;
                    elsif (ad_cmp = '1') and (TOTL_CNT < TOTL_MAX - 1) then
                        state <= S6;
                    elsif (TOTL_CNT = TOTL_MAX - 1) then
                        state <= S9;
                    else
                        state <= S9;
                    end if;
                when S6 =>
                    if (CNT < T1 - 1) then
                        CNT         <= CNT + 1;
                        TOTL_CNT    <= TOTL_CNT + 1;
                        ref_p_count <= ref_p_count + 1;
                    else
                        CNT <= (others => '0');
                        if (ad_cmp = '1') then
                            state <= S5;
                        elsif (ad_cmp = '0') then
                            state <= S8;
                        end if;
                    end if;
                when S7 =>
                    if (CNT < T1 - 1) then
                        CNT         <= CNT + 1;
                        TOTL_CNT    <= TOTL_CNT + 1;
                        ref_n_count <= ref_n_count + 1;
                    else
                        CNT <= (others => '0');
                        if (ad_cmp = '0') then
                            state <= S5;
                        elsif (ad_cmp = '1') then
                            state <= S8;
                        end if;
                    end if;
                when S8 =>
                    ad_irn <= '1';
                    ad_irp <= '0';
                    if (ad_cmp = '1') and (TOTL_CNT < TOTL_MAX - 1) then
                        state <= S7;
                    elsif (ad_cmp = '0') and (TOTL_CNT < TOTL_MAX - 1) then
                        state <= S6;
                    elsif (TOTL_CNT = TOTL_MAX - 1) then
                        state <= S9;
                    else
                        state <= S9;
                    end if;
                when S9 =>
                    ad_irn <= '0';
                    ad_irp <= '1';
                    if (ad_cmp = '0') then
                        state <= S10;
                    else
                        state <= S9;
                    end if;
                when S10 =>
                    ad_irn <= '0';
                    ad_irp <= '0';
                    state  <= S11;
                when S11 =>
                    ad_irn <= '1';
                    if (ad_cmp = '1') then
                        state <= S12;
                    else
                        state <= S11;
                    end if;
                when others => null;
            end case;

        end if;
    end process madc_proc;

end architecture madc_arch;

