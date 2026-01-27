# FPGA Design Flow and ALU Implementation (Xilinx ISE)

## Overview

This module explores the **end-to-end FPGA design flow** using the Xilinx ISE toolchain,
from schematic-based design and behavioral simulation to logic mapping and resource
utilization analysis.

The primary focus is on building arithmetic datapaths incrementally and understanding
how high-level functional blocks translate into low-level hardware resources.

---

## Toolchain and Platform

- Xilinx ISE 10.x CAD tools
- Schematic-based and HDL-based design entry
- Behavioral simulation and waveform inspection
- Logic synthesis, mapping, and gate-level reporting

The toolchain reflects a legacy FPGA environment commonly used in NetFPGA-class platforms,
where modern IP abstractions are intentionally avoided.

---

## Design Modules

This module implements a sequence of increasingly complex hardware blocks:

### 1. Synchronous Arithmetic Building Blocks
- 1-bit full adder constructed from primitive logic elements
- D flip-flops inserted at inputs and outputs to form a synchronous datapath

### 2. Hierarchical Adder Construction
- 8-bit synchronous adder built by instantiating 1-bit full adders
- 32-bit adder created through hierarchical composition of 8-bit units

### 3. 32-bit ALU Extension
The 32-bit adder is extended into a simple ALU supporting multiple operations, including:
- Addition
- Subtraction
- Shift operations
- Additional custom functions

All functionality is implemented using explicit logic instantiation rather than IP cores.

---

## Simulation and Verification

Behavioral simulations are used to validate:
- Correct arithmetic functionality
- Proper register placement and timing behavior
- Operation selection within the ALU datapath

Waveform inspection is used as the primary verification method.

---

## Resource Analysis

The design is passed through the synthesis and mapping stages to extract:
- D flip-flop counts
- LUT utilization
- Gate-level resource usage

Results are used to compare schematic-based and HDL-based implementations and to
build intuition about hardware cost versus functionality.

---

## Notes

This module emphasizes **design transparency over optimization**.
By avoiding pre-built IP cores and focusing on explicit datapath construction,
it provides a clear view of how arithmetic and control logic map onto FPGA resources.
