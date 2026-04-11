# SL — Steering Logic (PN 944118)

## Module Requirement Specification

### 1. Overview

| Attribute | Value |
|-----------|-------|
| Part Number | 944118 |
| Device Count | 771 transistors |
| Function | Combinational data routing fabric (multiplexer network) |
| Type | Purely combinational (no registers) |

### 2. Functional Description

The Steering Logic (SL) is a **three-channel serial digital data multiplexer**. Information is shifted serially through the device during WO. A 15-bit control word is accepted during WA that specifies which input or input combination is steered to each of three data outputs.

#### 2.1 Original Chip Details
- **Part Number:** 944118
- **Active MOS Devices:** 771
- **Chip Size:** 128 × 133 mils
- **Package:** 24-pin dual in-line
- **Inputs:** EXT1 through EXT13 (13 data inputs), T18, WO, CW (control word), Φ1, Φ2, VDD, Ground
- **Outputs:** Output 1 (M/D), Output 2 (D/Z), Output 3 (STOR), CW Out (delayed by 15 bits)

#### 2.2 Control Word Format
The 15-bit control word occupies the last 15 bits of the 20-bit CW. From LSB:
- **Bits [3:0]:** Selection for Output 1 (4 bits → 16 codes)
- **Bits [7:4]:** Selection for Output 2 (4 bits → 16 codes)
- **Bits [14:8]:** Selection for Output 3 (7 bits → 128 codes)

#### 2.3 Output 1 Selection Codes

| Code | Selected to Output 1 |
|------|---------------------|
| 0000 | EXT1 |
| 0001 | EXT2 |
| 0010 | EXT3 |
| 0011 | EXT4 |
| 0100 | EXT5 |
| 0101 | EXT6 |
| 0110 | EXT7 |
| 0111 | EXT8 |
| 1000 | EXT9 |
| 1001 | EXT10 |
| 1010 | EXT13 |
| 1011 | EXT1 |
| 1100 | EXT9 + EXT4 |
| 1101 | EXT10 + EXT4 |
| 1110 | EXT4 + EXT8 |
| 1111 | EXT2 (or EXT8) |

#### 2.4 Output 2 Selection Codes

| Code | Selected to Output 2 |
|------|---------------------|
| 0000 | EXT1 |
| 0001 | EXT2 |
| 0010 | EXT3 |
| 0011 | EXT4 |
| 0100 | EXT5 |
| 0101 | EXT6 |
| 0110 | EXT7 |
| 0111 | EXT8 |
| 1000 | EXT9 |
| 1001 | EXT10 |
| 1010 | T19 |
| 1011 | EXT1 |
| 1100 | EXT9 + EXT4 |
| 1101 | EXT10 + EXT4 |
| 1110 | EXT4 + EXT8 |
| 1111 | EXT2 (or EXT8) |

#### 2.5 Output 3 Selection Codes (7-bit, expanded)

| Code (7-bit) | Selected to Output 3 |
|-------------|---------------------|
| 0000000 | EXT1 |
| 0000001 | EXT2 |
| 0000010 | EXT3 |
| 0000011 | EXT4 |
| 0000100 | EXT5 |
| 0000101 | EXT6 |
| 0000110 | EXT7 |
| 0000111 | EXT9 |
| ... | Extended combinations with EXT additions (Z1, Z2 intermediate values) |

The Z-intermediate values allow compound routing:
- Z1 = EXT12 + EXT8
- Z2 = Z1 + EXT2, or Z1 - EXT2, Z1 + EXT4, Z1 - EXT4

#### 2.6 FPGA Implementation
For FPGA, the 13 external inputs (EXT1–EXT13) map to the data sources from other modules:

