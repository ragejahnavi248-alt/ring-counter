# 4-Bit Ring Counter using Verilog

## Overview

This project implements a 4-bit Ring Counter using Verilog HDL.

A Ring Counter is a type of shift register where the output of the last flip-flop is connected back to the input of the first flip-flop. It generates a sequence of repeating states.

## Features

- 4-bit Ring Counter
- Clock driven operation
- Reset functionality
- One-hot output sequence
- Simple RTL design

## Inputs

| Signal | Description |
|--------|-------------|
| clk | Clock signal |
| rst | Reset signal |

## Output

| Signal | Description |
|--------|-------------|
| q[3:0] | Counter output |

## Operation

After reset, the counter starts with:

```
0001
```

The output sequence is:

```
0001 → 0010 → 0100 → 1000 → 0001
```

## Tools Used

- Verilog HDL
- ModelSim / Vivado Simulator
- GTKWave

## Simulation

The testbench verifies:
- Reset operation
- Clock shifting
- Ring counter sequence

## Author

Your Name