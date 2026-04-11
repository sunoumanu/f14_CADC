-------------------------------------------------------------------------------
-- AXI UART Wrapper for IP Integrator
-- Wraps ip_axi_uart with VHDL-93 compatible interface
-- for Vivado IP Integrator block design integration
--
-- Default configuration: 100MHz clock, 115200 baud, 8N1
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity axi_uart_wrapper is
    port (
        -- Clock and Reset
        i_clk       : in  std_logic;
        i_aresetn   : in  std_logic;
        
        -- UART External Interface
        i_rx        : in  std_logic;
        o_tx        : out std_logic;
        
        -- Master AXI-Stream (RX data out)
        i_m_axis_tready : in  std_logic;
        o_m_axis_tdata  : out std_logic_vector(7 downto 0);
        o_m_axis_tvalid : out std_logic;
        
        -- Slave AXI-Stream (TX data in)
        o_s_axis_tready : out std_logic;
        i_s_axis_tdata  : in  std_logic_vector(7 downto 0);
        i_s_axis_tvalid : in  std_logic
    );
end entity axi_uart_wrapper;

architecture rtl of axi_uart_wrapper is

    component axi_uart is
        generic (
            G_ENDIANESS          : string     := "LSB";
            G_STOP_BITS          : integer    := 2;
            G_BITS_PER_WORD      : integer    := 8;
            G_PARITY             : integer    := 1;
            G_PARITY_ODD         : integer    := 1;
            G_CLK_FREQ           : natural    := 100_000_000;
            G_BAUD_RATE          : natural    := 115200;
            G_MODE               : string     := "FULL_DUPLEX";
            G_WATCHDOG_COUNT     : integer    := 0;
            G_WATCHDOG_COUNT_LEN : integer    := 32;
            G_GLITCH_FILTER_LEN  : integer    := 4;
            G_SYNC_STAGES        : integer    := 4;
            G_FIFO_DEPTH         : integer    := 2048;
            G_FIFO_SYNC_STAGES   : integer    := 2;
            G_BUSY_DELAY         : integer    := 4
        );
        port (
            i_clk           : in  std_ulogic;
            i_aresetn       : in  std_ulogic;
            i_rx            : in  std_ulogic;
            o_tx            : out std_ulogic;
            i_m_axis_tready : in  std_ulogic;
            o_m_axis_tdata  : out std_ulogic_vector(7 downto 0);
            o_m_axis_tvalid : out std_ulogic;
            o_s_axis_tready : out std_ulogic;
            i_s_axis_tdata  : in  std_ulogic_vector(7 downto 0);
            i_s_axis_tvalid : in  std_ulogic
        );
    end component axi_uart;

    -- Internal signals for type conversion
    signal s_o_tx           : std_ulogic;
    signal s_o_m_axis_tdata : std_ulogic_vector(7 downto 0);
    signal s_o_m_axis_tvalid: std_ulogic;
    signal s_o_s_axis_tready: std_ulogic;

begin

    u_axi_uart : axi_uart
        generic map (
            G_ENDIANESS          => "LSB",
            G_STOP_BITS          => 1,
            G_BITS_PER_WORD      => 8,
            G_PARITY             => 0,           -- No parity for RPi
            G_PARITY_ODD         => 0,
            G_CLK_FREQ           => 100_000_000, -- 100MHz AXI clock
            G_BAUD_RATE          => 115200,      -- Standard RPi baud
            G_MODE               => "FULL_DUPLEX",
            G_WATCHDOG_COUNT     => 0,
            G_WATCHDOG_COUNT_LEN => 32,
            G_GLITCH_FILTER_LEN  => 4,
            G_SYNC_STAGES        => 4,
            G_FIFO_DEPTH         => 256,         -- Smaller FIFO for S7-25
            G_FIFO_SYNC_STAGES   => 2,
            G_BUSY_DELAY         => 4
        )
        port map (
            i_clk           => std_ulogic(i_clk),
            i_aresetn       => std_ulogic(i_aresetn),
            i_rx            => std_ulogic(i_rx),
            o_tx            => s_o_tx,
            i_m_axis_tready => std_ulogic(i_m_axis_tready),
            o_m_axis_tdata  => s_o_m_axis_tdata,
            o_m_axis_tvalid => s_o_m_axis_tvalid,
            o_s_axis_tready => s_o_s_axis_tready,
            i_s_axis_tdata  => std_ulogic_vector(i_s_axis_tdata),
            i_s_axis_tvalid => std_ulogic(i_s_axis_tvalid)
        );

    -- Convert outputs back to std_logic
    o_tx            <= std_logic(s_o_tx);
    o_m_axis_tdata  <= std_logic_vector(s_o_m_axis_tdata);
    o_m_axis_tvalid <= std_logic(s_o_m_axis_tvalid);
    o_s_axis_tready <= std_logic(s_o_s_axis_tready);

end architecture rtl;
