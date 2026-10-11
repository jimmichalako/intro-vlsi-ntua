# NTUA ECE Introduction to VLSI Systems Design Course

This repository showcases the laboratory exercises and projects I completed during the Introduction to VLSI Systems Design course. Through this coursework, I gained hands-on experience in CMOS logic design, hierarchical circuit modeling, logical effort delay analysis, and Verilog HDL programming.

## Laboratory Exercises

### 1. Lab 1: CMOS Logic & Transmission Gates
*Practical implementation of a CMOS Inverter and a Transmission Gate.*

* **Key Tasks:**
  * **Part A (CMOS Inverter):** Designed the schematic and layout of a CMOS Inverter and simulated its behavior with a 1V square wave input.
  * **Part B (Transmission Gate):** Designed and simulated a CMOS transmission gate, verifying its ability to pass signals without voltage degradation compared to a single pass transistor.
* **Tech Stack:** Microwind, Transistor-Level Modeling.

### 2. Lab 2: Complex Logic Gates & Multiplexers
*Design and simulation of complex boolean functions and multiplexers.*

* **Key Tasks:**
  * **Part A (XOR Gate):** Implemented an XOR gate using a transmission gate combined with an inverter, and compared its delay against an alternative complex gate implementation.
  * **Part B (Complex Boolean Function):** Designed a CMOS pull-up and pull-down network for the function F=[A(B+CD) + BD]'.
  * **Part C (Multiplexer 2x1):** Created a 2-to-1 Multiplexer using a custom complementary CMOS logic style.
* **Tech Stack:** Microwind, CMOS Complex Gates.

### 3. Lab 3: Full Adder & Delay Analysis
*Analysis of propagation delays and transistor sizing in CMOS circuits.*

* **Key Tasks:**
  * **Part A (Full Adder):** Designed the sum and carry circuits of a Full Adder and measured the maximum propagation delay.
  * **Part B (Inverter Load Analysis):** Evaluated the delay of a minimum-size inverter driving different loads (n=0, 1, 3, 5 inverters) to compare theoretical and practical delay values.
  * **Part C (Transistor Sizing):** Calculated input capacitance, intrinsic delay, and the $K_{load}$ slope for inverters with varying widths (k=1, 4, 8) to create custom datasheets.
* **Tech Stack:** Microwind, Delay & Capacitance Calculations.

### 4. Lab 4: Logical Effort & Gate Optimization
*Minimizing path delay using logical effort calculations.*

* **Key Tasks:**
  * **Part A (2-Input AND Optimization):** Designed a 2-input AND gate using two topologies (NAND+INV vs NOR+INV). Proved theoretically and experimentally that the NAND-based design minimizes delay.
  * **Part B (6-Input AND Optimization):** Analyzed four different topological implementations of a 6-input AND gate using logical effort to find the optimal path for different electrical efforts (H=5 and H=18).
* **Tech Stack:** Microwind, Logical Effort Theory, Path Delay Optimization.

### 5. Lab 5: Arithmetic Circuits & Sequential Logic
*Design of arithmetic circuits and sequential memory elements using Verilog and Microwind.*

* **Key Tasks:**
  * **Part A (Arithmetic Circuits):** Implemented a Half Adder, a Full Adder, and a 2-bit Adder using Verilog HDL and simulated their physical layouts.
  * **Part B (Latches and Flip-Flops):** Designed and simulated a D Latch, both negative and positive edge-triggered D flip-flops, and a frequency-dividing T flip-flop.
* **Tech Stack:** Microwind, Verilog HDL.

### 6. Lab 6: Hierarchical ALU Design
*Hierarchical design of a 3-bit Arithmetic Logic Unit (ALU) using CMOS logic gates and Verilog.*

* **Key Tasks:**
  * **1st Stage (Basic Gates):** Designed fundamental logic gates (NOT, AND, OR, NAND, NOR, XOR) to form the base of the circuit.
  * **2nd Stage (Combinational Logic):** Implemented a 2x1 Multiplexer (MUX) and a Full Adder (FADD) using `pmos` and `nmos` transistor-level modeling.
  * **3rd & 4th Stages (ALU Construction):** Designed a 1-bit ALU using the basic gates and multiplexers, and cascaded them to synthesize a complete 3-bit ALU.
* **Tech Stack:** Verilog HDL, Microwind.

## Technologies Used

* **Languages:** Verilog HDL
* **Core Concepts:** CMOS Logic Design, Transistor-Level Modeling, Delay Analysis, Logical Effort, Arithmetic Logic Units (ALU), Sequential Logic (Latches & Flip-Flops)
* **Environments:** Microwind, Document Reports (PDF)
