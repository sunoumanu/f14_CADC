--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
--Date        : Sat Apr 11 18:27:32 2026
--Host        : Adiuvo_Adam running 64-bit major release  (build 9200)
--Command     : generate_target cadc_system.bd
--Design      : cadc_system
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cadc_system is
  port (
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    uart_rxd : in STD_LOGIC;
    uart_txd : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of cadc_system : entity is "cadc_system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=cadc_system,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=18,numReposBlks=18,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of cadc_system : entity is "cadc_system.hwdef";
end cadc_system;

architecture STRUCTURE of cadc_system is
  component cadc_system_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component cadc_system_clk_wiz_0_0;
  component cadc_system_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component cadc_system_proc_sys_reset_0_0;
  component cadc_system_axi_uart_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_aresetn : in STD_LOGIC;
    i_rx : in STD_LOGIC;
    o_tx : out STD_LOGIC;
    i_m_axis_tready : in STD_LOGIC;
    o_m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_m_axis_tvalid : out STD_LOGIC;
    o_s_axis_tready : out STD_LOGIC;
    i_s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_s_axis_tvalid : in STD_LOGIC
  );
  end component cadc_system_axi_uart_0_0;
  component cadc_system_axi_protocol_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component cadc_system_axi_protocol_0_0;
  component cadc_system_axi_smartconnect_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_rready : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_rready : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M06_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M06_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_rready : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M07_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_awvalid : out STD_LOGIC;
    M07_AXI_awready : in STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC;
    M07_AXI_wready : in STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC;
    M07_AXI_bready : out STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M07_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_arvalid : out STD_LOGIC;
    M07_AXI_arready : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC;
    M07_AXI_rready : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M08_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC;
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M08_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_rready : out STD_LOGIC
  );
  end component cadc_system_axi_smartconnect_0_0;
  component cadc_system_axi_gpio_ps_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component cadc_system_axi_gpio_ps_0;
  component cadc_system_axi_gpio_qc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component cadc_system_axi_gpio_qc_0;
  component cadc_system_axi_gpio_tat_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component cadc_system_axi_gpio_tat_0;
  component cadc_system_axi_gpio_analog_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component cadc_system_axi_gpio_analog_0;
  component cadc_system_axi_gpio_digital_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 19 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component cadc_system_axi_gpio_digital_0;
  component cadc_system_axi_gpio_out_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 19 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component cadc_system_axi_gpio_out_0_0;
  component cadc_system_axi_gpio_out_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 19 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component cadc_system_axi_gpio_out_1_0;
  component cadc_system_axi_gpio_out_2_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 19 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component cadc_system_axi_gpio_out_2_0;
  component cadc_system_axi_gpio_out_3_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 19 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component cadc_system_axi_gpio_out_3_0;
  component cadc_system_clock_divider_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_rst_n : in STD_LOGIC;
    o_clk_div : out STD_LOGIC
  );
  end component cadc_system_clock_divider_0_0;
  component cadc_system_cadc_top_0_0 is
  port (
    i_clk_master : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_sensor_ps : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_qc : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_tat : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_analog : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i_sensor_digital : in STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_mach : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_alt : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_airspd : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_vspd : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_wing : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_flap : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_out_glove : out STD_LOGIC_VECTOR ( 19 downto 0 );
    o_bit_status : out STD_LOGIC;
    i_channel_active : in STD_LOGIC;
    o_fail_detect : out STD_LOGIC
  );
  end component cadc_system_cadc_top_0_0;
  component cadc_system_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component cadc_system_util_vector_logic_0_0;
  component cadc_system_xlconcat_status_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component cadc_system_xlconcat_status_0;
  signal axi_gpio_analog_gpio_io_o : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal axi_gpio_digital_gpio2_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_digital_gpio_io_o : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal axi_gpio_ps_gpio_io_o : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal axi_gpio_qc_gpio_io_o : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal axi_gpio_tat_gpio_io_o : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal axi_protocol_0_m_axi_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_protocol_0_m_axi_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_protocol_0_m_axi_ARREADY : STD_LOGIC;
  signal axi_protocol_0_m_axi_ARVALID : STD_LOGIC;
  signal axi_protocol_0_m_axi_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_protocol_0_m_axi_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_protocol_0_m_axi_AWREADY : STD_LOGIC;
  signal axi_protocol_0_m_axi_AWVALID : STD_LOGIC;
  signal axi_protocol_0_m_axi_BREADY : STD_LOGIC;
  signal axi_protocol_0_m_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_protocol_0_m_axi_BVALID : STD_LOGIC;
  signal axi_protocol_0_m_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_protocol_0_m_axi_RREADY : STD_LOGIC;
  signal axi_protocol_0_m_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_protocol_0_m_axi_RVALID : STD_LOGIC;
  signal axi_protocol_0_m_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_protocol_0_m_axi_WREADY : STD_LOGIC;
  signal axi_protocol_0_m_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_protocol_0_m_axi_WVALID : STD_LOGIC;
  signal axi_protocol_0_m_axis_tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_protocol_0_m_axis_tvalid : STD_LOGIC;
  signal axi_protocol_0_s_axis_tready : STD_LOGIC;
  signal axi_smartconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_smartconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_smartconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_smartconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_smartconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_smartconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_smartconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_smartconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_smartconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_smartconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smartconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_smartconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_smartconnect_0_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_smartconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_smartconnect_0_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_smartconnect_0_M01_AXI_BREADY : STD_LOGIC;
  signal axi_smartconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal axi_smartconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M01_AXI_RREADY : STD_LOGIC;
  signal axi_smartconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal axi_smartconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal axi_smartconnect_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smartconnect_0_M01_AXI_WVALID : STD_LOGIC;
  signal axi_smartconnect_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_smartconnect_0_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_smartconnect_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_smartconnect_0_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_smartconnect_0_M02_AXI_BREADY : STD_LOGIC;
  signal axi_smartconnect_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M02_AXI_BVALID : STD_LOGIC;
  signal axi_smartconnect_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M02_AXI_RREADY : STD_LOGIC;
  signal axi_smartconnect_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M02_AXI_RVALID : STD_LOGIC;
  signal axi_smartconnect_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M02_AXI_WREADY : STD_LOGIC;
  signal axi_smartconnect_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smartconnect_0_M02_AXI_WVALID : STD_LOGIC;
  signal axi_smartconnect_0_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_smartconnect_0_M03_AXI_ARVALID : STD_LOGIC;
  signal axi_smartconnect_0_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_smartconnect_0_M03_AXI_AWVALID : STD_LOGIC;
  signal axi_smartconnect_0_M03_AXI_BREADY : STD_LOGIC;
  signal axi_smartconnect_0_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M03_AXI_BVALID : STD_LOGIC;
  signal axi_smartconnect_0_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M03_AXI_RREADY : STD_LOGIC;
  signal axi_smartconnect_0_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M03_AXI_RVALID : STD_LOGIC;
  signal axi_smartconnect_0_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M03_AXI_WREADY : STD_LOGIC;
  signal axi_smartconnect_0_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smartconnect_0_M03_AXI_WVALID : STD_LOGIC;
  signal axi_smartconnect_0_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M04_AXI_ARREADY : STD_LOGIC;
  signal axi_smartconnect_0_M04_AXI_ARVALID : STD_LOGIC;
  signal axi_smartconnect_0_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M04_AXI_AWREADY : STD_LOGIC;
  signal axi_smartconnect_0_M04_AXI_AWVALID : STD_LOGIC;
  signal axi_smartconnect_0_M04_AXI_BREADY : STD_LOGIC;
  signal axi_smartconnect_0_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M04_AXI_BVALID : STD_LOGIC;
  signal axi_smartconnect_0_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M04_AXI_RREADY : STD_LOGIC;
  signal axi_smartconnect_0_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M04_AXI_RVALID : STD_LOGIC;
  signal axi_smartconnect_0_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M04_AXI_WREADY : STD_LOGIC;
  signal axi_smartconnect_0_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smartconnect_0_M04_AXI_WVALID : STD_LOGIC;
  signal axi_smartconnect_0_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M05_AXI_ARREADY : STD_LOGIC;
  signal axi_smartconnect_0_M05_AXI_ARVALID : STD_LOGIC;
  signal axi_smartconnect_0_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M05_AXI_AWREADY : STD_LOGIC;
  signal axi_smartconnect_0_M05_AXI_AWVALID : STD_LOGIC;
  signal axi_smartconnect_0_M05_AXI_BREADY : STD_LOGIC;
  signal axi_smartconnect_0_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M05_AXI_BVALID : STD_LOGIC;
  signal axi_smartconnect_0_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M05_AXI_RREADY : STD_LOGIC;
  signal axi_smartconnect_0_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M05_AXI_RVALID : STD_LOGIC;
  signal axi_smartconnect_0_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M05_AXI_WREADY : STD_LOGIC;
  signal axi_smartconnect_0_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smartconnect_0_M05_AXI_WVALID : STD_LOGIC;
  signal axi_smartconnect_0_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M06_AXI_ARREADY : STD_LOGIC;
  signal axi_smartconnect_0_M06_AXI_ARVALID : STD_LOGIC;
  signal axi_smartconnect_0_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M06_AXI_AWREADY : STD_LOGIC;
  signal axi_smartconnect_0_M06_AXI_AWVALID : STD_LOGIC;
  signal axi_smartconnect_0_M06_AXI_BREADY : STD_LOGIC;
  signal axi_smartconnect_0_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M06_AXI_BVALID : STD_LOGIC;
  signal axi_smartconnect_0_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M06_AXI_RREADY : STD_LOGIC;
  signal axi_smartconnect_0_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M06_AXI_RVALID : STD_LOGIC;
  signal axi_smartconnect_0_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M06_AXI_WREADY : STD_LOGIC;
  signal axi_smartconnect_0_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smartconnect_0_M06_AXI_WVALID : STD_LOGIC;
  signal axi_smartconnect_0_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M07_AXI_ARREADY : STD_LOGIC;
  signal axi_smartconnect_0_M07_AXI_ARVALID : STD_LOGIC;
  signal axi_smartconnect_0_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M07_AXI_AWREADY : STD_LOGIC;
  signal axi_smartconnect_0_M07_AXI_AWVALID : STD_LOGIC;
  signal axi_smartconnect_0_M07_AXI_BREADY : STD_LOGIC;
  signal axi_smartconnect_0_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M07_AXI_BVALID : STD_LOGIC;
  signal axi_smartconnect_0_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M07_AXI_RREADY : STD_LOGIC;
  signal axi_smartconnect_0_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M07_AXI_RVALID : STD_LOGIC;
  signal axi_smartconnect_0_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M07_AXI_WREADY : STD_LOGIC;
  signal axi_smartconnect_0_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smartconnect_0_M07_AXI_WVALID : STD_LOGIC;
  signal axi_smartconnect_0_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M08_AXI_ARREADY : STD_LOGIC;
  signal axi_smartconnect_0_M08_AXI_ARVALID : STD_LOGIC;
  signal axi_smartconnect_0_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smartconnect_0_M08_AXI_AWREADY : STD_LOGIC;
  signal axi_smartconnect_0_M08_AXI_AWVALID : STD_LOGIC;
  signal axi_smartconnect_0_M08_AXI_BREADY : STD_LOGIC;
  signal axi_smartconnect_0_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M08_AXI_BVALID : STD_LOGIC;
  signal axi_smartconnect_0_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M08_AXI_RREADY : STD_LOGIC;
  signal axi_smartconnect_0_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smartconnect_0_M08_AXI_RVALID : STD_LOGIC;
  signal axi_smartconnect_0_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smartconnect_0_M08_AXI_WREADY : STD_LOGIC;
  signal axi_smartconnect_0_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smartconnect_0_M08_AXI_WVALID : STD_LOGIC;
  signal axi_uart_0_o_m_axis_tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_uart_0_o_m_axis_tvalid : STD_LOGIC;
  signal axi_uart_0_o_s_axis_tready : STD_LOGIC;
  signal cadc_top_0_o_bit_status : STD_LOGIC;
  signal cadc_top_0_o_fail_detect : STD_LOGIC;
  signal cadc_top_0_o_out_airspd : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal cadc_top_0_o_out_alt : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal cadc_top_0_o_out_flap : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal cadc_top_0_o_out_glove : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal cadc_top_0_o_out_mach : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal cadc_top_0_o_out_vspd : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal cadc_top_0_o_out_wing : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal clock_divider_0_o_clk_div : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_status_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_smartconnect_0_M00_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M00_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M01_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M01_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M02_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M02_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M03_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M03_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M04_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M04_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M05_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M05_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M06_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M06_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M07_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M07_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M08_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smartconnect_0_M08_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME CLK.SYS_CLK, CLK_DOMAIN cadc_system_sys_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of sys_rst_n : signal is "xilinx.com:signal:reset:1.0 RST.SYS_RST_N RST";
  attribute X_INTERFACE_PARAMETER of sys_rst_n : signal is "XIL_INTERFACENAME RST.SYS_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
