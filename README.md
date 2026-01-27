# Hardware-Accelerated Networking & Compute Toolkit

This repository is a collection of modular experiments exploring **hardware acceleration
for networking and high-performance computing**.  
The focus is on **FPGA-based data paths, custom processor architectures, and GPU offloading**,
with an emphasis on **performance measurement, reproducibility, and system-level design**.

Rather than a single monolithic project, the repository is organized as a **toolkit of
independent yet conceptually connected modules**, each targeting a specific acceleration
or architectural technique.

---

## Key Focus Areas

- FPGA design flows and resource analysis (synthesis, mapping, gate counts)
- SmartNIC-style packet processing pipelines and register interfaces
- Custom processor datapaths and multithreaded execution models
- GPU offloading using CUDA with host–device integration
- Performance benchmarking and experimental reproducibility

---

## Repository Structure

Each module is designed to be **self-contained**, with its own source code, build/run
instructions, and experimental results.

modules/
├─ fpga_design_flow/ # FPGA synthesis, mapping, resource analysis
├─ packet_processing/ # Streaming pipelines and register-controlled logic
├─ custom_processor_core/ # Datapath and multithreading experiments
├─ gpu_offload_matmul/ # CUDA tiled matrix multiplication + host integration
├─ network_testbed/ # RTT and bandwidth measurement experiments
└─ ...


Shared utilities and cross-module artifacts are organized separately:

common/ # Shared headers, scripts, and utilities
results/ # Benchmark data and plots (CSV, figures)
docs/ # Setup guides, design notes, and reports


---

## How to Use This Repository

Each module under `labs/` contains its own `README.md` describing:

- The problem being explored
- Design and implementation approach
- Build and execution steps
- Expected outputs and performance metrics

---

## License

This project is released under the MIT License unless otherwise noted.