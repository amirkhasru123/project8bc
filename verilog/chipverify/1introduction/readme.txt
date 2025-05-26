####Summary:####

####1. What is Verilog?####

Definition:
	1. Verilog is a HDL (hardware description language)

History:
	1. Verilog is developed by Gateway Design Automation in the mid-1980s and later acquired by Cadence Design Systems.
	2. Before the development of Verilog, the primary hardware description language (HDL) was VHDL which was developed by U.S. Department of Defense.

Application:
	1. Verilog is widely used for design and verification of digital and mixed-signal systems, including both application-specific integrated circuits (ASICs) and field-programmable gate arrays (FPGAs).
	
Advantages:
	1. Simple syntax
	2. Behavioral modeling support.

Verilog is almost C.
	Verilog is a carboncopy of C. But unlike C, it never gets executed directly in the hardware. 

Note: There is a given code in this block, but we didn't complete it. 

####2. Introduction to verilog####

Important info:
	1. module, endmodule
	2. module moduleName (portLists) 

Testbench code
	Testbench code is used to verify main verilog code.
	 
Note: There is a given code here, but we didn't complete it.

####ASIC Design Flow####
Definition:
	1. VLSI stands for Very Large Scale Integration which is a tech used to create ICs by combining thousands or millions of transistors into a single chip.
	2. An ASIC (Application-Specific Integrated Circuit) is a type of integrated circuit (IC) that is designed to perform a specific task or function.

####Design Abstraction Layers####

Definitions:
	1. RTL Level: In this level we write each sub-block in a HDL.
	2. Schematic Level: HDLs are converted to gate level schematics also involve tech libraries.
	3. Transistor Level: Implementation of gates.
	4. Physical Level: The final step is the layout transistors in silicon using EDA tools so that it can be fabricated. 

Design Styles:
	1. Top-Down: First define top-level blocks. Then break it into sub-levels. 
	2. Bottom-up: First we identify building blocks. Then we use them to build the top-level. 

####I din't complete reading all the info or doing all the codes, because I belive I need more basics related to Verilog. So having freewill, I decided to move forward." 