| Source | Width | Description |
|--------|-------|-------------|
| `src_ras` | 20 | Data read from RAS (scratchpad) |
| `src_acc` | 20 | Current ACC value from SLF |
| `src_tmp` | 20 | Current TMP register value from SLF |
| `src_pmu` | 20 | Result from PMU (multiplier) |
| `src_pdu_q` | 20 | Quotient from PDU (divider) |
| `src_pdu_r` | 20 | Remainder from PDU (divider) |
| `src_io_in` | 20 | Data from I/O Bridge (sensor input) |
| `src_const` | 20 | Constant from ROM data word |

#### 2.2 Destination Multiplexers

**ACC Source Select (`sel_acc_src`):**
Selects which source feeds the ALU/ACC input. This is a critical path as it determines what data the ALU operates on.

| sel_acc_src | Source |
|-------------|--------|
| 000 | src_ras |
| 001 | src_pmu |
| 010 | src_pdu_q |
| 011 | src_pdu_r |
| 100 | src_io_in |
| 101 | src_const |
| 110 | src_tmp |
| 111 | (reserved / zero) |

**RAS Write Source Select (`sel_ras_src`):**
Selects which source feeds the RAS write data port.

| sel_ras_src | Source |
|-------------|--------|
| 00 | src_acc |
| 01 | src_pmu |
| 10 | src_pdu_q |
| 11 | src_io_in |

**I/O Output Source Select (`sel_io_src`):**
Selects which source feeds the I/O Bridge output.

| sel_io_src | Source |
|------------|--------|
| 00 | src_acc |
| 01 | src_ras |
| 10 | src_pmu |
| 11 | src_pdu_q |

### 3. Interface Specification

#### 3.0 I/O Style
**Bit-Serial:** Single-bit data ports shift serially during WO (Word Out) phase, LSB first. 
Control signals are **parallel** from the microword, latched at WA (Word Address) T0.

#### 3.1 Port List

| Port | Direction | Width | Description |
|------|-----------|-------|-------------|
| **Clock and Control** | | | |
| `i_clk` | Input | 1 | System clock |
| `i_rst` | Input | 1 | Synchronous reset |
| `i_phi2` | Input | 1 | Shift clock phase (operations on rising edge) |
| `i_word_type` | Input | 1 | '0'=WA (Word Address), '1'=WO (Word Out) |
| `i_t0` | Input | 1 | First bit time of 20-bit word |
| `i_t19` | Input | 1 | Last bit time of 20-bit word |
| **Serial Data Sources** | | | |
| `i_src_ras_bit` | Input | 1 | RAS read data (bit-serial) |
| `i_src_acc_bit` | Input | 1 | ACC output (bit-serial) |
| `i_src_tmp_bit` | Input | 1 | TMP output (bit-serial) |
| `i_src_pmu_bit` | Input | 1 | PMU product (bit-serial) |
| `i_src_pduq_bit` | Input | 1 | PDU quotient (bit-serial) |
| `i_src_pdur_bit` | Input | 1 | PDU remainder (bit-serial) |
| `i_src_io_bit` | Input | 1 | I/O input (bit-serial) |
| `i_src_const_bit` | Input | 1 | Data ROM constant (bit-serial) |
| **Parallel Control (from microword)** | | | |
| `i_sel_acc` | Input | 4 | ACC source select (bits 7-10 of microword) |
| `i_sel_ras` | Input | 4 | RAS write source select (bits 11-14) |
| `i_sel_io` | Input | 3 | I/O output source select (bits 15-17) |
| **Serial Data Outputs** | | | |
| `o_acc_in_bit` | Output | 1 | Selected data to SLF ACC input |
| `o_ras_wr_bit` | Output | 1 | Selected data to RAS write port |
| `o_io_out_bit` | Output | 1 | Selected data to I/O Bridge output |

#### 3.2 VHDL Entity Declaration

