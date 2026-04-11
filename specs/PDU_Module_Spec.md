# PDU — Parallel Divider Unit (PN 944112)

## Module Requirement Specification

### 1. Overview

| Attribute | Value |
|-----------|-------|
| Part Number | 944112 |
| Device Count | 1,241 transistors |
| Function | 20-bit signed fractional division |
| Algorithm | Non-restoring division |
| I/O Style | Bit-serial I/O with parallel internal computation |

### 2. Functional Description

The PDU performs **20-bit signed fractional division** using a non-restoring division algorithm. It produces both a 20-bit quotient and a 20-bit remainder.

#### 2.1 Algorithm — Non-Restoring Division

Non-restoring division avoids the "restore" step of restoring division by allowing the partial remainder to go negative. At each step:

1. If partial remainder is **positive**: shift left and **subtract** divisor
2. If partial remainder is **negative**: shift left and **add** divisor
3. Record quotient bit: 1 if partial remainder ≥ 0, 0 if negative

After all 20 iterations:
- If final remainder is negative, add divisor to correct (restore once at end)
- Quotient bits are in {0, 1} but need correction: convert from {-1, +1} encoding to standard binary

#### 2.2 Fractional Division
- Dividend (A) and Divisor (B) are 20-bit signed fractional numbers
- Quotient Q = A / B (20-bit signed fractional)
- **Pre-condition:** |Dividend| < |Divisor| to avoid overflow (result > 1.0)
- If |A| ≥ |B|, the result overflows and behavior is undefined (software must ensure valid inputs)

#### 2.3 Timing (Bit-Serial Architecture)
The PDU operates on the same timing as all CADC modules:
- **WO (Word Out):** Operands shift in serially (20 bits LSB-first), previous quotient/remainder shift out
- **WO T19:** Operands latched for computation  
- **WA (Word A):** Parallel non-restoring division computes new quotient and remainder
- **Next WO:** Results shift out while new operands shift in
- `busy` asserts during WA computation phase

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
| `i_dividend_bit` | Input | 1 | Serial dividend input (during WO) |
| `i_divisor_bit` | Input | 1 | Serial divisor input (during WO) |
| `o_quotient_bit` | Output | 1 | Serial quotient output (during WO) |
| `o_remainder_bit` | Output | 1 | Serial remainder output (during WO) |
| `o_busy` | Output | 1 | High during WA computation phase |
| `o_div_by_zero` | Output | 1 | Asserted if divisor is zero |

#### 3.2 VHDL Entity Declaration

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pdu is
    port (
        i_clk          : in  std_logic;
        i_rst          : in  std_logic;
        -- Timing inputs
        i_phi2         : in  std_logic;
        i_word_type    : in  std_logic;  -- '0'=WA, '1'=WO
        i_t0           : in  std_logic;
        i_t19          : in  std_logic;
        -- Serial data inputs
        i_dividend_bit : in  std_logic;
        i_divisor_bit  : in  std_logic;
        -- Serial data outputs
        o_quotient_bit : out std_logic;
        o_remainder_bit: out std_logic;
        -- Status
        o_busy         : out std_logic;
        o_div_by_zero  : out std_logic
    );
