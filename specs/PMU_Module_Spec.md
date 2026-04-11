# PMU — Parallel Multiplier Unit (PN 944111)

## Module Requirement Specification

### 1. Overview

| Attribute | Value |
|-----------|-------|
| Part Number | 944111 |
| Device Count | 1,063 transistors |
| Function | 20×20-bit signed fractional multiplication |
| Algorithm | Parallel multiply (FPGA DSP), Booth's (original) |
| I/O Style | Bit-serial I/O with parallel internal computation |

### 2. Functional Description

The PMU performs **20-bit by 20-bit signed fractional multiplication** using a Booth-style algorithm. The result is a 20-bit signed fractional product (upper 20 bits of the 40-bit raw product, with appropriate rounding).

#### 2.1 Algorithm — Booth's Multiplication
Booth's algorithm reduces the number of partial products by encoding runs of 1's in the multiplier. For each pair of adjacent multiplier bits:

| B(i) | B(i-1) | Action |
|------|--------|--------|
| 0 | 0 | No operation (shift only) |
| 0 | 1 | Add multiplicand |
| 1 | 0 | Subtract multiplicand |
| 1 | 1 | No operation (shift only) |

This is performed iteratively over the 20 bits of the multiplier, producing a 40-bit raw result. The upper 20 bits (with sign extension and rounding) form the final result.

#### 2.2 Fractional Multiplication
Since both operands are fractional fixed-point numbers in [-1.0, +1.0):
- The product of two 20-bit fractional numbers produces a 40-bit result
- The PMU returns the upper 20 bits (bits [39:20] of the 40-bit result)
- This effectively performs: `result = (A × B) >> 20` with rounding

#### 2.3 Timing (Bit-Serial Architecture)
The PMU operates on the same timing as all CADC modules:
- **WO (Word Out):** Operands shift in serially (20 bits LSB-first), previous product shifts out
- **WO T19:** Operands latched for computation
- **WA T0:** Parallel multiply executes (single FPGA DSP cycle)
- **WA T0:** Product loaded to output shift register
- **Next WO:** Product shifts out while new operands shift in
- `o_busy` briefly asserts during parallel multiply (typically 1 master clock)

### 3. Interface Specification

#### 3.1 Port List

| Port | Direction | Width | Description |
|------|-----------|-------|-------------|
| `i_clk` | Input | 1 | System clock (1.5 MHz master) |
| `i_rst` | Input | 1 | Synchronous reset (active high) |
| `i_phi2` | Input | 1 | Phase 2 clock — shift on rising edge |
| `i_word_type` | Input | 1 | '0'=WA (compute), '1'=WO (shift I/O) |
| `i_t0` | Input | 1 | First bit time of word (bit 0) |
| `i_t19` | Input | 1 | Last bit time of word (bit 19) |
| `i_mcand_bit` | Input | 1 | Serial multiplicand input (during WO) |
| `i_mplier_bit` | Input | 1 | Serial multiplier input (during WO) |
| `o_prod_bit` | Output | 1 | Serial product output (during WO) |
| `o_busy` | Output | 1 | High during multiplication (brief) |

#### 3.2 VHDL Entity Declaration

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pmu is
    port (
        i_clk        : in  std_logic;
        i_rst        : in  std_logic;
        -- Timing inputs
        i_phi2       : in  std_logic;
        i_word_type  : in  std_logic;  -- '0'=WA, '1'=WO
        i_t0         : in  std_logic;
        i_t19        : in  std_logic;
        -- Serial data inputs
        i_mcand_bit  : in  std_logic;
        i_mplier_bit : in  std_logic;
        -- Serial data output
        o_prod_bit   : out std_logic;
        -- Status
        o_busy       : out std_logic
    );
