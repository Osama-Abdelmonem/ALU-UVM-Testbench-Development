# ALU UVM Testbench

## Overview
This project implements a **Universal Verification Methodology (UVM) Testbench** for an **Arithmetic Logic Unit (ALU)**. The testbench validates the functionality of the ALU using UVM components such as **agents, drivers, monitors, scoreboards, and sequences**.

## Project Structure

The project consists of the following files:

- `alu_if.sv` - Defines the ALU interface.
- `alu_transaction.sv` - Defines the transaction class for ALU operations.
- `alu_sequence.sv` - Defines different sequences to generate stimulus.
- `alu_driver.sv` - Drives transactions from the sequence to the ALU DUT.
- `alu_monitor.sv` - Monitors signals and collects transactions.
- `alu_scoreboard.sv` - Compares expected and actual results.
- `alu_agent.sv` - Combines driver, monitor, and sequences.
- `alu_environment.sv` - Top-level environment including agents and scoreboards.
- `alu_test.sv` - Test file to instantiate and run the environment.
- `alu_tb.sv` - Top-level testbench module.

## Features

- **UVM-Based Verification**: Implements a complete UVM testbench.
- **Parameterized ALU Support**: Can be extended to test different ALU configurations.
- **Flexible Sequences**: Generates a variety of test cases for validation.
- **Scoreboard-Based Checking**: Compares expected and actual results.
- **Reusable Components**: Modular UVM architecture allows easy extension and reuse.
- **Random and Directed Testing**: Supports both random and directed test generation.

## How to Run

1. Ensure you have a **UVM-supported simulator** (such as Mentor QuestaSim or Cadence Xcelium).
2. Compile the testbench files:
   ```sh
   vlog -sv +incdir+uvm_src alu_tb.sv
   ```
3. Run the simulation:
   ```sh
   vsim -uvm -novopt work.alu_tb
   run -all
   ```
4. Observe the logs and waveforms for verification results.

## Dependencies

- **SystemVerilog**
- **UVM 1.2 or later**
- **A UVM-compliant simulator**

## Contributing

Feel free to contribute by submitting pull requests. For major changes, please open an issue first to discuss the modifications.