end entity pdu;
```

### 4. Functional Requirements

| Req ID | Requirement | Priority |
|--------|-------------|----------|
| PDU-F-001 | Shall perform 20-bit signed fractional division | Must |
| PDU-F-002 | Shall use non-restoring division algorithm | Must |
| PDU-F-003 | Shall produce both quotient and remainder | Must |
| PDU-F-004 | Shall handle division of zero dividend correctly (result = 0) | Must |
| PDU-F-005 | Shall detect and flag divide-by-zero | Must |
| PDU-F-006 | Shall correctly handle negative dividend and positive divisor | Must |
| PDU-F-007 | Shall correctly handle positive dividend and negative divisor | Must |
| PDU-F-008 | Shall correctly handle negative dividend and negative divisor | Must |
| PDU-F-009 | Shall assert `o_busy` during WA computation phase | Must |
| PDU-F-010 | Shall shift operands in during WO phase (LSB first) | Must |
| PDU-F-011 | Shall complete division within one WA phase (80 master clocks) | Must |
| PDU-F-012 | Quotient shall satisfy: dividend = quotient × divisor + remainder | Must |
| PDU-F-013 | \|Remainder\| < \|Divisor\| | Must |
| PDU-F-014 | Shall latch operands at WO T19 for computation | Must |
| PDU-F-015 | Shall load quotient/remainder to output shift registers at WA end | Must |

### 5. Verification Tests

#### 5.1 Basic Functionality Tests

| Test ID | Description | Dividend | Divisor | Expected Quotient |
|---------|-------------|----------|---------|-------------------|
| PDU-T-001 | Zero / positive | 0x00000 | 0x40000 (+0.5) | 0x00000 |
| PDU-T-002 | 0.25 / 0.5 | 0x20000 | 0x40000 | 0x40000 (+0.5) |
| PDU-T-003 | 0.5 / (-0.5) | 0x40000 (note: invalid - |A|=|B|) | -- | overflow |
| PDU-T-004 | 0.25 / (-0.5) | 0x20000 | 0xC0000 | 0xC0000 (-0.5) |
| PDU-T-005 | (-0.25) / (-0.5) | 0xE0000 | 0xC0000 | 0x40000 (+0.5) |
| PDU-T-006 | (-0.25) / 0.5 | 0xE0000 | 0x40000 | 0xC0000 (-0.5) |
| PDU-T-007 | Small / Large | 0x00001 | 0x7FFFF | ~0x00001 |

#### 5.2 Division by Zero

| Test ID | Description | Criteria |
|---------|-------------|----------|
| PDU-T-010 | Divide by zero | `div_by_zero` asserted, `done` asserted, quotient undefined |

#### 5.3 Remainder Verification

| Test ID | Description | Criteria |
|---------|-------------|----------|
| PDU-T-020 | Verify remainder for all basic tests | dividend = quotient × divisor + remainder |
| PDU-T-021 | Remainder magnitude | |remainder| < |divisor| for all valid inputs |

#### 5.4 Non-Restoring Algorithm Specific Tests

| Test ID | Description | Notes |
|---------|-------------|-------|
| PDU-T-030 | Alternating partial remainder signs | Exercise both add and subtract paths |
| PDU-T-031 | All positive shifts | Dividend much smaller than divisor |
| PDU-T-032 | Maximum iterations | Worst-case timing verification |

#### 5.5 Timing Tests (Bit-Serial)

| Test ID | Description | Criteria |
|---------|-------------|----------|
| PDU-T-040 | Busy signal assertion | `o_busy` high during WA phase after operands loaded |
| PDU-T-041 | Busy deasserts | `o_busy` low after WA phase completes |
| PDU-T-042 | New operands during active | New operands override previous on next WO |
| PDU-T-043 | Back-to-back operations | Consecutive WA+WO cycles produce correct results |
| PDU-T-044 | Reset during operation | Clears state, deasserts `o_busy`, zeros outputs |

#### 5.6 Testbench Structure (Bit-Serial)

```vhdl
entity pdu_tb is
end entity pdu_tb;

