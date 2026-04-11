# SLF — Special Logic Function / ALU Core (PN 944113)

## Module Requirement Specification

### 1. Overview

| Attribute | Value |
|-----------|-------|
| Part Number | 944113 |
| Device Count | 745 transistors |
| Function | Main ALU — arithmetic, logic, shift, and special operations |
| Key Registers | Accumulator (ACC), Temporary (TMP), Status Flags |
| I/O Style | Bit-serial I/O with parallel internal computation |

### 2. Functional Description

The SLF is the **main arithmetic logic unit (ALU)** of the CADC processor. It performs addition, subtraction, logical operations, shift operations, negation, absolute value, and Gray/Binary code conversions. It contains the accumulator register, a temporary register, and status flags.

#### 2.1 Operations

| ALU_OP Code | Mnemonic | Operation | Description |
|-------------|----------|-----------|-------------|
| 0000 | NOP | No operation | ACC holds its value |
| 0001 | ADD | ACC + Input | Signed fractional addition |
| 0010 | SUB | ACC - Input | Signed fractional subtraction |
| 0011 | AND | ACC AND Input | Bitwise AND |
| 0100 | OR  | ACC OR Input | Bitwise OR |
| 0101 | XOR | ACC XOR Input | Bitwise exclusive OR |
| 0110 | NOT | ~ACC | Bitwise complement of ACC |
| 0111 | SHL | ACC << 1 | Arithmetic shift left (sign preserved) |
| 1000 | SHR | ACC >> 1 | Arithmetic shift right (sign extended) |
| 1001 | NEG | -ACC | 2's complement negation |
| 1010 | ABS | |ACC| | Absolute value |
| 1011 | GRAY2BIN | Gray→Binary | Gray code to binary conversion |
| 1100 | BIN2GRAY | Binary→Gray | Binary to Gray code conversion |
| 1101 | LOAD | Input → ACC | Load accumulator from input bus |
| 1110 | STORE_TMP | ACC → TMP | Copy ACC to TMP register |
| 1111 | PASS | Input pass-through | Input appears on output, ACC unchanged |

#### 2.2 Limit Function (Primary SLF Operation)
The fundamental logical operation of the SLF is the **limit function**. It consists of three registers:
- **U (Upper limit)**
- **P (Parameter)**
- **L (Lower limit)**

Inputs arrive serially during WO via corresponding input pins. At the end of WO, comparison logic picks one register:
- **Pick L** if P < L (algebraically)
- **Pick U** if P > U and not < L (algebraically)
- **Otherwise pick P** if U ≥ P ≥ L (algebraically)

The contents of the picked register are delivered to Line 1 output in the next WO.

**Outputs:**
- **Line 1:** Primary data output (20 bits, delivered during WO)
- **Line 2:** Secondary data output (20 bits, delivered during WO)
- **B output:** True in WA if P was picked at end of preceding WO; always false in WO
- **B' output:** Complement of B in WA; always false in WO
- **C output:** True in WO under certain logical conditions recognized at end of preceding WA; always false in WA

**Control Word Modes (5-bit CW entered during WA):**

| CW | D | Line 1 Output | Line 2 Output | C | Notes |
|----|---|----------------|----------------|---|-------|
| 000 | X | Picked register or P input | P register (prev OP) | U picked → true | Basic limit |
| 001 | X | P AND U inputs | P AND L inputs | false | Logical product |
| 010 | X | Picked register | Gray→Binary(P input) | false | Gray conversion |
| 011 | X | P register + LSB=1 | All zeros | false | P with LSB set |
| 100-111 | X | Picked register | All zeros or special | varies | Extended modes |
| 11xx | X | Picked register → Line 1 + P register input | P register → Line 2 | false | Data swap |

#### 2.3 Gray Code Conversion
Gray code conversion is critical for interfacing with the quartz pressure sensors which use Gray-coded shaft encoders.

- **Gray → Binary:** `B[19] = G[19]; B[i] = B[i+1] XOR G[i]` for i = 18 down to 0
- **Binary → Gray:** `G[19] = B[19]; G[i] = B[i+1] XOR B[i]` for i = 18 down to 0

