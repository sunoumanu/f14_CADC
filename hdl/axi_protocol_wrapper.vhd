-------------------------------------------------------------------------------
-- AXI Protocol Wrapper for IP Integrator
-- Wraps ip_axi_protocol_lite with proper AXI-Lite master interface
-- for Vivado IP Integrator block design integration
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity axi_protocol_wrapper is
    port (
        -- Clock and Reset
        clk         : in  std_logic;
        rst_n       : in  std_logic;
        
        -- AXI-Stream Slave (from UART RX)
        s_axis_tdata  : in  std_logic_vector(7 downto 0);
        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        
        -- AXI-Stream Master (to UART TX)
        m_axis_tdata  : out std_logic_vector(7 downto 0);
        m_axis_tvalid : out std_logic;
        m_axis_tready : in  std_logic;
        
        -- AXI-Lite Master Interface (to interconnect)
        m_axi_awaddr  : out std_logic_vector(31 downto 0);
        m_axi_awprot  : out std_logic_vector(2 downto 0);
        m_axi_awvalid : out std_logic;
        m_axi_awready : in  std_logic;
        m_axi_wdata   : out std_logic_vector(31 downto 0);
        m_axi_wstrb   : out std_logic_vector(3 downto 0);
        m_axi_wvalid  : out std_logic;
        m_axi_wready  : in  std_logic;
        m_axi_bresp   : in  std_logic_vector(1 downto 0);
        m_axi_bvalid  : in  std_logic;
        m_axi_bready  : out std_logic;
        m_axi_araddr  : out std_logic_vector(31 downto 0);
        m_axi_arprot  : out std_logic_vector(2 downto 0);
        m_axi_arvalid : out std_logic;
        m_axi_arready : in  std_logic;
        m_axi_rdata   : in  std_logic_vector(31 downto 0);
        m_axi_rresp   : in  std_logic_vector(1 downto 0);
        m_axi_rvalid  : in  std_logic;
        m_axi_rready  : out std_logic
    );
end entity axi_protocol_wrapper;

architecture rtl of axi_protocol_wrapper is
 
    component axi_protocol is  
        generic(
            G_AXIL_DATA_WIDTH  : integer := 32;
            G_AXI_ADDR_WIDTH   : integer := 32;
            G_AXI_ID_WIDTH     : integer := 8;
            G_AXI_AWUSER_WIDTH : integer := 1
        );
        port(
            clk           : in  std_ulogic;
            reset         : in  std_ulogic;
            m_axis_tready : in  std_logic;
            m_axis_tdata  : out std_logic_vector(7 downto 0);
            m_axis_tvalid : out std_logic;
            s_axis_tready : out std_logic;
            s_axis_tdata  : in  std_logic_vector(7 downto 0);
            s_axis_tvalid : in  std_logic;
            axi_awaddr    : out std_logic_vector(31 downto 0);
            axi_awprot    : out std_logic_vector(2 downto 0);
            axi_awvalid   : out std_logic;
            axi_wdata     : out std_logic_vector(31 downto 0);
            axi_wstrb     : out std_logic_vector(3 downto 0);
            axi_wvalid    : out std_logic;
            axi_bready    : out std_logic;
            axi_araddr    : out std_logic_vector(31 downto 0);
            axi_arprot    : out std_logic_vector(2 downto 0);
            axi_arvalid   : out std_logic;
            axi_rready    : out std_logic;
            axi_awready   : in  std_logic;
            axi_wready    : in  std_logic;
            axi_bresp     : in  std_logic_vector(1 downto 0);
            axi_bvalid    : in  std_logic;
            axi_arready   : in  std_logic;
            axi_rdata     : in  std_logic_vector(31 downto 0);
            axi_rresp     : in  std_logic_vector(1 downto 0);
            axi_rvalid    : in  std_logic
        );
    end component axi_protocol;
    
    signal reset_internal : std_ulogic;

begin

    -- Convert active-low reset to internal format (axi_protocol uses active-low)
    reset_internal <= rst_n;

    u_axi_protocol : axi_protocol
        generic map (
            G_AXIL_DATA_WIDTH  => 32,
            G_AXI_ADDR_WIDTH   => 32,
            G_AXI_ID_WIDTH     => 8,
            G_AXI_AWUSER_WIDTH => 1
        )
        port map (
            clk           => std_ulogic(clk),
            reset         => reset_internal,
            -- AXI-Stream
            m_axis_tready => m_axis_tready,
            m_axis_tdata  => m_axis_tdata,
            m_axis_tvalid => m_axis_tvalid,
            s_axis_tready => s_axis_tready,
            s_axis_tdata  => s_axis_tdata,
            s_axis_tvalid => s_axis_tvalid,
            -- AXI-Lite Master
            axi_awaddr    => m_axi_awaddr,
            axi_awprot    => m_axi_awprot,
            axi_awvalid   => m_axi_awvalid,
            axi_wdata     => m_axi_wdata,
            axi_wstrb     => m_axi_wstrb,
            axi_wvalid    => m_axi_wvalid,
            axi_bready    => m_axi_bready,
            axi_araddr    => m_axi_araddr,
            axi_arprot    => m_axi_arprot,
            axi_arvalid   => m_axi_arvalid,
            axi_rready    => m_axi_rready,
            axi_awready   => m_axi_awready,
            axi_wready    => m_axi_wready,
            axi_bresp     => m_axi_bresp,
            axi_bvalid    => m_axi_bvalid,
            axi_arready   => m_axi_arready,
            axi_rdata     => m_axi_rdata,
            axi_rresp     => m_axi_rresp,
            axi_rvalid    => m_axi_rvalid
        );

end architecture rtl;
