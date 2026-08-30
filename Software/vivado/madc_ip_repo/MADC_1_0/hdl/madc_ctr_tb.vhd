library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_float_types.all;
use ieee.float_pkg.all;
use std.textio.all;

use work.madc_package.all;

entity madc_ctr_tb is
end entity madc_ctr_tb;

architecture madc_ctr_tb_arch of madc_ctr_tb is
    signal clk      : std_logic;
    signal madc_clk : std_logic;
    signal rst_n    : std_logic;
    signal ad_cmp   : std_logic := '0';

    component madc_ctr
        generic(
            DATA_SIZE : natural := 32;
            ADDR_SIZE : natural := 4;
            NPLC      : natural := 20000;
            VREF      : natural := 1
        );
        port(
            axi4l_clk    : in  std_logic;
            axi4l_rst_n  : in  std_logic;
            axi4l_wdata  : in  std_logic_vector(DATA_SIZE - 1 downto 0);
            axi4l_awaddr : in  std_logic_vector(ADDR_SIZE - 1 downto 0);
            axi4l_wstrb  : in  std_logic_vector((DATA_SIZE / 8) - 1 downto 0);
            axi4l_araddr : in  std_logic_vector(ADDR_SIZE - 1 downto 0);
            axi4l_rdata  : out std_logic_vector(DATA_SIZE - 1 downto 0);
            madc_busy    : out std_logic;
            ad_iin       : out std_logic;
            ad_irn       : out std_logic;
            ad_irp       : out std_logic;
            sw_vrh       : out std_logic;
            ad_id        : out std_logic;
            ad_cmp       : in  std_logic
        );
    end component madc_ctr;
    constant DATA_SIZE : natural := 32;
    constant ADDR_SIZE : natural := 4;
    constant NPLC      : natural := 20000;
    constant VREF      : natural := 1;

    signal clock_period : time := 10 ns;
    signal test         : std_logic_vector(DATA_SIZE - 1 downto 0);

begin

    madc_ctr_inst : component madc_ctr
        generic map(
            DATA_SIZE => DATA_SIZE,
            ADDR_SIZE => ADDR_SIZE,
            NPLC      => NPLC,
            VREF      => VREF
        )
        port map(
            axi4l_clk    => clk,
            axi4l_rst_n  => rst_n,
            axi4l_wdata  => (others => '0'),
            axi4l_awaddr => (others => '0'),
            axi4l_wstrb  => (others => '0'),
            axi4l_araddr => (others => '0'),
            axi4l_rdata  => open,
            madc_busy    => open,
            ad_iin       => open,
            ad_irn       => open,
            ad_irp       => open,
            sw_vrh       => open,
            ad_id        => open,
            ad_cmp       => ad_cmp
        );

    clock_proc : process is
    begin
        clk <= '0';
        wait for clock_period / 2;
        clk <= '1';
        wait for clock_period / 2;
    end process clock_proc;

    madc_clock_proc : process is
    begin
        madc_clk <= '0';
        wait for 1 us / 2;
        madc_clk <= '1';
        wait for 1 us / 2;
    end process madc_clock_proc;

    uut : process is
        variable T1                     : time range 0 us to 1000 us := 0 us;
        alias    int_axi4l_reg_status   is <<signal .madc_ctr_tb.madc_ctr_inst.axi4l_reg_status : std_logic_vector(DATA_SIZE - 1 downto 0)>>;
        alias    int_axi4l_reg_p_cnt    is <<signal  .madc_ctr_tb.madc_ctr_inst.axi4l_reg_p_cnt : std_logic_vector(DATA_SIZE - 1 downto 0)>>;
        alias    int_axi4l_reg_n_cnt    is <<signal  .madc_ctr_tb.madc_ctr_inst.axi4l_reg_n_cnt : std_logic_vector(DATA_SIZE - 1 downto 0)>>;
        alias    int_axi4l_reg_totl_cnt is <<signal  .madc_ctr_tb.madc_ctr_inst.axi4l_reg_totl_cnt :  std_logic_vector(DATA_SIZE - 1 downto 0)>>;
        variable vref                   : real                       := 7.0;
        variable measurement            : real;
    begin
        rst_n <= '0';
        T1    := 200 us;
        test  <= (others => '0');
        wait for 500 ns;
        rst_n <= '1';

        wait until int_axi4l_reg_status = x"00_00_00_01";
        measurement := vref * ((real(to_integer(unsigned(int_axi4l_reg_p_cnt))) - real(to_integer(unsigned(int_axi4l_reg_n_cnt)))) / real(to_integer(unsigned(int_axi4l_reg_totl_cnt))));
        report "Test : " & to_string(to_integer(unsigned(int_axi4l_reg_p_cnt)));
        report "Test : " & to_string(to_integer(unsigned(int_axi4l_reg_n_cnt)));

        report "Test : " & to_string(to_integer(unsigned(int_axi4l_reg_totl_cnt)));
                report "Test : " & to_string(measurement);
        wait;
    end process uut;

    cmp_gen_proc : process is
        constant file_name : string := "PLC_1_P5V.txt";
    begin
                wait for 50 us;
        cmp_gen(string_name => file_name, ad_cmp => ad_cmp, clk => madc_clk);
    end process cmp_gen_proc;

end architecture madc_ctr_tb_arch;

