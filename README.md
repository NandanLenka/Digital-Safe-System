

https://github.com/user-attachments/assets/6bc38f2e-56da-4cb8-a0dd-6bc881491877

# Digital Safe System

## Overview

The *Digital Safe System* is a hardware-based project implemented in Verilog HDL, designed to provide secure access control using a digital combination lock mechanism. It targets FPGA boards and can serve as a foundational example of embedded security systems. This project demonstrates core digital design skills, including combinational and sequential logic, input/output handling, and password-protected state management.

## Features

- *Password Verification*: Secure system unlocks only when the correct predefined code is entered via switches.
- *Multi-Attempt Lockout*: System enforces a lockout after a set number of incorrect attempts, enhancing security.
- *User Feedback*: Visual indication via LEDs or a seven-segment display for lock/unlock status.
- *Modularity*: Clean separation of control, display, and password logic within Verilog modules, easing maintainability and extension.

## File Structure

| Filename                     | Description                                               |
|------------------------------|-----------------------------------------------------------|
| Digital_Safe.v             | Main Verilog module for safe logic and password handling  |
| Seven_Segment.v            | Verilog module for driving seven-segment displays         |
| Top_Module.v               | Top level module integrating components                   |
| constraint.xdc             | FPGA constraints (pin mapping)                            |
| Digital Safe System.xpr    | Project file for Vivado/IP Integrator                     |
| README.md                  | Project documentation (this file)                         |

## How It Works

- *Password Entry*: User inputs a binary code via toggle switches.
- *Matching Logic*: Each bit of the input is compared with the corresponding bit in a stored password using XNOR gates. If all bits match, access is granted.
- *Status Display*: Visual feedback is given—one output signals "locked," the other signals "unlocked," and a seven-segment display can show specific status codes.

## Getting Started

### Requirements

- Xilinx Vivado or compatible FPGA toolchain
- Target FPGA board (e.g., Basys 3, but adaptable to others)
- Basic hardware setup: toggle switches, LEDs, seven-segment display

### Setup

1. *Clone or download this repository* to your local machine.
2. *Open the project*:
   - Import the .xpr project file into Vivado or your FPGA IDE.
3. *Pin configuration*:
   - Adapt constraint.xdc for your board as needed.
4. *Build and program*:
   - Synthesize the design and program it to your FPGA board.

### Usage

1. Power up your FPGA board.
2. Use switches to enter the preset code.
3. Observe output on LEDs or the seven-segment display:
   - *Correct code*: LED(LD1) will glow and 7 segment display will show U.
   - *Wrong code*: LED(LD0) will glow and 7 segment display will show L.
