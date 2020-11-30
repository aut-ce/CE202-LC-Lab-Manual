# CE202-LC-Lab-Material

## Logic Circuits Lab 08

### Goals

- How describle arithmetic logic unit 
- How design bus using multiplexer
- Structural implementation in Verilog

### Pre-Report
* Write verilog code for 4bit 4 to 1 multiplexer.

* Write verilog code for arithmetic logic unit usign multiplexer and `assign` keyword.

![ADDSUB](./raw/alu.png)

| Operation | Description | Sel[1] | Sel[0] |
|-----------|-------------|--------|--------| 
|    NOT    |      A'     |    0   |    0   |
|    NAND   |   (A & B)'  |    0   |    1   |
|    ADD    |    A + B    |    1   |    0   |
|  MULTIPLY |    A * B    |    1   |    1   |

### Grading Sources

* Write verilog code for 4bit 4 to 1 multiplexer of pre-report section (***multiplexer4x4.v***).

* Write verilog code for arithmetic logic unit of pre-report section (***alu.v***).

* Synthesis alu circut without any error.

* Save RTL Schematic of alu in flat mode and check its correctness.

* Complete testbench file of alu for validate the correctness of alu by all possible states (***tb_alu.v***).

### Submission Sources
* Source files (Grading Sources)
* Waveform of testbeches that covers all signals in `testbench.png` diagram
