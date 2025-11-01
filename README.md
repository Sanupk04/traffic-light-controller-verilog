 ## 4-Way Traffic Light Controller using Verilog HDL

##  Project Objective
The main goal of this project is to design and simulate a 4-way traffic light controller using Verilog HDL.  
It helps to understand how sequential circuits and finite state machines (FSM) work in real-time digital systems.


##  Introduction

Traffic lights are vital to manage the flow of vehicles at intersections for safe and efficient movement. With growing cities and rising vehicle density, intelligent and automated traffic control systems become even more important.This project is aimed at designing and simulating a 4-Way Traffic Light Controller with Verilog HDL. The system has the goal of regulating traffic movement at a four-way intersection (North, East, South, and West) through signal timing and sequencing control for all directions.

The project illustrates the implementation of digital logic design principles such as Finite State Machines (FSM), timing control, and sequential circuit design. The project assists in comprehending how theoretical digital electronics can be utilized to solve real-world problems using Hardware Description Languages (HDL).

The controller logic ensures that:
- Only a single direction receives a green signal at any instant.
- The signals shift in a cyclical pattern according to a predetermined timing sequence.
- Every direction gets an equal share of time for free flow of vehicles.

This design is completely simulated through EDA Playground on Icarus Verilog and the waveform output is displayed through GTKWave. Even though simulated, the same design can be scaled to hardware on FPGA boards like Xilinx Basys 3 or Nexys A7 for real-time demonstration.
The mini project gives a solid grounding in HDL-based design, FSM modeling, and timing simulation  skills necessary for anyone working in VLSI design, digital system design, or FPGA-based projects.




---

##  Tools and Software Used
- **Verilog HDL** For design and simulation  
- **EDA Playground** Online Verilog simulation environment  
- **Icarus Verilog (iverilog)** For compiling and running the design  
- **GTKWave** For viewing the waveform output  
- *(Optional)* Xilinx Vivado Can be used later for FPGA implementation

---

##  Files Included
- `traffic_controller.v` RTL (main design code)  
- `tb_traffic_controller.v` Testbench for simulation  
- `waveform.png` Screenshot of the simulation waveform  
- `README.md` Documentation file (this one)

---

##  How to Run the Simulation
1. Go to [EDA Playground](https://www.edaplayground.com).  
2. Copy and paste both the design and testbench 
3. Choose:
   - **Tool:** Icarus Verilog  
   - **Top module:** `tb_traffic_controller`  
4. Click **Run Simulation**.  
5. View results in **GTKWave** (it will show the traffic light signal transitions).  

---

##  Working Principle
- The design cycles through four states: **North → East → South → West**.  
- Each direction gets a green signal for a specific time period.  
- The lights are controlled based on a clock and counter using FSM logic.  
- Once all four directions complete, the process repeats continuously.


## Output Observation
The waveform shows:
- One road’s green signal active at a time.  
- Other roads remain red.  
- Signals switch after the programmed delay.  
- The sequence repeats smoothly, representing real-world traffic operation.


##  Future Scope
- Add pedestrian crossing signals.  
- Add sensor-based vehicle detection for smart control.  
- Implement the design on an FPGA board like **Basys 3** or **Nexys A7**.  
- Display timing countdown on 7-segment displays.

---

## 👨‍💻 Project Developed By
**Name:** Sanu P K  
**Course:** B.Tech in Electronics and Communication Engineering (ECE) – 3rd Year  
**Simulation Tool:** EDA Playground  
**Project Type:** Mini Project  

---