axi_gpio_analog: component cadc_system_axi_gpio_analog_0
     port map (
      gpio_io_o(19 downto 0) => axi_gpio_analog_gpio_io_o(19 downto 0),
      s_axi_aclk => sys_clk,
      s_axi_araddr(8 downto 0) => axi_smartconnect_0_M03_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_smartconnect_0_M03_AXI_ARREADY,
      s_axi_arvalid => axi_smartconnect_0_M03_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_smartconnect_0_M03_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_smartconnect_0_M03_AXI_AWREADY,
      s_axi_awvalid => axi_smartconnect_0_M03_AXI_AWVALID,
      s_axi_bready => axi_smartconnect_0_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smartconnect_0_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smartconnect_0_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smartconnect_0_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_smartconnect_0_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smartconnect_0_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smartconnect_0_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smartconnect_0_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_smartconnect_0_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smartconnect_0_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smartconnect_0_M03_AXI_WVALID
    );
axi_gpio_digital: component cadc_system_axi_gpio_digital_0
     port map (
      gpio2_io_o(0) => axi_gpio_digital_gpio2_io_o(0),
      gpio_io_o(19 downto 0) => axi_gpio_digital_gpio_io_o(19 downto 0),
      s_axi_aclk => sys_clk,
      s_axi_araddr(8 downto 0) => axi_smartconnect_0_M04_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_smartconnect_0_M04_AXI_ARREADY,
      s_axi_arvalid => axi_smartconnect_0_M04_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_smartconnect_0_M04_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_smartconnect_0_M04_AXI_AWREADY,
      s_axi_awvalid => axi_smartconnect_0_M04_AXI_AWVALID,
      s_axi_bready => axi_smartconnect_0_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smartconnect_0_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smartconnect_0_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smartconnect_0_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_smartconnect_0_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smartconnect_0_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smartconnect_0_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smartconnect_0_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_smartconnect_0_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smartconnect_0_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smartconnect_0_M04_AXI_WVALID
    );