end entity pmu;
```

### 4. Functional Requirements

| Req ID | Requirement | Priority |
|--------|-------------|----------|
| PMU-F-001 | Shall perform 20×20-bit signed fractional multiplication | Must |
| PMU-F-002 | Shall produce a 20-bit result from upper bits of 40-bit product | Must |
| PMU-F-003 | Shall correctly handle multiplication by zero | Must |
| PMU-F-004 | Shall correctly handle multiplication by +1 (0x7FFFF in fractional) | Must |
| PMU-F-005 | Shall correctly handle multiplication by -1 (0x80000) | Must |
| PMU-F-006 | Shall correctly handle the most negative × most negative case | Must |
| PMU-F-007 | Shall assert `o_busy` briefly during parallel multiply | Must |
| PMU-F-008 | Shall shift operands in during WO phase (LSB first) | Must |
| PMU-F-009 | Shall complete multiplication within WA T0 (single DSP cycle) | Must |
| PMU-F-010 | Result shall be rounded to nearest (round half up) | Should |
| PMU-F-011 | Shall latch operands at WO T19 for computation | Must |
| PMU-F-012 | Shall load product to output shift register at WA T0 | Must |

### 5. Verification Tests

#### 5.1 Basic Functionality Tests

| Test ID | Description | Input A | Input B | Expected Result |
|---------|-------------|---------|---------|-----------------|
| PMU-T-001 | Zero × Zero | 0x00000 | 0x00000 | 0x00000 |
| PMU-T-002 | Positive × Zero | 0x40000 (+0.5) | 0x00000 | 0x00000 |
| PMU-T-003 | 0.5 × 0.5 | 0x40000 | 0x40000 | 0x10000 (0.25) |
| PMU-T-004 | 0.5 × -0.5 | 0x40000 | 0xC0000 | 0xF0000 (-0.25) |
| PMU-T-005 | -0.5 × -0.5 | 0xC0000 | 0xC0000 | 0x10000 (+0.25) |
| PMU-T-006 | Max positive × Max positive | 0x7FFFF | 0x7FFFF | ~0x3FFFF |
| PMU-T-007 | Max negative × Max positive | 0x80000 | 0x7FFFF | ~0x80001 |
| PMU-T-008 | Max negative × Max negative | 0x80000 | 0x80000 | 0x7FFFF (saturate/overflow case) |
| PMU-T-009 | Unity approximation × value | 0x7FFFF | 0x40000 | ~0x40000 |

#### 5.2 Booth's Algorithm Edge Cases

| Test ID | Description | Notes |
|---------|-------------|-------|
| PMU-T-010 | Alternating bit pattern 0xAAAAA × 0x55555 | Tests all Booth transitions |
| PMU-T-011 | All ones pattern 0xFFFFF × 0xFFFFF | -1/524288 × -1/524288 |
| PMU-T-012 | Single bit set in each position | Verify each bit position contributes correctly |

#### 5.3 Timing Tests

#### 5.3 Timing Tests (Bit-Serial)

| Test ID | Description | Criteria |
|---------|-------------|----------|
| PMU-T-020 | Busy signal assertion | `o_busy` high briefly during WA T0 |
| PMU-T-021 | Operand latching | Operands captured at WO T19 |
| PMU-T-022 | Product available | Product in output SR after WA T0 |
| PMU-T-023 | Back-to-back operations | Consecutive WA+WO cycles produce correct results |
| PMU-T-024 | Reset during operation | `i_rst` clears state, zeros output SR |

#### 5.4 Testbench Structure (Bit-Serial)

```vhdl
entity pmu_tb is
end entity pmu_tb;

architecture sim of pmu_tb is
    constant CLK_PERIOD : time := 667 ns;  -- 1.5 MHz master clock
    
    signal clk, rst, phi2, word_type, t0, t19 : std_logic := '0';
    signal mcand_bit, mplier_bit, prod_bit, busy : std_logic;
    signal product_sr : std_logic_vector(19 downto 0) := (others => '0');
    signal phase : unsigned(1 downto 0) := "00";
