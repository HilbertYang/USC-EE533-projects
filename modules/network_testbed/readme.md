# Network Testbed and Socket-Based Communication

## Overview

This module sets up a lightweight network testbed using virtual machines to
study **basic client–server communication and network performance characteristics**.
It provides a controlled environment for experimenting with socket-based
applications and measuring end-to-end behavior such as connectivity, latency,
and throughput.

The testbed serves as a foundation for later networking and SmartNIC-related
experiments, where understanding host-level communication is essential.

---

## Environment Setup

- Two Linux virtual machines configured on the same virtual network
- One VM acts as a **server node**, the other as a **client node**
- VMs communicate using standard IPv4 networking

The setup enables reproducible experiments without requiring external
network infrastructure.

---

## Communication Model

The implementation follows a **client–server architecture** using
Internet-domain sockets:

- Stream sockets (TCP)
- Explicit socket lifecycle:
  - `socket()`
  - `bind()` / `listen()` / `accept()` on the server
  - `connect()` on the client
- Bidirectional data exchange after connection establishment

Both server and client are implemented in C to directly expose
system-level networking behavior.

---

## Experiments

This module supports basic networking experiments, including:

- Verifying connectivity between virtual nodes
- Measuring round-trip communication behavior
- Observing blocking I/O and connection establishment overhead
- Comparing iterative and concurrent server designs (single-connection vs. forked)

These experiments help build intuition about how application-level networking
maps onto the underlying OS and protocol stack.

---

## How to Build and Run

Each VM builds the programs locally:

```bash
gcc server.c -o server
gcc client.c -o client
On the server node:

./server <port>
On the client node:

./client <server_ip> <port>
Notes
This module focuses on correctness and observability rather than optimization.
It is intentionally minimal, serving as a baseline network testbed that later
hardware-accelerated or offloaded designs can be compared against.