axi_gpio_out_0: component cadc_system_axi_gpio_out_0_0
     port map (
      gpio2_io_i(19 downto 0) => cadc_top_0_o_out_alt(19 downto 0),
      gpio_io_i(19 downto 0) => cadc_top_0_o_out_mach(19 downto 0),
      s_axi_aclk => sys_clk,
      s_axi_araddr(8 downto 0) => axi_smartconnect_0_M05_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_smartconnect_0_M05_AXI_ARREADY,
      s_axi_arvalid => axi_smartconnect_0_M05_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_smartconnect_0_M05_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_smartconnect_0_M05_AXI_AWREADY,
      s_axi_awvalid => axi_smartconnect_0_M05_AXI_AWVALID,
      s_axi_bready => axi_smartconnect_0_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smartconnect_0_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smartconnect_0_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smartconnect_0_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_smartconnect_0_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smartconnect_0_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smartconnect_0_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smartconnect_0_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_smartconnect_0_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smartconnect_0_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smartconnect_0_M05_AXI_WVALID
    );
axi_gpio_out_1: component cadc_system_axi_gpio_out_1_0
     port map (
      gpio2_io_i(19 downto 0) => cadc_top_0_o_out_vspd(19 downto 0),
      gpio_io_i(19 downto 0) => cadc_top_0_o_out_airspd(19 downto 0),
      s_axi_aclk => sys_clk,
      s_axi_araddr(8 downto 0) => axi_smartconnect_0_M06_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_smartconnect_0_M06_AXI_ARREADY,
      s_axi_arvalid => axi_smartconnect_0_M06_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_smartconnect_0_M06_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_smartconnect_0_M06_AXI_AWREADY,
      s_axi_awvalid => axi_smartconnect_0_M06_AXI_AWVALID,
      s_axi_bready => axi_smartconnect_0_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smartconnect_0_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smartconnect_0_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smartconnect_0_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_smartconnect_0_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smartconnect_0_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smartconnect_0_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smartconnect_0_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_smartconnect_0_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smartconnect_0_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smartconnect_0_M06_AXI_WVALID
    );