#### 2.4 SLF Chip Details
- **Part Number:** 944113
- **Active MOS Devices:** 743
- **Chip Size:** 120 × 130 mils
- **Package:** 24-pin dual in-line
- **Inputs:** U, P, L (20-bit serial data), D (discrete logic, valid at T18 of WA), CW (5-bit control word), Φ1, Φ2, T18, WO, VDD, Ground
- **Outputs:** Line 1 (20-bit serial), Line 2 (20-bit serial), C (1-bit logic), B (1-bit logic), B' (1-bit logic)

#### 2.5 Status Flags
Three status flags are generated after each ALU operation:

| Flag | Symbol | Condition |
|------|--------|-----------|
| Zero | Z | Result = 0 |
| Negative | N | Result bit 19 = 1 (sign bit set) |
| Carry | C | Carry/borrow out of addition/subtraction |

#### 2.4 Registers
- **ACC (Accumulator):** 20-bit, primary working register, updated by ALU operations
- **TMP (Temporary):** 20-bit, secondary register, loaded from ACC via STORE_TMP operation
- Both registers are available as outputs for the Steering Logic (SL) to route

### 3. Interface Specification

### 3. Interface Specification

#### 3.1 Port List

| Port | Direction | Width | Description |
|------|-----------|-------|-------------|
| `i_clk` | Input | 1 | System clock (1.5 MHz master) |
| `i_rst` | Input | 1 | Synchronous reset (active high) |
| `i_phi2` | Input | 1 | Phase 2 clock — register updates |
| `i_word_type` | Input | 1 | '0'=WA (compute), '1'=WO (shift I/O) |
| `i_t0` | Input | 1 | First bit time of word (bit 0) |
| `i_t18` | Input | 1 | Bit time 18 (register update) |
| `i_t19` | Input | 1 | Last bit time of word (bit 19) |
| `i_cw_bit` | Input | 1 | Serial control word input (during WA T0-T6) |
| `i_data_bit` | Input | 1 | Serial data input (during WO) |
| `o_result_bit` | Output | 1 | Serial ALU result output (during WO) |
| `o_acc_bit` | Output | 1 | Serial ACC output (during WO) |
| `o_tmp_bit` | Output | 1 | Serial TMP output (during WO) |
| `o_flag_z` | Output | 1 | Zero flag |
| `o_flag_n` | Output | 1 | Negative flag |
| `o_flag_c` | Output | 1 | Carry flag |

#### 3.2 VHDL Entity Declaration

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity slf is
    port (
        i_clk        : in  std_logic;
        i_rst        : in  std_logic;
        -- Timing inputs
        i_phi2       : in  std_logic;
        i_word_type  : in  std_logic;  -- '0'=WA, '1'=WO
        i_t0         : in  std_logic;
        i_t18        : in  std_logic;
        i_t19        : in  std_logic;
        -- Serial control/data inputs
        i_cw_bit     : in  std_logic;  -- Control word (WA T0-T6)
        i_data_bit   : in  std_logic;  -- Data input (WO)
        -- Serial data outputs
        o_result_bit : out std_logic;  -- ALU result (WO)
        o_acc_bit    : out std_logic;  -- ACC output (WO)
        o_tmp_bit    : out std_logic;  -- TMP output (WO)
        -- Status flags
        o_flag_z     : out std_logic;
        o_flag_n     : out std_logic;
        o_flag_c     : out std_logic
    );
