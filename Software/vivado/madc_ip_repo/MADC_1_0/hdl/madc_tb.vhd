

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.madc_package.all;

entity madc_tb is
end entity madc_tb;

architecture madc_tb_arch of madc_tb is

    -- Components
    component MADC
    	generic(
    		DATA_SIZE : natural              := 32;
    		ADDR_SIZE : natural              := 8;
    		NPLC      : natural              := 20000;
    		VREF      : natural              := 1;
    		NVC       : natural range 0 to 1 := 0
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

    -- Time signals
    signal clock_period    : time := 10 ns;
    signal madc_clk_period : time := 1 us;

    -- Constant
    constant DATA_SIZE : natural := 32;
    constant ADDR_SIZE : natural := 8;
    constant NPLC      : natural := 20000;
    constant VREF      : natural := 1;

    constant STATUS_INDEX     : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(0, ADDR_SIZE));
    constant NPLC_INDEX       : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(4, ADDR_SIZE));
    constant COUNT_P_INDEX    : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(8, ADDR_SIZE));
    constant COUNT_N_INDEX    : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(12, ADDR_SIZE));
    constant COUNT_TOTL_INDEX : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(16, ADDR_SIZE));
    constant VREF_INDEX       : std_logic_vector(ADDR_SIZE - 1 downto 0) := std_logic_vector(to_unsigned(20, ADDR_SIZE));

    -- Entity signals
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

    -- Testbench local signal
    signal madc_clk : std_logic;
    signal status   : std_logic_vector(DATA_SIZE - 1 downto 0);
    signal p_cnt    : std_logic_vector(DATA_SIZE - 1 downto 0);
    signal n_cnt    : std_logic_vector(DATA_SIZE - 1 downto 0);
    signal tot_cnt  : std_logic_vector(DATA_SIZE - 1 downto 0);
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

    axi_clock_proc : process is
    begin
        axi_aclk <= '0';
        wait for clock_period / 2;
        axi_aclk <= '1';
        wait for clock_period / 2;
    end process axi_clock_proc;

    madc_clock_proc : process is
    begin
        madc_clk <= '0';
        wait for madc_clk_period / 2;
        madc_clk <= '1';
        wait for madc_clk_period / 2;
    end process madc_clock_proc;

    uut : process is
        variable vref        : real := 7.0;
        variable measurement : real;
    begin
        axi_aresetn <= '0';
        axi_araddr  <= (others => '0');
        axi_awaddr  <= (others => '0');
        axi_wdata   <= (others => '0');
        axi_wstrb   <= (others => '0');
        axi_bready  <= '0';
        -- axi_rready  <= '0';
        axi_awprot  <= (others => '0');
        axi_awvalid <= '0';
        axi_wvalid  <= '0';
        axi_arprot  <= (others => '0');
        axi_arvalid <= '0';
        -- axi_rdata   <= (others => '0');
        status      <= (others => '0');
        p_cnt       <= (others => '0');
        n_cnt       <= (others => '0');
        tot_cnt     <= (others => '0');

        wait for 500 ns;
        axi_aresetn <= '1';
        wait for 500 ns;
        loop
            axi_araddr <= STATUS_INDEX;
            axi_read(clk_in    => axi_aclk,
                     arvalid   => axi_arvalid,
                     arready   => axi_arready,
                     rvalid    => axi_rvalid,
                     rready    => axi_rready,
                     rdata_out => status,
                     rdata_in  => axi_rdata);
            wait for clock_period;
            if status = x"00_00_00_01" then
                report "Status : " & to_string(to_integer(unsigned(status)));
                exit;
            end if;
        end loop;

        axi_araddr <= COUNT_P_INDEX;
        axi_read(clk_in    => axi_aclk,
                 arvalid   => axi_arvalid,
                 arready   => axi_arready,
                 rvalid    => axi_rvalid,
                 rready    => axi_rready,
                 rdata_out => p_cnt,
                 rdata_in  => axi_rdata);

        wait for 1 us;

        axi_araddr <= COUNT_N_INDEX;
        axi_read(clk_in    => axi_aclk,
                 arvalid   => axi_arvalid,
                 arready   => axi_arready,
                 rvalid    => axi_rvalid,
                 rready    => axi_rready,
                 rdata_out => n_cnt,
                 rdata_in  => axi_rdata);

        wait for 1 us;

        axi_araddr <= COUNT_TOTL_INDEX;
        axi_read(clk_in    => axi_aclk,
                 arvalid   => axi_arvalid,
                 arready   => axi_arready,
                 rvalid    => axi_rvalid,
                 rready    => axi_rready,
                 rdata_out => tot_cnt,
                 rdata_in  => axi_rdata);

        wait for 1 us;

        measurement := vref * ((real(to_integer(unsigned(p_cnt))) - real(to_integer(unsigned(n_cnt)))) / real(to_integer(unsigned(tot_cnt))));

        report "P COUNT : " & to_string(to_integer(unsigned(p_cnt)));
        report "N COUNT : " & to_string(to_integer(unsigned(n_cnt)));
        report "TOT COUNT : " & to_string(to_integer(unsigned(tot_cnt)));
        report "MEAS : " & to_string(measurement);

        wait;
    end process uut;

    cmp_gen_proc : process is
        constant file_name : string := "PLC_1_0V.txt";
    begin
        wait until axi_aresetn = '1';
        wait for 50 us;
        cmp_gen(string_name => file_name, ad_cmp => ad_cmp, clk => madc_clk);
    end process cmp_gen_proc;

end architecture madc_tb_arch;