begin
    clk <= not clk after CLK_PERIOD / 2;
    
    -- Generate phi2 (every 4th master clock)
    phi_proc: process(clk)
    begin
        if rising_edge(clk) then
            phase <= phase + 1;
            phi2 <= '1' when phase = "10" else '0';
        end if;
    end process;
    
    uut: entity work.pmu
        port map (
            i_clk => clk, i_rst => rst, i_phi2 => phi2,
            i_word_type => word_type, i_t0 => t0, i_t19 => t19,
            i_mcand_bit => mcand_bit, i_mplier_bit => mplier_bit,
            o_prod_bit => prod_bit, o_busy => busy
        );
    
    stim: process
        procedure run_wo_phase(
            mcand_val, mplier_val : std_logic_vector(19 downto 0)
        ) is
            variable v_mcand, v_mplier : std_logic_vector(19 downto 0);
        begin
            v_mcand := mcand_val;
            v_mplier := mplier_val;
            word_type <= '1';
            for bit in 0 to 19 loop
                t0 <= '1' when bit = 0 else '0';
                t19 <= '1' when bit = 19 else '0';
                mcand_bit <= v_mcand(0);
                mplier_bit <= v_mplier(0);
                -- Capture output
                wait until rising_edge(clk) and phase = "01";
                product_sr <= prod_bit & product_sr(19 downto 1);
                wait until rising_edge(clk) and phase = "10";
                wait until rising_edge(clk);
                v_mcand := '0' & v_mcand(19 downto 1);
                v_mplier := '0' & v_mplier(19 downto 1);
            end loop;
        end procedure;
        
        procedure run_wa_phase is
        begin
            word_type <= '0';
            for bit in 0 to 19 loop
                t0 <= '1' when bit = 0 else '0';
                t19 <= '1' when bit = 19 else '0';
                for i in 0 to 3 loop
                    wait until rising_edge(clk);
                end loop;
            end loop;
        end procedure;
        
        procedure do_multiply(
            a, b, exp_p : std_logic_vector(19 downto 0);
            name : string
        ) is
        begin
            run_wa_phase;
            run_wo_phase(a, b);
            run_wa_phase;
            run_wo_phase(x"00000", x"00000");
            wait for 1 ns;
            assert product_sr = exp_p
                report name & " FAILED" severity error;
        end procedure;
    begin
        rst <= '1';
        wait for 5 * CLK_PERIOD;
        rst <= '0';
        wait until phase = "00" and rising_edge(clk);
        
        do_multiply(x"00000", x"00000", x"00000", "PMU-T-001");  -- 0*0
        do_multiply(x"40000", x"40000", x"10000", "PMU-T-003");  -- 0.5*0.5
        
        report "PMU tests complete" severity note;
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
| **p1-4-to-p1-34-.pdf** | Report pp. 1-7 to 1-9 | `ocr_text/p1-4-to-p1-34-.txt` | PMU circuit function — Booth's algorithm, serial M/R inputs (WO), parallel product (WA), rounded shift-out; pin assignments (Fig 1-3); 24-pin DIP (Fig 1-4); 1063 devices; 150×53 mils |
| **Rays-…-Chapter-1-944111-PMU.pdf** | Pages 2–4 | `ocr_text/Rays-F14A-CADC-…-Chapter-1-944111-PMU.txt` | Logical spec: Booth's algorithm, I/O pins, propagation delays (M→reg 125ns, reg→out 250ns), electrical chars (VDD=−14V), drive capability (75kΩ ∥ 40pF), input loading; 74,442 total system devices |
| **p3-1-to-B1-.pdf** | Appendix A | `ocr_text/p3-1-to-B1-.txt` | Booth's Algorithm — signed 2's complement multiplication, bit-pair encoding, shift with sign extension, worked examples |
| **CADC_Module_Specification.pdf** | Section 1 | *(text-layer PDF)* | Reconstructed FPGA interface: clk, rst, start, busy, done, operand_a, operand_b, result |

### 8.2 Supporting Sources

| Source Document | Pages / Sections | OCR Text File | Information Extracted |
|----------------|-----------------|---------------|----------------------|
| **ap1-26-97.pdf** | pp. 7, 12 | `ocr_text/ap1-26-97.txt` | PMU functional overview — serial I/O, continuous pipelined operation, no instruction word needed |
| **p2-29-to-p2-46-.pdf** | Report p. 2-46 | `ocr_text/p2-29-to-p2-46-.txt` | Inflight diagnostic test operands — 5 (M,R) sets detecting >98% single failures |
| **p3-1-to-B1-.pdf** | Report pp. 3-1 to 3-2 | `ocr_text/p3-1-to-B1-.txt` | Single failure analysis program — test word set determination |
| **Rays-…-Chapter-7-System-Info.pdf** | p. 3 | `ocr_text/Rays-…-Chapter-7-System-Info.txt` | Pin assignments (944111, 24-pin): pin 1=GRD, 5=M IN, 8=P OUT, 9=M OUT, 10=Φ1, 18=R IN, 20=VDD |
| **lsistate-97.pdf** | p. 2 | *(text-layer PDF)* | Design constraints → Booth's algorithm selection rationale |
| **toc-illustrations.pdf** | pp. 1–4 | *(text-layer PDF)* | Figure/page cross-references for PMU in Report 71-7266 |