end entity slf;
```

### 4. Functional Requirements

| Req ID | Requirement | Priority |
|--------|-------------|----------|
| SLF-F-001 | Shall implement all 16 ALU operations per the opcode table | Must |
| SLF-F-002 | Shall maintain a 20-bit accumulator register | Must |
| SLF-F-003 | Shall maintain a 20-bit temporary register | Must |
| SLF-F-004 | Shall generate Z, N, C flags from ALU result | Must |
| SLF-F-005 | Shall receive control word serially during WA T0-T6 | Must |
| SLF-F-006 | Shall receive data input serially during WO (LSB first) | Must |
| SLF-F-007 | Shall output ACC/TMP/result serially during WO | Must |
| SLF-F-008 | ADD/SUB shall operate on signed 2's complement fractional numbers | Must |
| SLF-F-009 | SHR shall perform arithmetic right shift (sign extension) | Must |
| SLF-F-010 | SHL shall perform arithmetic left shift (sign bit preserved) | Must |
| SLF-F-011 | Gray-to-Binary conversion shall be correct for all 20-bit patterns | Must |
| SLF-F-012 | Binary-to-Gray conversion shall be correct for all 20-bit patterns | Must |
| SLF-F-013 | ABS of most negative number (0x80000) shall saturate to 0x7FFFF | Should |
| SLF-F-014 | ALU computation shall complete during WA T8 | Must |
| SLF-F-015 | Registers updated at WA T18 on phi2 | Must |
| SLF-F-016 | Reset shall clear ACC, TMP, and all flags to zero | Must |

### 5. Verification Tests

#### 5.1 Addition Tests

| Test ID | Description | ACC | Input | Expected Result | Flags |
|---------|-------------|-----|-------|-----------------|-------|
| SLF-T-001 | 0 + 0 | 0x00000 | 0x00000 | 0x00000 | Z=1, N=0, C=0 |
| SLF-T-002 | 0.5 + 0.25 | 0x40000 | 0x20000 | 0x60000 | Z=0, N=0, C=0 |
| SLF-T-003 | 0.5 + 0.5 (overflow) | 0x40000 | 0x40000 | 0x80000 | Z=0, N=1, C=0 |
| SLF-T-004 | -0.5 + (-0.5) | 0xC0000 | 0xC0000 | 0x80000 | Z=0, N=1, C=1 |
| SLF-T-005 | 0.5 + (-0.25) | 0x40000 | 0xE0000 | 0x20000 | Z=0, N=0, C=1 |

#### 5.2 Subtraction Tests

| Test ID | Description | ACC | Input | Expected Result | Flags |
|---------|-------------|-----|-------|-----------------|-------|
| SLF-T-010 | 0 - 0 | 0x00000 | 0x00000 | 0x00000 | Z=1, N=0, C=0 |
| SLF-T-011 | 0.5 - 0.25 | 0x40000 | 0x20000 | 0x20000 | Z=0, N=0, C=0 |
| SLF-T-012 | 0.25 - 0.5 | 0x20000 | 0x40000 | 0xE0000 | Z=0, N=1, C=1 |

#### 5.3 Logic Operation Tests

| Test ID | Description | Op | ACC | Input | Expected |
|---------|-------------|-----|-----|-------|----------|
| SLF-T-020 | AND all ones | AND | 0xFFFFF | 0xFFFFF | 0xFFFFF |
| SLF-T-021 | AND with zero | AND | 0xFFFFF | 0x00000 | 0x00000 |
| SLF-T-022 | OR all zeros | OR | 0x00000 | 0x00000 | 0x00000 |
| SLF-T-023 | OR complementary | OR | 0xAAAAA | 0x55555 | 0xFFFFF |
| SLF-T-024 | XOR same | XOR | 0x12345 | 0x12345 | 0x00000 |
| SLF-T-025 | NOT zero | NOT | 0x00000 | -- | 0xFFFFF |

#### 5.4 Shift Tests

| Test ID | Description | Op | ACC | Expected |
|---------|-------------|-----|-----|----------|
| SLF-T-030 | SHL positive | SHL | 0x20000 | 0x40000 |
| SLF-T-031 | SHL negative | SHL | 0xE0000 | 0xC0000 |
| SLF-T-032 | SHR positive | SHR | 0x40000 | 0x20000 |
| SLF-T-033 | SHR negative (sign extend) | SHR | 0x80000 | 0xC0000 |

#### 5.5 Gray Code Tests

| Test ID | Description | Input | Expected |
|---------|-------------|-------|----------|
| SLF-T-040 | Gray→Bin: 0x00000 | 0x00000 | 0x00000 |
| SLF-T-041 | Gray→Bin: 0x00001 | 0x00001 | 0x00001 |
| SLF-T-042 | Gray→Bin: 0x00003 | 0x00003 | 0x00002 |
| SLF-T-043 | Gray→Bin: known pattern | Test with sensor encoder values |
| SLF-T-044 | Bin→Gray→Bin roundtrip | Any value | Original value restored |
| SLF-T-045 | Gray→Bin→Gray roundtrip | Any Gray value | Original Gray restored |

#### 5.6 Special Operation Tests

| Test ID | Description | Op | ACC | Expected |
|---------|-------------|-----|-----|----------|
| SLF-T-050 | NEG of +0.5 | NEG | 0x40000 | 0xC0000 |
| SLF-T-051 | NEG of -0.5 | NEG | 0xC0000 | 0x40000 |
| SLF-T-052 | NEG of 0 | NEG | 0x00000 | 0x00000 |
| SLF-T-053 | ABS of +0.5 | ABS | 0x40000 | 0x40000 |
| SLF-T-054 | ABS of -0.5 | ABS | 0xC0000 | 0x40000 |
| SLF-T-055 | LOAD value | LOAD | -- | acc_in value |
| SLF-T-056 | STORE_TMP | STORE_TMP | 0x12345 | TMP = 0x12345 |

#### 5.7 Register Enable Tests

| Test ID | Description | Criteria |
|---------|-------------|----------|
| SLF-T-060 | ACC hold when write disabled | ACC unchanged after ALU op with `acc_write_en`=0 |
| SLF-T-061 | TMP hold when write disabled | TMP unchanged with `tmp_write_en`=0 |
| SLF-T-062 | Flags hold when write disabled | Flags unchanged with `flags_write_en`=0 |

#### 5.8 Testbench Structure (Bit-Serial)

```vhdl
entity slf_tb is
end entity slf_tb;

