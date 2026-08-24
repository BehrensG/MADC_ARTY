library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use work.madc_package.all;

entity madc_ctr_tb is
end entity madc_ctr_tb;

architecture madc_ctr_tb_arch of madc_ctr_tb is
    signal clk    : std_logic;
    signal rst_n  : std_logic;
    signal ad_cmp : std_logic;

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

    uut : process is
        variable T1 : time range 0 us to 1000 us := 0 us;
    begin
        rst_n  <= '0';
        T1     := 200 us;
        ad_cmp <= '0';
        wait for 500 ns;
        rst_n  <= '1';
        wait for T1 / 2;
        for i in 0 to 100 loop
            if (i mod 2) = 0 then
                ad_cmp <= '1';
            else
                ad_cmp <= '0';
            end if;
            wait for T1;
        end loop;
        wait;
    end process uut;

end architecture madc_ctr_tb_arch;

