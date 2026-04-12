# F-14A Central Air Data Computer (CADC) — FPGA Reconstruction

A modern FPGA implementation of the F-14A Tomcat's Central Air Data Computer, originally designed by Ray Holt at Garrett AiResearch in 1968-1970. This was arguably **the world's first microprocessor**, predating the Intel 4004 by two years but remaining classified until 1998.

## History

In 1968, the U.S. Navy commissioned Garrett AiResearch to develop a digital air data computer for the new F-14A Tomcat fighter. Engineer Ray Holt, just 23 years old, led the design of a revolutionary single-chip processor architecture that would compute critical flight parameters in real-time.

The CADC was:
- **First microprocessor** - Designed 1968-1970, two years before Intel's 4004
- **Classified for 28 years** - Military secrecy prevented public recognition until 1998
- **Still flying today** - The F-14 flew operationally until 2006 (US Navy)

The system computed Mach number, altitude, airspeed, and commanded the F-14's distinctive variable-sweep wings based on flight conditions.

## What's Included

### HDL Source (`hdl/`)
Complete synthesizable VHDL implementation of all six original CADC chips:

| Module | Original Part | Function |
|--------|---------------|----------|
| PMU | 944111 | 20×20-bit serial multiplier |
| PDU | 944112 | 20÷20-bit serial divider |
| SLF | 944113 | ALU (add/sub/logic/shift/Gray code) |
| RAS | 944114 | 64×20-bit register file |
| SL | 944118 | Data routing/steering logic |
| ROM Sequencer | 944125 | Microcode control unit |

### Testbenches (`tb/`)
VHDL testbenches for each module with automated verification.

### Specifications (`specs/`)
Detailed design documents including:
- System requirements and traceability
- Module-level specifications
- Interface definitions

### Verification (`verification/`)
- `cadc_interactive.py` — Interactive visualization tool with F-14 wing sweep display
- `test_cadc_uart.py` — Automated FPGA test suite via UART
- Polynomial verification notebooks

### FPGA Implementation (`implementation/`)
Vivado project for the [Adiuvo Tile](https://www.adiuvoengineering.com/) (Spartan-7 based SoM) with:
- AXI-GPIO wrapper for MicroBlaze integration
- UART bridge for host communication
- Constraints and implementation scripts

## Quick Start

### Simulation (ModelSim/Questa)
```bash
cd sim
run_cadc_top.bat      # Run full system testbench
run_pmu.bat           # Test multiplier
run_pdu.bat           # Test divider
```

### Interactive Visualization
```bash
cd verification
python cadc_interactive.py              # Simulation mode
python cadc_interactive.py --live       # Connected to FPGA
```

The visualization displays:
- Real-time computed outputs (Mach, altitude, airspeed)
- Animated F-14 wing sweep position
- Physical units (feet, knots, degrees)
- UART terminal for live FPGA communication

### FPGA Build (Adiuvo Tile)
Open `implementation/vivado_proj_tile/` in Vivado 2024.1+.

## Original System Specifications

| Parameter | Value |
|-----------|-------|
| Word Width | 20 bits (Q1.19 fixed-point) |
| Master Clock | 1.5 MHz |
| Frame Rate | 18.3 Hz (54.6 ms/frame) |
| Operations/Frame | 512 |
| Original Transistors | 74,442 |
| Original Power | ≤10 watts |

## Project Structure

```
f14-CADC/
├── hdl/                 # Synthesizable VHDL source
├── tb/                  # Testbenches
├── sim/                 # Simulation scripts
├── specs/               # Design specifications (detailed docs)
├── verification/        # Python tools and notebooks
├── implementation/      # Vivado FPGA project
├── ocr_text/            # OCR'd original design notes
└── original_docs/       # Ray Holt's original design PDFs
```

## References

- Ray Holt's original design documentation (included in `original_docs/`)
- [The Holt Chip](http://www.firstmicroprocessor.com/) — Ray Holt's website
- F-14 Tomcat NATOPS Flight Manual

## License

This reconstruction is provided for educational and historical preservation purposes.

## Acknowledgments

- **Ray Holt** — Original CADC designer at Garrett AiResearch
- The engineers and technicians who built and maintained the F-14 Tomcat