architecture sim of slf_tb is
    constant CLK_PERIOD : time := 667 ns;  -- 1.5 MHz master clock
    
    signal clk, rst, phi2, word_type, t0, t18, t19 : std_logic := '0';
    signal cw_bit, data_bit : std_logic := '0';
    signal result_bit, acc_bit, tmp_bit : std_logic;
    signal flag_z, flag_n, flag_c : std_logic;
    signal result_sr, acc_sr : std_logic_vector(19 downto 0) := (others => '0');
    signal phase : unsigned(1 downto 0) := "00";
begin
    clk <= not clk after CLK_PERIOD / 2;
    
    phi_proc: process(clk)
    begin
        if rising_edge(clk) then
            phase <= phase + 1;
            phi2 <= '1' when phase = "10" else '0';
        end if;
    end process;
    
    uut: entity work.slf
        port map (
            i_clk => clk, i_rst => rst, i_phi2 => phi2,
            i_word_type => word_type, i_t0 => t0, i_t18 => t18, i_t19 => t19,
            i_cw_bit => cw_bit, i_data_bit => data_bit,
            o_result_bit => result_bit, o_acc_bit => acc_bit, o_tmp_bit => tmp_bit,
            o_flag_z => flag_z, o_flag_n => flag_n, o_flag_c => flag_c
        );
    
    stim: process
        -- Helper procedures for bit-serial WA/WO phases
        procedure run_wa_phase(cw : std_logic_vector(6 downto 0)) is
        begin
            word_type <= '0';
            for bit in 0 to 19 loop
                t0 <= '1' when bit = 0 else '0';
                t18 <= '1' when bit = 18 else '0';
                t19 <= '1' when bit = 19 else '0';
                if bit <= 6 then
                    cw_bit <= cw(bit);
                else
                    cw_bit <= '0';
                end if;
                for i in 0 to 3 loop
                    wait until rising_edge(clk);
                end loop;
            end loop;
        end procedure;
        
        procedure run_wo_phase(data_val : std_logic_vector(19 downto 0)) is
            variable v_data : std_logic_vector(19 downto 0);
        begin
            v_data := data_val;
            word_type <= '1';
            for bit in 0 to 19 loop
                t0 <= '1' when bit = 0 else '0';
                t18 <= '1' when bit = 18 else '0';
                t19 <= '1' when bit = 19 else '0';
                data_bit <= v_data(0);
                wait until rising_edge(clk) and phase = "01";
                result_sr <= result_bit & result_sr(19 downto 1);
                acc_sr <= acc_bit & acc_sr(19 downto 1);
                wait until rising_edge(clk) and phase = "10";
                wait until rising_edge(clk);
                v_data := '0' & v_data(19 downto 1);
            end loop;
        end procedure;
    begin
        rst <= '1';
        wait for 5 * CLK_PERIOD;
        rst <= '0';
        wait until phase = "00" and rising_edge(clk);
        
        -- Load ACC with 0.5: ALU_OP=LOAD(1101), acc_we=1, tmp_we=0, flags_we=1
        run_wa_phase("1101111");  -- CW bits 0-3=LOAD, 4=acc_we, 5=tmp_we, 6=flags_we
        run_wo_phase(x"40000");   -- Data = 0.5
        
        -- Verify ACC loaded
        run_wa_phase("0000000");  -- NOP
        run_wo_phase(x"00000");
        assert acc_sr = x"40000" report "LOAD 0.5 failed" severity error;
        
        report "SLF tests complete" severity note;
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
| **p1-4-to-p1-34-.pdf** | Report pp. 1-12 to 1-21 | `ocr_text/p1-4-to-p1-34-.txt` | SLF circuit function — 4-bit control word; limit function with U/P/L registers; pick logic (L if P<L, U if P>U, else P); Line 1/Line 2 outputs; B/B'/C logic outputs; CW mode table (AND, Gray code, swap); 743 devices; 120×130 mils; 24-pin DIP; PN 944113 |
| **Rays-…-Chapter-3-944113-SLF.pdf** | Pages 2–4+ | `ocr_text/Rays-F14A-CADC-…-Chapter-3-944113-SLF.txt` | Detailed logical spec: CW format (4 bits, arriving t15–t18 of WA), formal operation description (U/P/L data inputs, D logic input), complete CW action table with D input combinations, Line 1/Line 2/B/B'/C output definitions, logic diagram (Figure 4) |
| **p3-1-to-B1-.pdf** | Appendix C | `ocr_text/p3-1-to-B1-.txt` | Gray Code Conversion — Gray→Binary and Binary→Gray bit-by-bit XOR formulae |
| **CADC_Module_Specification.pdf** | Section 3 | *(text-layer PDF)* | Reconstructed FPGA interface: clk, rst, acc_in, alu_op, write enables, acc_out, tmp_out, flags |

