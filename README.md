# EECE2310 — Intro to Digital Design and Computer Architecture (Lecture)

Lecture portion of the digital-logic + RISC-V architecture course. Paired with **EECE2311** (lab).

## Course coverage

| Lecture | Topic |
|---------|-------|
| L01 | Introduction |
| L02 | Digital Logic Gates |
| L03 | Digital Data Representations and Operations |
| L04 | Digital Logic Minimization |
| L05 | Combinational Digital Circuits |
| L06 | Sequential Digital Circuits |
| L07 | Registers and Counters |
| L08 | FPGA Design |
| L09 | RISC-V Computer Architecture |
| L10 | Single-Cycle RISC-V Microarchitecture |
| L11 | Assembly Programming in RISC-V |


## Tools used

- **Quartus Prime** — FPGA design (`.bdf` block-diagram files, `.bsf` symbol files)
- **RISC-V assembly** — `.asm` files; assembled to `.hex` for FPGA execution
- **Intel/Altera DE-series FPGA boards** — target hardware

## Key concepts (for future ref)

- Two's complement, sign extension, overflow detection
- K-map minimization → SOP / POS forms
- Latches vs flip-flops (D, JK, T)
- Single-cycle datapath: PC, IF, ID, EX, MEM, WB stages
- RISC-V register conventions (x0–x31, ABI names)
- Common RISC-V instructions: `add`, `sub`, `lw`, `sw`, `beq`, `jal`, `addi`

## Quick refs

- RISC-V instruction encoding: see `EECE2310_RISC-V References.pdf`
- Hex / binary conversion: `Hexadecimal-Number-System.webp`

----------------------------------------------------------------------
----------------------------------------------------------------------

# EECE2311 — Lab

Hands-on lab companion to **EECE2310** lecture. Each lab builds on the prior week's lecture, ramping from basic logic gates up to a working single-cycle RISC-V processor.

## Lab progression

| Lab | Approximate topic |
|-----|-------------------|
| lab1 | Intro / basic combinational logic on FPGA |
| lab2 | Combinational circuits (decoders, multiplexers) |
| lab3 | RISC-V assembly basics — write & run on FPGA |
| lab4 | Sequential circuits (flip-flops, registers) |
| lab5 | Counters / state machines |
| lab6 | ALU / datapath components |
| lab7 | Single-cycle RISC-V processor — full integration |

## Folder structure

Each `lab*/` folder contains:

- `EECE2311_LabXX.pdf` — the lab handout (problem statement)
- `EECE2311_LabX_Report_HangHang.docx` / `.pdf` — my lab report submission
- Source files where applicable:
  - `*.asm` — RISC-V assembly source
  - `*.hex` — assembled machine code (loaded onto FPGA)
  - `*.bdf` — Quartus block-design files (schematic-style FPGA design)
  - `*.bsf` — Quartus block-symbol files (reusable component symbols)
  - `*.MOV` — demo videos of working hardware (where required)

Top-level files:

- `EECE2311_SM25_Syllabus.pdf` — lab course syllabus

## Tools used

- **Quartus Prime** (Intel/Altera) — FPGA design environment
- **DE-series FPGA development board** — target hardware
- **RISC-V assembler** — to produce `.hex` from `.asm`
- **Microsoft Word** — lab reports (template provided)

## Lab report template structure

The required template (`EECE2311-LabReportTemplate.docx`) expects:

1. Objective
2. Background / theory
3. Procedure
4. Results (waveforms, screenshots, hex output)
5. Discussion / analysis
6. Conclusion
7. Appendix (full source listings)

## For future ref of this material

- **Quartus projects** open from the `.qpf` file (if present) or by adding `.bdf` files into a new project
- **For hex files**: opening in a hex editor is more useful than a text editor
- **Lab 7's single-cycle processor**: the most polished integration — see also "lab7_single_cycle_processor" which has additional supporting files