axi_gpio_out_2: component cadc_system_axi_gpio_out_2_0
     port map (
      gpio2_io_i(19 downto 0) => cadc_top_0_o_out_flap(19 downto 0),
      gpio_io_i(19 downto 0) => cadc_top_0_o_out_wing(19 downto 0),
      s_axi_aclk => sys_clk,
      s_axi_araddr(8 downto 0) => axi_smartconnect_0_M07_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_smartconnect_0_M07_AXI_ARREADY,
      s_axi_arvalid => axi_smartconnect_0_M07_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_smartconnect_0_M07_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_smartconnect_0_M07_AXI_AWREADY,
      s_axi_awvalid => axi_smartconnect_0_M07_AXI_AWVALID,
      s_axi_bready => axi_smartconnect_0_M07_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smartconnect_0_M07_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smartconnect_0_M07_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smartconnect_0_M07_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_smartconnect_0_M07_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smartconnect_0_M07_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smartconnect_0_M07_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smartconnect_0_M07_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_smartconnect_0_M07_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smartconnect_0_M07_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smartconnect_0_M07_AXI_WVALID
    );
axi_gpio_out_3: component cadc_system_axi_gpio_out_3_0
     port map (
      gpio2_io_i(1 downto 0) => xlconcat_status_dout(1 downto 0),
      gpio_io_i(19 downto 0) => cadc_top_0_o_out_glove(19 downto 0),
      s_axi_aclk => sys_clk,
      s_axi_araddr(8 downto 0) => axi_smartconnect_0_M08_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_smartconnect_0_M08_AXI_ARREADY,
      s_axi_arvalid => axi_smartconnect_0_M08_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_smartconnect_0_M08_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_smartconnect_0_M08_AXI_AWREADY,
      s_axi_awvalid => axi_smartconnect_0_M08_AXI_AWVALID,
      s_axi_bready => axi_smartconnect_0_M08_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smartconnect_0_M08_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smartconnect_0_M08_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smartconnect_0_M08_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_smartconnect_0_M08_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smartconnect_0_M08_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smartconnect_0_M08_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smartconnect_0_M08_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_smartconnect_0_M08_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smartconnect_0_M08_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smartconnect_0_M08_AXI_WVALID
    );
axi_gpio_ps: component cadc_system_axi_gpio_ps_0
     port map (
      gpio_io_o(19 downto 0) => axi_gpio_ps_gpio_io_o(19 downto 0),
      s_axi_aclk => sys_clk,
      s_axi_araddr(8 downto 0) => axi_smartconnect_0_M00_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_smartconnect_0_M00_AXI_ARREADY,
      s_axi_arvalid => axi_smartconnect_0_M00_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_smartconnect_0_M00_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_smartconnect_0_M00_AXI_AWREADY,
      s_axi_awvalid => axi_smartconnect_0_M00_AXI_AWVALID,
      s_axi_bready => axi_smartconnect_0_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smartconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smartconnect_0_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smartconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_smartconnect_0_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smartconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smartconnect_0_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smartconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_smartconnect_0_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smartconnect_0_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smartconnect_0_M00_AXI_WVALID
    );
axi_gpio_qc: component cadc_system_axi_gpio_qc_0
     port map (
      gpio_io_o(19 downto 0) => axi_gpio_qc_gpio_io_o(19 downto 0),
      s_axi_aclk => sys_clk,
      s_axi_araddr(8 downto 0) => axi_smartconnect_0_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_smartconnect_0_M01_AXI_ARREADY,
      s_axi_arvalid => axi_smartconnect_0_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_smartconnect_0_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_smartconnect_0_M01_AXI_AWREADY,
      s_axi_awvalid => axi_smartconnect_0_M01_AXI_AWVALID,
      s_axi_bready => axi_smartconnect_0_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smartconnect_0_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smartconnect_0_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smartconnect_0_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_smartconnect_0_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smartconnect_0_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smartconnect_0_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smartconnect_0_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_smartconnect_0_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smartconnect_0_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smartconnect_0_M01_AXI_WVALID
    );
