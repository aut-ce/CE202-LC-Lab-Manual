# CE202-LC-Lab-Material

## Logic Circuits Lab 04

### Goals

- What is parity bit?
- How work with Xilinx ISE Design Suite
- How write Testbench?
- Implementing parity bit generator 

### Pre-Report
* Write truth-table of 3 bit nand gate and find Sum of Products of it.
* write verilog code for sum of products form of 3 bit xnor gate.

### Grading Sources

* Find type of parity generator using Table 4.1.

| Type of Parity Bit     | Even | Even | Odd  | Odd |
|------------------------|------|------|------|-----|
| Number of Ones in Data | Even | Odd  | Even | Odd |
| Value of Parity Bit    |  1   |  0   |  1   |  0  |

* Design 3 bit parity generator by instantiating the **`xnor`** gate (*paraity_gen.v*).

![XNOR3](./raw/xnor3.svg)

* Design 3 bit parity generator in sum of products format (*paraity_gen_sop.v*).
* complete  testbench file that design for validate the correctness of modules (*tb_paritiy3_gen.v*).

* Synthesis design and fix Xilinx ISE log errors and warnings.

### Submission Sources
* Source files (Grading Sources)
* Waveform of testbeches that covers all signals in `testbench.png` diagram