```vhdl
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sl IS
  PORT (
    i_clk          : IN  STD_LOGIC;
    i_rst          : IN  STD_LOGIC;
    -- Timing inputs
    i_phi2         : IN  STD_LOGIC;   -- Shift on phi2
    i_word_type    : IN  STD_LOGIC;   -- '0'=WA, '1'=WO
    i_t0           : IN  STD_LOGIC;   -- First bit of word
    i_t19          : IN  STD_LOGIC;   -- Last bit of word
    -- Serial data source inputs (active during WO)
    i_src_ras_bit  : IN  STD_LOGIC;   -- RAS read data
    i_src_acc_bit  : IN  STD_LOGIC;   -- ACC output
    i_src_tmp_bit  : IN  STD_LOGIC;   -- TMP output
    i_src_pmu_bit  : IN  STD_LOGIC;   -- PMU product
    i_src_pduq_bit : IN  STD_LOGIC;   -- PDU quotient
    i_src_pdur_bit : IN  STD_LOGIC;   -- PDU remainder
    i_src_io_bit   : IN  STD_LOGIC;   -- I/O input
    i_src_const_bit: IN  STD_LOGIC;   -- Data ROM constant
    -- Parallel control (from microword)
    i_sel_acc      : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);  -- ACC source
    i_sel_ras      : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);  -- RAS write source
    i_sel_io       : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);  -- IO output source
    -- Serial data outputs (active during WO)
    o_acc_in_bit   : OUT STD_LOGIC;   -- To SLF ACC input
    o_ras_wr_bit   : OUT STD_LOGIC;   -- To RAS write data
    o_io_out_bit   : OUT STD_LOGIC    -- To I/O output
  );
END ENTITY sl;
```

### 4. Functional Requirements

| Req ID | Requirement | Priority |
|--------|-------------|----------|
| SL-F-001 | Shall latch parallel control inputs at WA T0 (i_phi2 = '1', i_word_type = '0', i_t0 = '1') | Must |
| SL-F-002 | Shall route one of 8 serial sources to ACC output per `i_sel_acc[2:0]` | Must |
| SL-F-003 | Shall route one of 4 serial sources to RAS write output per `i_sel_ras[1:0]` | Must |
| SL-F-004 | Shall route one of 4 serial sources to I/O output per `i_sel_io[1:0]` | Must |
| SL-F-005 | All three output muxes shall operate independently during WO | Must |
| SL-F-006 | Same serial source may be routed to multiple destinations simultaneously | Must |
| SL-F-007 | Serial selection shall be combinational once control is latched | Must |
| SL-F-008 | Reserved select values shall output zero | Should |
| SL-F-009 | Outputs shall be valid on each i_phi2 rising edge during WO | Must |

### 5. Verification Tests

#### 5.1 ACC Source Selection Tests

| Test ID | Description | sel_acc_src | Expected Output |
|---------|-------------|-------------|-----------------|
| SL-T-001 | Route RAS to ACC | 000 | src_ras value |
| SL-T-002 | Route PMU to ACC | 001 | src_pmu value |
| SL-T-003 | Route PDU quotient to ACC | 010 | src_pdu_q value |
| SL-T-004 | Route PDU remainder to ACC | 011 | src_pdu_r value |
| SL-T-005 | Route I/O input to ACC | 100 | src_io_in value |
| SL-T-006 | Route constant to ACC | 101 | src_const value |
| SL-T-007 | Route TMP to ACC | 110 | src_tmp value |
| SL-T-008 | Reserved code 111 | 111 | 0x00000 |

#### 5.2 RAS Source Selection Tests

| Test ID | Description | sel_ras_src | Expected Output |
|---------|-------------|-------------|-----------------|
| SL-T-010 | Route ACC to RAS | 00 | src_acc value |
| SL-T-011 | Route PMU to RAS | 01 | src_pmu value |
| SL-T-012 | Route PDU quotient to RAS | 10 | src_pdu_q value |
| SL-T-013 | Route I/O input to RAS | 11 | src_io_in value |

#### 5.3 I/O Source Selection Tests

