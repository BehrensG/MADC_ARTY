library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.madc_package.all;

entity madc_tb is
end entity madc_tb;

architecture madc_tb_arch of madc_tb is
    signal clk   : std_logic;
    signal rst_n : std_logic;
component madc
    generic(
        DATA_SIZE : natural := 32;
        ADRR_SIZE : natural := 8
    );
    port(
        axi4l_clk    : in  std_logic;
        axi4l_rst_n  : in  std_logic;
        axi4l_wdata  : in  std_logic_vector(DATA_SIZE - 1 downto 0);
        axi4l_awaddr : in  std_logic_vector(ADRR_SIZE - 1 downto 0);
        axi4l_wstrb  : in  std_logic_vector((DATA_SIZE / 8) - 1 downto 0);
        axi4l_araddr : in  std_logic_vector(ADRR_SIZE - 1 downto 0);
        axi4l_rdata  : out std_logic_vector(DATA_SIZE - 1 downto 0);
        ad_iin       : out std_logic;
        ad_irn       : out std_logic;
        ad_irp       : out std_logic;
        sw_vrh       : out std_logic;
        ad_id        : out std_logic;
        ad_cmp       : in  std_logic
    );
end component madc;

begin

    madc_inst : component madc
        generic map(
            DATA_SIZE => 32,
            ADRR_SIZE => 8
        )
        port map(
            axi4l_clk    => clk,
            axi4l_rst_n  => rst_n,
            axi4l_wdata  => (others => '0'),
            axi4l_awaddr => (others => '0'),
            axi4l_wstrb  => (others => '0'),
            axi4l_araddr => (others => '0'),
            axi4l_rdata  => open,
            ad_iin       => open,
            ad_irn       => open,
            ad_irp       => open,
            sw_vrh       => open,
            ad_id        => open,
            ad_cmp       => '0'
        );
    
    
    clock_proc : process is
    begin
        clk <= '0';
        wait for clock_period / 2;
        clk <= '1';
        wait for clock_period / 2;
    end process clock_proc;

    uut : process is
    begin
        rst_n <= '0';
        wait for 500 ns;
        rst_n <= '1';
        wait for 500 ns;
        wait;
    end process uut;

end architecture madc_tb_arch;

