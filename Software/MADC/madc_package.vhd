library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package madc_package is
   constant DATA_SIZE : natural := 32;
   
end package madc_package;

package body madc_package is
    

   procedure axi_read_control(signal clk_in    : in  std_logic;
                               signal arvalid   : out std_logic;
                               signal arready   : in  std_logic;
                               signal rvalid    : in  std_logic;
                               signal rready    : out std_logic;
                               signal rdata_out : out std_logic_vector(DATA_SIZE - 1 downto 0);
                               signal rdata_in  : in  std_logic_vector(DATA_SIZE - 1 downto 0)) is

    begin
        arvalid <= '1';
        loop
            wait until rising_edge(clk_in);
            exit when (arready = '1');
        end loop;
        arvalid <= '0';

        rready <= '1';
        loop
            wait until rising_edge(clk_in);
            if (rvalid = '1') then
                rdata_out <= rdata_in;
                exit;
            end if;
        end loop;
        rready <= '0';

    end procedure axi_read_control;


    procedure axi_write_control(
        signal clk_in  : in  std_logic;
        signal awvalid : out std_logic;
        signal awready : in  std_logic;
        signal wvalid  : out std_logic;
        signal wready  : in  std_logic;
        signal bvalid  : in  std_logic;
        signal bready  : out std_logic
    ) is
        variable aw_done : boolean := false;
        variable w_done  : boolean := false;
    begin
        -- Start both phases
        awvalid <= '1';
        wvalid  <= '1';
        bready  <= '1';                 -- Ready for the response whenever it comes
        wait for 0 ns;

        loop
            wait until rising_edge(clk_in);

            -- Check Address Handshake
            if awready = '1' then
                awvalid <= '0';
                aw_done := true;
            end if;

            -- Check Data Handshake
            if wready = '1' then
                wvalid <= '0';
                w_done := true;
            end if;

            exit when (aw_done and w_done);
        end loop;

        -- Wait for Response (B Channel)
        loop
            if bvalid = '1' then
                exit;
            end if;
            wait until rising_edge(clk_in);
        end loop;

        bready <= '0';
    end procedure;

end package body madc_package;
