# 🔐 Digital Safe System using Verilog

This project simulates a **Digital Safe Lock System** designed using **Verilog HDL**. It models the basic functionality of a secure electronic locker that unlocks only when a preset 5-bit passcode is entered correctly.

## 🧠 Project Description

The system functions as a digital safe that:
- Accepts 5-bit digit inputs serially.
- Compares them with a predefined password (e.g., `01100`).
- Triggers an **unlock signal** if the input matches the password.
- Otherwise, remains locked or resets on incorrect attempts.

This project uses finite state machines (FSM) to control the logic for user input, password verification, and system output.

## ⚙️ How It Works

- Users enter a 5-bit passcode bit by bit (`1` or `0`) using switches or serial input.
- The system stores and compares the input with a predefined code.
- If the full input sequence matches the correct password, the **unlock** signal (`1`) is activated.
- The system automatically resets if:
  - Incorrect digits are entered
  - All 5 bits are entered and they do not match the password

## 🔧 Tools Required

- **Xilinx Vivado** (preferred)

### Example Input: 01100

##  Concepts Demonstrated

- Finite State Machine (FSM) Design
- Password Authentication Logic
- Sequential Digital Logic Design
- Verilog HDL Simulation

