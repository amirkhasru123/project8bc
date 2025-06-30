####Verilog Testbench Simulation
	RTL = register transfer level
	Verilog is defined in terms of a discrete event execution model

##Code Implementation
	$dumpfile(filename.vcd)
	$dumpvar(0,modulename)
	This lines of code will be inside of "initial begin... end" block.

##Implementation
Problem No 1
	1. Take two input a,b.
	2. Implement and gate.
	3. Simulate.
	andgatesimul.v 

Problelm No 2
	1. Take a var name clk.
	2. At t=0, clk=0
	3. After every 5ns, clk will invert.
	clk.v

Problem No 2
	1. Take a clk=0 and a signal=0 at 0ns.
	2. After every 5ns, clk will invert.
	3. At 10ns, 25ns signal=1 for 5ns each.
	clksig.v

####Verilog Timescale
	`timescale <time_unit>/<time_precision>
	Examples:
	`timescale 1ns/1ps
	`timescale 10us/100ns
	`timescale 10ns/1ns

Note: Need to learn more. I will return here soon...
