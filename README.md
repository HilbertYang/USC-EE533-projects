# EE533 Project: ARM-Based Multi-Core SmartNIC Network Processor with GPU Acceleration

## Overview
This project focuses on the **design, implementation, and programming of a custom ARM-based multi-core network processor and hardware accelerators** using **reconfigurable hardware** deployed on a **SmartNIC**.  
The system integrates **GPU acceleration using CUDA** and **RDMA-based high-speed communication**, and is evaluated in a **realistic network testbed**.

The project is developed as part of **USC EE533** and explores hardware–software co-design for high-performance, programmable networking systems.

---

## Project Objectives
- Design a **custom multi-core ARM-based network processor**
- Implement **hardware accelerators** for packet-processing tasks
- Integrate **CUDA-based GPU acceleration** for compute-intensive workloads
- Support **RDMA** for low-latency, high-throughput data movement
- Deploy and evaluate the system on a **SmartNIC platform**
- Validate functionality and performance in a realistic network environment

---

## System Architecture
The system consists of:
- **Multi-core ARM processing subsystem**
- **FPGA-based hardware accelerators** for network functions
- **GPU acceleration** via CUDA for offloaded computation
- **RDMA-enabled data paths** between SmartNIC, host, and GPU
- **SmartNIC platform** for packet I/O and acceleration
- **Host-side control software** for configuration and orchestration

### High-Level Data Flow
1. Packets arrive at the SmartNIC  
2. ARM cores perform control-plane or lightweight data-plane processing  
3. Performance-critical tasks are offloaded to:
   - FPGA-based hardware accelerators, or
   - GPU kernels via CUDA  
4. RDMA is used for zero-copy, low-latency data transfers  
5. Packets or processed results are forwarded accordingly  

---

## Repository Structure