### 8.2 Supporting Sources

| Source Document | Pages / Sections | OCR Text File | Information Extracted |
|----------------|-----------------|---------------|----------------------|
| **ap1-26-97.pdf** | p. 9 | `ocr_text/ap1-26-97.txt` | SLF functional overview — limit function, comparison logic, AND/OR, Gray code, branching |
| **p1-35-to-p2-28-.pdf** | Report p. 1-41 | `ocr_text/p1-35-to-p2-28-.txt` | Module 3 CW breakdown — bits 1-4 select SLF RAS registers and SLF functions, bit 5 write, bits 6-20 SL steering |
| **Rays-…-Chapter-7-System-Info.pdf** | p. 3 | `ocr_text/Rays-…-Chapter-7-System-Info.txt` | Pin assignments (944113, 24-pin): pin 1=CW IN, 7=B' OUT, 8=C' OUT, 9=ONE OUT, 10=TWO OUT, 11=Φ1, 15=L IN, 16=U IN, 19=T18, 20=D IN |
| **lsistate-97.pdf** | p. 6 | *(text-layer PDF)* | Design rationale for hardware limit function (frequently used, saves computation time) |
| **toc-illustrations.pdf** | pp. 1–4 | *(text-layer PDF)* | Figure/page cross-references for SLF in Report 71-7266 |