| Test ID | Description | sel_io_src | Expected Output |
|---------|-------------|------------|-----------------|
| SL-T-020 | Route ACC to I/O | 00 | src_acc value |
| SL-T-021 | Route RAS to I/O | 01 | src_ras value |
| SL-T-022 | Route PMU to I/O | 10 | src_pmu value |
| SL-T-023 | Route PDU quotient to I/O | 11 | src_pdu_q value |

#### 5.4 Independence Tests

| Test ID | Description | Criteria |
|---------|-------------|----------|
| SL-T-030 | All three muxes select different sources | Each output reflects its selected source |
| SL-T-031 | All three muxes select same source | All outputs identical |
| SL-T-032 | Change one select, others stable | Only changed output updates |

#### 5.5 Data Integrity Tests

| Test ID | Description | Criteria |
|---------|-------------|----------|
| SL-T-040 | All zeros through each path | Output = 0x00000 |
| SL-T-041 | All ones through each path | Output = 0xFFFFF |
| SL-T-042 | Unique pattern through each path | All 20 bits correctly routed |
| SL-T-043 | Walking ones through each source | Bit-level routing verification |

#### 5.6 Testbench Structure

```vhdl
ENTITY sl_tb IS
END ENTITY sl_tb;

ARCHITECTURE sim OF sl_tb IS
  CONSTANT CLK_PERIOD : TIME := 666 ns;  -- 1.5 MHz
  
  SIGNAL clk, rst        : STD_LOGIC := '0';
  SIGNAL phi2, word_type : STD_LOGIC := '0';
  SIGNAL t0, t19         : STD_LOGIC := '0';
  -- Serial data sources
  SIGNAL src_ras_bit, src_acc_bit, src_tmp_bit : STD_LOGIC := '0';
  SIGNAL src_pmu_bit, src_pduq_bit, src_pdur_bit : STD_LOGIC := '0';
  SIGNAL src_io_bit, src_const_bit : STD_LOGIC := '0';
  -- Parallel control
  SIGNAL sel_acc : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
  SIGNAL sel_ras : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
  SIGNAL sel_io  : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
  -- Serial outputs
  SIGNAL acc_in_bit, ras_wr_bit, io_out_bit : STD_LOGIC;
  
BEGIN
  clk <= NOT clk AFTER CLK_PERIOD / 2;
  
  uut: ENTITY work.sl
    PORT MAP (
      i_clk => clk, i_rst => rst,
      i_phi2 => phi2, i_word_type => word_type,
      i_t0 => t0, i_t19 => t19,
      i_src_ras_bit => src_ras_bit,
      i_src_acc_bit => src_acc_bit,
      i_src_tmp_bit => src_tmp_bit,
      i_src_pmu_bit => src_pmu_bit,
      i_src_pduq_bit => src_pduq_bit,
      i_src_pdur_bit => src_pdur_bit,
      i_src_io_bit => src_io_bit,
      i_src_const_bit => src_const_bit,
      i_sel_acc => sel_acc,
      i_sel_ras => sel_ras,
      i_sel_io => sel_io,
      o_acc_in_bit => acc_in_bit,
      o_ras_wr_bit => ras_wr_bit,
      o_io_out_bit => io_out_bit
    );
  
  stim: PROCESS
  BEGIN
    rst <= '1'; WAIT FOR CLK_PERIOD * 2;
    rst <= '0'; WAIT FOR CLK_PERIOD;
    
    -- Set control during WA phase
    word_type <= '0';  -- WA
    sel_acc <= "0000"; sel_ras <= "0000"; sel_io <= "000";
    t0 <= '1'; phi2 <= '1';
    WAIT FOR CLK_PERIOD;
    t0 <= '0'; phi2 <= '0';
    
    -- Apply serial data during WO phase
    word_type <= '1';  -- WO
    FOR bit_idx IN 0 TO 19 LOOP
      -- Set different patterns on each source
      src_ras_bit <= '1';
      src_acc_bit <= '0';
      t0 <= '1' WHEN bit_idx = 0 ELSE '0';
      t19 <= '1' WHEN bit_idx = 19 ELSE '0';
      phi2 <= '1';
      WAIT FOR CLK_PERIOD / 2;
      phi2 <= '0';
      WAIT FOR CLK_PERIOD / 2;
    END LOOP;
    
    REPORT "Test complete" SEVERITY NOTE;
    WAIT;
  END PROCESS stim;
END ARCHITECTURE sim;
```
        
        -- Test RAS source selection
        sel_acc_src <= "000";
        for i in 0 to 3 loop
            sel_ras_src <= std_logic_vector(to_unsigned(i, 2));
            wait for 10 ns;
            -- Verify ras_wr_data matches expected source
        end loop;
        
        -- Test I/O source selection
        for i in 0 to 3 loop
            sel_io_src <= std_logic_vector(to_unsigned(i, 2));
            wait for 10 ns;
            -- Verify io_out matches expected source
        end loop;
        
        report "SL tests complete" severity note;
        wait;
    end process;
