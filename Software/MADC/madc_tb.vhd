

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity madc_tb is
end entity madc_tb;

architecture madc_tb_arch of madc_tb is
    component MADC
        generic(
            DATA_SIZE : integer := 32;
            ADDR_SIZE : integer := 4;
            NPLC      : natural := 20000;
            VREF      : natural := 1
        );
        port(
            ad_iin          : out std_logic;
            ad_irn          : out std_logic;
            ad_irp          : out std_logic;
            sw_vrh          : out std_logic;
            ad_id           : out std_logic;
            ad_cmp          : in  std_logic;
            s00_axi_aclk    : in  std_logic;
            s00_axi_aresetn : in  std_logic;
            s00_axi_awaddr  : in  std_logic_vector(ADDR_SIZE - 1 downto 0);
            s00_axi_awprot  : in  std_logic_vector(2 downto 0);
            s00_axi_awvalid : in  std_logic;
            s00_axi_awready : out std_logic;
            s00_axi_wdata   : in  std_logic_vector(DATA_SIZE - 1 downto 0);
            s00_axi_wstrb   : in  std_logic_vector((DATA_SIZE / 8) - 1 downto 0);
            s00_axi_wvalid  : in  std_logic;
            s00_axi_wready  : out std_logic;
            s00_axi_bresp   : out std_logic_vector(1 downto 0);
            s00_axi_bvalid  : out std_logic;
            s00_axi_bready  : in  std_logic;
            s00_axi_araddr  : in  std_logic_vector(ADDR_SIZE - 1 downto 0);
            s00_axi_arprot  : in  std_logic_vector(2 downto 0);
            s00_axi_arvalid : in  std_logic;
            s00_axi_arready : out std_logic;
            s00_axi_rdata   : out std_logic_vector(DATA_SIZE - 1 downto 0);
            s00_axi_rresp   : out std_logic_vector(1 downto 0);
            s00_axi_rvalid  : out std_logic;
            s00_axi_rready  : in  std_logic
        );
    end component MADC;

    signal clock_period : time := 10 ns;

    constant DATA_SIZE : integer := 32;
    constant ADDR_SIZE : integer := 4;
    constant NPLC      : natural := 20000;
    constant VREF      : natural := 1;

    signal ad_iin      : std_logic                                      := '0';
    signal ad_irn      : std_logic                                      := '0';
    signal ad_irp      : std_logic                                      := '0';
    signal sw_vrh      : std_logic                                      := '0';
    signal ad_id       : std_logic                                      := '0';
    signal ad_cmp      : std_logic                                      := '0';
    signal axi_aclk    : std_logic                                      := '0';
    signal axi_aresetn : std_logic                                      := '0';
    signal axi_awaddr  : std_logic_vector(ADDR_SIZE - 1 downto 0)       := (others => '0');
    signal axi_awprot  : std_logic_vector(2 downto 0)                   := (others => '0');
    signal axi_awvalid : std_logic                                      := '0';
    signal axi_awready : std_logic                                      := '0';
    signal axi_wdata   : std_logic_vector(DATA_SIZE - 1 downto 0)       := (others => '0');
    signal axi_wstrb   : std_logic_vector((DATA_SIZE / 8) - 1 downto 0) := (others => '0');
    signal axi_wvalid  : std_logic                                      := '0';
    signal axi_wready  : std_logic                                      := '0';
    signal axi_bresp   : std_logic_vector(1 downto 0)                   := (others => '0');
    signal axi_bvalid  : std_logic                                      := '0';
    signal axi_bready  : std_logic                                      := '0';
    signal axi_araddr  : std_logic_vector(ADDR_SIZE - 1 downto 0)       := (others => '0');
    signal axi_arprot  : std_logic_vector(2 downto 0)                   := (others => '0');
    signal axi_arvalid : std_logic                                      := '0';
    signal axi_arready : std_logic                                      := '0';
    signal axi_rdata   : std_logic_vector(DATA_SIZE - 1 downto 0)       := (others => '0');
    signal axi_rresp   : std_logic_vector(1 downto 0)                   := (others => '0');
    signal axi_rvalid  : std_logic                                      := '0';
    signal axi_rready  : std_logic                                      := '0';

begin

    MADC_inst : component MADC
        generic map(
            DATA_SIZE => DATA_SIZE,
            ADDR_SIZE => ADDR_SIZE,
            NPLC      => NPLC,
            VREF      => VREF
        )
        port map(
            ad_iin          => ad_iin,
            ad_irn          => ad_irn,
            ad_irp          => ad_irp,
            sw_vrh          => sw_vrh,
            ad_id           => ad_id,
            ad_cmp          => ad_cmp,
            s00_axi_aclk    => axi_aclk,
            s00_axi_aresetn => axi_aresetn,
            s00_axi_awaddr  => axi_awaddr,
            s00_axi_awprot  => axi_awprot,
            s00_axi_awvalid => axi_awvalid,
            s00_axi_awready => axi_awready,
            s00_axi_wdata   => axi_wdata,
            s00_axi_wstrb   => axi_wstrb,
            s00_axi_wvalid  => axi_wvalid,
            s00_axi_wready  => axi_wready,
            s00_axi_bresp   => axi_bresp,
            s00_axi_bvalid  => axi_bvalid,
            s00_axi_bready  => axi_bready,
            s00_axi_araddr  => axi_araddr,
            s00_axi_arprot  => axi_arprot,
            s00_axi_arvalid => axi_arvalid,
            s00_axi_arready => axi_arready,
            s00_axi_rdata   => axi_rdata,
            s00_axi_rresp   => axi_rresp,
            s00_axi_rvalid  => axi_rvalid,
            s00_axi_rready  => axi_rready
        );

    clock_proc : process is
    begin
        axi_aclk <= '0';
        wait for clock_period / 2;
        axi_aclk <= '1';
        wait for clock_period / 2;
    end process clock_proc;

    uut : process is
    begin
        axi_aresetn <= '0';
        wait for 500 ns;
        axi_aresetn <= '1';
        wait;
    end process uut;

end architecture madc_tb_arch;