architecture sim of pdu_tb is
    constant CLK_PERIOD : time := 667 ns;  -- 1.5 MHz master clock
    
    signal clk, rst, phi2, word_type, t0, t19 : std_logic := '0';
    signal dividend_bit, divisor_bit : std_logic := '0';
    signal quotient_bit, remainder_bit, busy, div_by_zero : std_logic;
    signal quotient_sr, remainder_sr : std_logic_vector(19 downto 0);
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
    
    uut: entity work.pdu
        port map (
            i_clk => clk, i_rst => rst, i_phi2 => phi2,
            i_word_type => word_type, i_t0 => t0, i_t19 => t19,
            i_dividend_bit => dividend_bit, i_divisor_bit => divisor_bit,
            o_quotient_bit => quotient_bit, o_remainder_bit => remainder_bit,
            o_busy => busy, o_div_by_zero => div_by_zero
        );
    
    stim: process
        procedure run_wo_phase(
            dividend_val : std_logic_vector(19 downto 0);
            divisor_val  : std_logic_vector(19 downto 0)
        ) is
            variable v_dividend, v_divisor : std_logic_vector(19 downto 0);
        begin
            v_dividend := dividend_val;
            v_divisor := divisor_val;
            word_type <= '1';
            for bit in 0 to 19 loop
                t0 <= '1' when bit = 0 else '0';
                t19 <= '1' when bit = 19 else '0';
                dividend_bit <= v_dividend(0);
                divisor_bit <= v_divisor(0);
                -- Capture output
                wait until rising_edge(clk) and phase = "01";
                quotient_sr <= quotient_bit & quotient_sr(19 downto 1);
                remainder_sr <= remainder_bit & remainder_sr(19 downto 1);
                -- Wait for phi2
                wait until rising_edge(clk) and phase = "10";
                wait until rising_edge(clk);
                v_dividend := '0' & v_dividend(19 downto 1);
                v_divisor := '0' & v_divisor(19 downto 1);
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
        
        procedure do_divide(
            a, b, exp_q : std_logic_vector(19 downto 0);
            name : string
        ) is
        begin
            run_wa_phase;
            run_wo_phase(a, b);
            run_wa_phase;
            run_wo_phase(x"00000", x"00000");
            wait for 1 ns;
            assert quotient_sr = exp_q
                report name & " FAILED" severity error;
        end procedure;
    begin
        rst <= '1';
        wait for 5 * CLK_PERIOD;
        rst <= '0';
        wait until phase = "00" and rising_edge(clk);
        
        do_divide(x"00000", x"40000", x"00000", "PDU-T-001");  -- 0/0.5
        do_divide(x"20000", x"40000", x"40000", "PDU-T-002");  -- 0.25/0.5
        
        report "PDU tests complete" severity note;
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
| **p1-4-to-p1-34-.pdf** | Report pp. 1-10 to 1-14 | `ocr_text/p1-4-to-p1-34-.txt` | PDU circuit function — non-restoring division, serial D/Z inputs (WO), parallel quotient (WA), truncated shift-out; pin assignments (Fig 1-6); 24-pin DIP (Fig 1-7); 1241 devices; 141×157 mils; PN 944112 |
| **Rays-…-Chapter-2-944112-PDU.pdf** | Pages 2–4 | `ocr_text/Rays-F14A-CADC-…-Chapter-2-944112-PDU.txt` | Logical spec: non-restoring division, I/O pins, electrical chars (VDD=−14V), power dissipation (−55°C to +125°C), clock characteristics, logic levels, drive capability (75kΩ ∥ 40pF), input loading |
| **p3-1-to-B1-.pdf** | Appendix B | `ocr_text/p3-1-to-B1-.txt` | Non-restoring Division Algorithm — positive/negative partial remainder steps, quotient bit determination, final correction |
| **CADC_Module_Specification.pdf** | Section 2 | *(text-layer PDF)* | Reconstructed FPGA interface: clk, rst, start, busy, done, dividend, divisor, quotient, remainder |

### 8.2 Supporting Sources

| Source Document | Pages / Sections | OCR Text File | Information Extracted |
|----------------|-----------------|---------------|----------------------|
| **ap1-26-97.pdf** | pp. 7–9 | `ocr_text/ap1-26-97.txt` | PDU functional overview — serial I/O, continuous pipelined operation, chip photograph reference |
| **p2-29-to-p2-46-.pdf** | Report p. 2-46 | `ocr_text/p2-29-to-p2-46-.txt` | Inflight diagnostic test operands — 5 (D,Z) sets detecting >98% single failures |
| **p3-1-to-B1-.pdf** | Report pp. 3-1 to 3-2 | `ocr_text/p3-1-to-B1-.txt` | Single failure analysis program — test word determination |
| **Rays-…-Chapter-7-System-Info.pdf** | p. 3 | `ocr_text/Rays-…-Chapter-7-System-Info.txt` | Pin assignments (944112, 24-pin) |
| **toc-illustrations.pdf** | pp. 1–4 | *(text-layer PDF)* | Figure/page cross-references for PDU in Report 71-7266 |