end architecture sim;
```

---

## 8. Source References

All requirements and design details in this specification are traceable to the following source documents. OCR text extractions are in the `ocr_text/` folder.

### 8.1 Primary Sources

| Source Document | Pages / Sections | OCR Text File | Information Extracted |
|----------------|-----------------|---------------|----------------------|
| **p1-4-to-p1-34-.pdf** | Report pp. 1-26 to 1-31 | `ocr_text/p1-4-to-p1-34-.txt` | SL circuit function — 3-channel serial digital data multiplexer; 15-bit CW; Output 1 selection codes (4 bits, 16 codes: EXT1–EXT10, EXT13, sums); Output 2 codes (4 bits, incl. T19); Output 3 codes (7 bits, extended with Z1/Z2 intermediates, A+B+C); addition/subtraction during transfer; 771 devices; 128×133 mils; 24-pin DIP; PN 944118 |
| **Rays-…-Chapter-5-944118-Steering.pdf** | Pages 2–4+ | `ocr_text/Rays-F14A-CADC-…-Chapter-5-944118-Steering.txt` | Detailed logical spec: 15-bit CW during WA (first 5 bits pass-through to CW OUT), 13 data inputs (EXT1–EXT13), 4 outputs (Output 1/2/3, CW Out), complete selection code tables, T18 signal, addition/subtraction capability |
| **ap1-26-97.pdf** | pp. 9–12 | `ocr_text/ap1-26-97.txt` | **Detailed** SL functional description — 3-channel multiplexer, 15-bit instruction word (4+4+7 bits), complete Output 1/2/3 code tables with all EXT mappings, Output 3 A+B+C addition, CW pass-through, zero-time add/subtract |
| **CADC_Module_Specification.pdf** | Section 5 | *(text-layer PDF)* | Reconstructed FPGA interface: src_ras, src_acc, src_tmp, src_pmu, src_pdu_q, src_pdu_r, src_io_in, src_const, sel controls, routed outputs |

### 8.2 Supporting Sources

| Source Document | Pages / Sections | OCR Text File | Information Extracted |
|----------------|-----------------|---------------|----------------------|
| **p1-35-to-p2-28-.pdf** | Report pp. 1-40 to 1-41 | `ocr_text/p1-35-to-p2-28-.txt` | Module CW breakdown — how 20-bit CW splits: first 5 bits → RAS/SLF, last 15 bits → SL; module-specific bit assignments |
| **Rays-…-Chapter-7-System-Info.pdf** | p. 3 | `ocr_text/Rays-…-Chapter-7-System-Info.txt` | Pin assignments (944118, 24-pin): pin 1=EXT12, 2=EXT2, 3=EXT4, 6=CW OUT, 7=OUT 2, 8=OUT 3, 14=EXT10, 18=EXT1, 20=EXT13 |
| **toc-illustrations.pdf** | pp. 1–4 | *(text-layer PDF)* | Figure/page cross-references for SL in Report 71-7266 |