axi_gpio_tat: component cadc_system_axi_gpio_tat_0
     port map (
      gpio_io_o(19 downto 0) => axi_gpio_tat_gpio_io_o(19 downto 0),
      s_axi_aclk => sys_clk,
      s_axi_araddr(8 downto 0) => axi_smartconnect_0_M02_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => axi_smartconnect_0_M02_AXI_ARREADY,
      s_axi_arvalid => axi_smartconnect_0_M02_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_smartconnect_0_M02_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_smartconnect_0_M02_AXI_AWREADY,
      s_axi_awvalid => axi_smartconnect_0_M02_AXI_AWVALID,
      s_axi_bready => axi_smartconnect_0_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smartconnect_0_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smartconnect_0_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smartconnect_0_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_smartconnect_0_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smartconnect_0_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smartconnect_0_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smartconnect_0_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_smartconnect_0_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smartconnect_0_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smartconnect_0_M02_AXI_WVALID
    );
axi_protocol_0: component cadc_system_axi_protocol_0_0
     port map (
      clk => sys_clk,
      m_axi_araddr(31 downto 0) => axi_protocol_0_m_axi_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => axi_protocol_0_m_axi_ARPROT(2 downto 0),
      m_axi_arready => axi_protocol_0_m_axi_ARREADY,
      m_axi_arvalid => axi_protocol_0_m_axi_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_protocol_0_m_axi_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => axi_protocol_0_m_axi_AWPROT(2 downto 0),
      m_axi_awready => axi_protocol_0_m_axi_AWREADY,
      m_axi_awvalid => axi_protocol_0_m_axi_AWVALID,
      m_axi_bready => axi_protocol_0_m_axi_BREADY,
      m_axi_bresp(1 downto 0) => axi_protocol_0_m_axi_BRESP(1 downto 0),
      m_axi_bvalid => axi_protocol_0_m_axi_BVALID,
      m_axi_rdata(31 downto 0) => axi_protocol_0_m_axi_RDATA(31 downto 0),
      m_axi_rready => axi_protocol_0_m_axi_RREADY,
      m_axi_rresp(1 downto 0) => axi_protocol_0_m_axi_RRESP(1 downto 0),
      m_axi_rvalid => axi_protocol_0_m_axi_RVALID,
      m_axi_wdata(31 downto 0) => axi_protocol_0_m_axi_WDATA(31 downto 0),
      m_axi_wready => axi_protocol_0_m_axi_WREADY,
      m_axi_wstrb(3 downto 0) => axi_protocol_0_m_axi_WSTRB(3 downto 0),
      m_axi_wvalid => axi_protocol_0_m_axi_WVALID,
      m_axis_tdata(7 downto 0) => axi_protocol_0_m_axis_tdata(7 downto 0),
      m_axis_tready => axi_uart_0_o_s_axis_tready,
      m_axis_tvalid => axi_protocol_0_m_axis_tvalid,
      rst_n => proc_sys_reset_0_peripheral_aresetn(0),
      s_axis_tdata(7 downto 0) => axi_uart_0_o_m_axis_tdata(7 downto 0),
      s_axis_tready => axi_protocol_0_s_axis_tready,
      s_axis_tvalid => axi_uart_0_o_m_axis_tvalid
    );
axi_smartconnect_0: component cadc_system_axi_smartconnect_0_0
     port map (
      M00_AXI_araddr(8 downto 0) => axi_smartconnect_0_M00_AXI_ARADDR(8 downto 0),
      M00_AXI_arprot(2 downto 0) => NLW_axi_smartconnect_0_M00_AXI_arprot_UNCONNECTED(2 downto 0),
      M00_AXI_arready => axi_smartconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_smartconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(8 downto 0) => axi_smartconnect_0_M00_AXI_AWADDR(8 downto 0),
      M00_AXI_awprot(2 downto 0) => NLW_axi_smartconnect_0_M00_AXI_awprot_UNCONNECTED(2 downto 0),
      M00_AXI_awready => axi_smartconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_smartconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_smartconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_smartconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_smartconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_smartconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_smartconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_smartconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_smartconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_smartconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_smartconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_smartconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_smartconnect_0_M00_AXI_WVALID,
      M01_AXI_araddr(8 downto 0) => axi_smartconnect_0_M01_AXI_ARADDR(8 downto 0),
      M01_AXI_arprot(2 downto 0) => NLW_axi_smartconnect_0_M01_AXI_arprot_UNCONNECTED(2 downto 0),
      M01_AXI_arready => axi_smartconnect_0_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_smartconnect_0_M01_AXI_ARVALID,
      M01_AXI_awaddr(8 downto 0) => axi_smartconnect_0_M01_AXI_AWADDR(8 downto 0),
      M01_AXI_awprot(2 downto 0) => NLW_axi_smartconnect_0_M01_AXI_awprot_UNCONNECTED(2 downto 0),
      M01_AXI_awready => axi_smartconnect_0_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_smartconnect_0_M01_AXI_AWVALID,
      M01_AXI_bready => axi_smartconnect_0_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_smartconnect_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_smartconnect_0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_smartconnect_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_smartconnect_0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_smartconnect_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_smartconnect_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_smartconnect_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_smartconnect_0_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_smartconnect_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_smartconnect_0_M01_AXI_WVALID,
      M02_AXI_araddr(8 downto 0) => axi_smartconnect_0_M02_AXI_ARADDR(8 downto 0),
      M02_AXI_arprot(2 downto 0) => NLW_axi_smartconnect_0_M02_AXI_arprot_UNCONNECTED(2 downto 0),
      M02_AXI_arready => axi_smartconnect_0_M02_AXI_ARREADY,
      M02_AXI_arvalid => axi_smartconnect_0_M02_AXI_ARVALID,
      M02_AXI_awaddr(8 downto 0) => axi_smartconnect_0_M02_AXI_AWADDR(8 downto 0),
      M02_AXI_awprot(2 downto 0) => NLW_axi_smartconnect_0_M02_AXI_awprot_UNCONNECTED(2 downto 0),
      M02_AXI_awready => axi_smartconnect_0_M02_AXI_AWREADY,
      M02_AXI_awvalid => axi_smartconnect_0_M02_AXI_AWVALID,
      M02_AXI_bready => axi_smartconnect_0_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_smartconnect_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => axi_smartconnect_0_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_smartconnect_0_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => axi_smartconnect_0_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_smartconnect_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => axi_smartconnect_0_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_smartconnect_0_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => axi_smartconnect_0_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_smartconnect_0_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => axi_smartconnect_0_M02_AXI_WVALID,
      M03_AXI_araddr(8 downto 0) => axi_smartconnect_0_M03_AXI_ARADDR(8 downto 0),
      M03_AXI_arprot(2 downto 0) => NLW_axi_smartconnect_0_M03_AXI_arprot_UNCONNECTED(2 downto 0),
      M03_AXI_arready => axi_smartconnect_0_M03_AXI_ARREADY,
      M03_AXI_arvalid => axi_smartconnect_0_M03_AXI_ARVALID,
      M03_AXI_awaddr(8 downto 0) => axi_smartconnect_0_M03_AXI_AWADDR(8 downto 0),
      M03_AXI_awprot(2 downto 0) => NLW_axi_smartconnect_0_M03_AXI_awprot_UNCONNECTED(2 downto 0),
      M03_AXI_awready => axi_smartconnect_0_M03_AXI_AWREADY,
      M03_AXI_awvalid => axi_smartconnect_0_M03_AXI_AWVALID,
      M03_AXI_bready => axi_smartconnect_0_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => axi_smartconnect_0_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => axi_smartconnect_0_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => axi_smartconnect_0_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => axi_smartconnect_0_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => axi_smartconnect_0_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => axi_smartconnect_0_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => axi_smartconnect_0_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => axi_smartconnect_0_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => axi_smartconnect_0_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => axi_smartconnect_0_M03_AXI_WVALID,
      M04_AXI_araddr(8 downto 0) => axi_smartconnect_0_M04_AXI_ARADDR(8 downto 0),
      M04_AXI_arprot(2 downto 0) => NLW_axi_smartconnect_0_M04_AXI_arprot_UNCONNECTED(2 downto 0),
      M04_AXI_arready => axi_smartconnect_0_M04_AXI_ARREADY,
      M04_AXI_arvalid => axi_smartconnect_0_M04_AXI_ARVALID,
      M04_AXI_awaddr(8 downto 0) => axi_smartconnect_0_M04_AXI_AWADDR(8 downto 0),
      M04_AXI_awprot(2 downto 0) => NLW_axi_smartconnect_0_M04_AXI_awprot_UNCONNECTED(2 downto 0),
      M04_AXI_awready => axi_smartconnect_0_M04_AXI_AWREADY,
      M04_AXI_awvalid => axi_smartconnect_0_M04_AXI_AWVALID,
      M04_AXI_bready => axi_smartconnect_0_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => axi_smartconnect_0_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => axi_smartconnect_0_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => axi_smartconnect_0_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => axi_smartconnect_0_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => axi_smartconnect_0_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => axi_smartconnect_0_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => axi_smartconnect_0_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => axi_smartconnect_0_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => axi_smartconnect_0_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => axi_smartconnect_0_M04_AXI_WVALID,
      M05_AXI_araddr(8 downto 0) => axi_smartconnect_0_M05_AXI_ARADDR(8 downto 0),
      M05_AXI_arprot(2 downto 0) => NLW_axi_smartconnect_0_M05_AXI_arprot_UNCONNECTED(2 downto 0),
      M05_AXI_arready => axi_smartconnect_0_M05_AXI_ARREADY,
      M05_AXI_arvalid => axi_smartconnect_0_M05_AXI_ARVALID,
      M05_AXI_awaddr(8 downto 0) => axi_smartconnect_0_M05_AXI_AWADDR(8 downto 0),
      M05_AXI_awprot(2 downto 0) => NLW_axi_smartconnect_0_M05_AXI_awprot_UNCONNECTED(2 downto 0),
      M05_AXI_awready => axi_smartconnect_0_M05_AXI_AWREADY,
      M05_AXI_awvalid => axi_smartconnect_0_M05_AXI_AWVALID,
      M05_AXI_bready => axi_smartconnect_0_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => axi_smartconnect_0_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => axi_smartconnect_0_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => axi_smartconnect_0_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => axi_smartconnect_0_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => axi_smartconnect_0_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => axi_smartconnect_0_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => axi_smartconnect_0_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => axi_smartconnect_0_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => axi_smartconnect_0_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => axi_smartconnect_0_M05_AXI_WVALID,
      M06_AXI_araddr(8 downto 0) => axi_smartconnect_0_M06_AXI_ARADDR(8 downto 0),
      M06_AXI_arprot(2 downto 0) => NLW_axi_smartconnect_0_M06_AXI_arprot_UNCONNECTED(2 downto 0),
      M06_AXI_arready => axi_smartconnect_0_M06_AXI_ARREADY,
      M06_AXI_arvalid => axi_smartconnect_0_M06_AXI_ARVALID,
      M06_AXI_awaddr(8 downto 0) => axi_smartconnect_0_M06_AXI_AWADDR(8 downto 0),
      M06_AXI_awprot(2 downto 0) => NLW_axi_smartconnect_0_M06_AXI_awprot_UNCONNECTED(2 downto 0),
      M06_AXI_awready => axi_smartconnect_0_M06_AXI_AWREADY,
      M06_AXI_awvalid => axi_smartconnect_0_M06_AXI_AWVALID,
      M06_AXI_bready => axi_smartconnect_0_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => axi_smartconnect_0_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => axi_smartconnect_0_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => axi_smartconnect_0_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => axi_smartconnect_0_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => axi_smartconnect_0_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => axi_smartconnect_0_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => axi_smartconnect_0_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => axi_smartconnect_0_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => axi_smartconnect_0_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => axi_smartconnect_0_M06_AXI_WVALID,
      M07_AXI_araddr(8 downto 0) => axi_smartconnect_0_M07_AXI_ARADDR(8 downto 0),
      M07_AXI_arprot(2 downto 0) => NLW_axi_smartconnect_0_M07_AXI_arprot_UNCONNECTED(2 downto 0),
      M07_AXI_arready => axi_smartconnect_0_M07_AXI_ARREADY,
      M07_AXI_arvalid => axi_smartconnect_0_M07_AXI_ARVALID,
      M07_AXI_awaddr(8 downto 0) => axi_smartconnect_0_M07_AXI_AWADDR(8 downto 0),
      M07_AXI_awprot(2 downto 0) => NLW_axi_smartconnect_0_M07_AXI_awprot_UNCONNECTED(2 downto 0),
      M07_AXI_awready => axi_smartconnect_0_M07_AXI_AWREADY,
      M07_AXI_awvalid => axi_smartconnect_0_M07_AXI_AWVALID,
      M07_AXI_bready => axi_smartconnect_0_M07_AXI_BREADY,
      M07_AXI_bresp(1 downto 0) => axi_smartconnect_0_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid => axi_smartconnect_0_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => axi_smartconnect_0_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready => axi_smartconnect_0_M07_AXI_RREADY,
      M07_AXI_rresp(1 downto 0) => axi_smartconnect_0_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid => axi_smartconnect_0_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => axi_smartconnect_0_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready => axi_smartconnect_0_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => axi_smartconnect_0_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid => axi_smartconnect_0_M07_AXI_WVALID,
      M08_AXI_araddr(8 downto 0) => axi_smartconnect_0_M08_AXI_ARADDR(8 downto 0),
      M08_AXI_arprot(2 downto 0) => NLW_axi_smartconnect_0_M08_AXI_arprot_UNCONNECTED(2 downto 0),
      M08_AXI_arready => axi_smartconnect_0_M08_AXI_ARREADY,
      M08_AXI_arvalid => axi_smartconnect_0_M08_AXI_ARVALID,
      M08_AXI_awaddr(8 downto 0) => axi_smartconnect_0_M08_AXI_AWADDR(8 downto 0),
      M08_AXI_awprot(2 downto 0) => NLW_axi_smartconnect_0_M08_AXI_awprot_UNCONNECTED(2 downto 0),
      M08_AXI_awready => axi_smartconnect_0_M08_AXI_AWREADY,
      M08_AXI_awvalid => axi_smartconnect_0_M08_AXI_AWVALID,
      M08_AXI_bready => axi_smartconnect_0_M08_AXI_BREADY,
      M08_AXI_bresp(1 downto 0) => axi_smartconnect_0_M08_AXI_BRESP(1 downto 0),
      M08_AXI_bvalid => axi_smartconnect_0_M08_AXI_BVALID,
      M08_AXI_rdata(31 downto 0) => axi_smartconnect_0_M08_AXI_RDATA(31 downto 0),
      M08_AXI_rready => axi_smartconnect_0_M08_AXI_RREADY,
      M08_AXI_rresp(1 downto 0) => axi_smartconnect_0_M08_AXI_RRESP(1 downto 0),
      M08_AXI_rvalid => axi_smartconnect_0_M08_AXI_RVALID,
      M08_AXI_wdata(31 downto 0) => axi_smartconnect_0_M08_AXI_WDATA(31 downto 0),
      M08_AXI_wready => axi_smartconnect_0_M08_AXI_WREADY,
      M08_AXI_wstrb(3 downto 0) => axi_smartconnect_0_M08_AXI_WSTRB(3 downto 0),
      M08_AXI_wvalid => axi_smartconnect_0_M08_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => axi_protocol_0_m_axi_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => axi_protocol_0_m_axi_ARPROT(2 downto 0),
      S00_AXI_arready => axi_protocol_0_m_axi_ARREADY,
      S00_AXI_arvalid => axi_protocol_0_m_axi_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_protocol_0_m_axi_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => axi_protocol_0_m_axi_AWPROT(2 downto 0),
      S00_AXI_awready => axi_protocol_0_m_axi_AWREADY,
      S00_AXI_awvalid => axi_protocol_0_m_axi_AWVALID,
      S00_AXI_bready => axi_protocol_0_m_axi_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_protocol_0_m_axi_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_protocol_0_m_axi_BVALID,
      S00_AXI_rdata(31 downto 0) => axi_protocol_0_m_axi_RDATA(31 downto 0),
      S00_AXI_rready => axi_protocol_0_m_axi_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_protocol_0_m_axi_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_protocol_0_m_axi_RVALID,
      S00_AXI_wdata(31 downto 0) => axi_protocol_0_m_axi_WDATA(31 downto 0),
      S00_AXI_wready => axi_protocol_0_m_axi_WREADY,
      S00_AXI_wstrb(3 downto 0) => axi_protocol_0_m_axi_WSTRB(3 downto 0),
      S00_AXI_wvalid => axi_protocol_0_m_axi_WVALID,
      aclk => sys_clk,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0)
    );
axi_uart_0: component cadc_system_axi_uart_0_0
     port map (
      i_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      i_clk => sys_clk,
      i_m_axis_tready => axi_protocol_0_s_axis_tready,
      i_rx => uart_rxd,
      i_s_axis_tdata(7 downto 0) => axi_protocol_0_m_axis_tdata(7 downto 0),
      i_s_axis_tvalid => axi_protocol_0_m_axis_tvalid,
      o_m_axis_tdata(7 downto 0) => axi_uart_0_o_m_axis_tdata(7 downto 0),
      o_m_axis_tvalid => axi_uart_0_o_m_axis_tvalid,
      o_s_axis_tready => axi_uart_0_o_s_axis_tready,
      o_tx => uart_txd
    );
cadc_top_0: component cadc_system_cadc_top_0_0
     port map (
      i_channel_active => axi_gpio_digital_gpio2_io_o(0),
      i_clk_master => clock_divider_0_o_clk_div,
      i_rst => util_vector_logic_0_Res(0),
      i_sensor_analog(19 downto 0) => axi_gpio_analog_gpio_io_o(19 downto 0),
      i_sensor_digital(19 downto 0) => axi_gpio_digital_gpio_io_o(19 downto 0),
      i_sensor_ps(19 downto 0) => axi_gpio_ps_gpio_io_o(19 downto 0),
      i_sensor_qc(19 downto 0) => axi_gpio_qc_gpio_io_o(19 downto 0),
      i_sensor_tat(19 downto 0) => axi_gpio_tat_gpio_io_o(19 downto 0),
      o_bit_status => cadc_top_0_o_bit_status,
      o_fail_detect => cadc_top_0_o_fail_detect,
      o_out_airspd(19 downto 0) => cadc_top_0_o_out_airspd(19 downto 0),
      o_out_alt(19 downto 0) => cadc_top_0_o_out_alt(19 downto 0),
      o_out_flap(19 downto 0) => cadc_top_0_o_out_flap(19 downto 0),
      o_out_glove(19 downto 0) => cadc_top_0_o_out_glove(19 downto 0),
      o_out_mach(19 downto 0) => cadc_top_0_o_out_mach(19 downto 0),
      o_out_vspd(19 downto 0) => cadc_top_0_o_out_vspd(19 downto 0),
      o_out_wing(19 downto 0) => cadc_top_0_o_out_wing(19 downto 0)
    );
clk_wiz_0: component cadc_system_clk_wiz_0_0
     port map (
      clk_in1 => sys_clk,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => clk_wiz_0_locked,
      resetn => sys_rst_n
    );
clock_divider_0: component cadc_system_clock_divider_0_0
     port map (
      i_clk => clk_wiz_0_clk_out1,
      i_rst_n => proc_sys_reset_0_peripheral_aresetn(0),
      o_clk_div => clock_divider_0_o_clk_div
    );
proc_sys_reset_0: component cadc_system_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => sys_rst_n,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => sys_clk
    );
util_vector_logic_0: component cadc_system_util_vector_logic_0_0
     port map (
      Op1(0) => proc_sys_reset_0_peripheral_aresetn(0),
      Res(0) => util_vector_logic_0_Res(0)
    );
xlconcat_status: component cadc_system_xlconcat_status_0
     port map (
      In0(0) => cadc_top_0_o_bit_status,
      In1(0) => cadc_top_0_o_fail_detect,
      dout(1 downto 0) => xlconcat_status_dout(1 downto 0)
    );
end STRUCTURE;
