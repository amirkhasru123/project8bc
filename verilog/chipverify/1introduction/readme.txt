Verilog Handbook
Author: K. M. Amir Khasru

I was thinking. "I can't waste time anymore. I've to learn Verilog as Robiul sir advised me. Learning such tech will secure a good fortune for me. What am I waiting for then?" I opened a browser, and started to watch a tutorial. Few moments later Mr. Iblis appeared, and told, "Dude, cool down! You don't need to learn Verilog." "Why? Because you want me to follow the path of failure?", I shouted. "No, I want you to realize that you've already learnt C. Verilog is nothing but C.", Iblish replied. "What!", I thought. "After all learning C wansn't a devilish idea at all?" "Yea. Just keep partying.", Iblish left.

####What is Verilog?
	Verilog is an HDL.
	HDL means hardware description language.
	Verilog is developed by Gateway Design Automation in the mid-1980s. 
	Later it was acquired by Cadence Design Systems.
	Verilog is widely used for design and verification of ASICs and FPGAs. 
	ASIC stands for application-specific integrated circuits.
	FPGA means filed-programmable gate arrays.
	Verilog is a carboncopy of C. 

####Introduction to verilog
	Module defines hardware blocks or systems.
	Module (unlike function) can have multiple outputs.
	Module (unlike function) can contain delays, event controls.
	Testbench module includes data that is sent to other modules.
	 
##Code Implementation
	Comments are made in two ways:
	//single line comment
	*/
	comments
	never gets 
	executed
	*/

	Module definition is given as below: 
	module module_name(port_lists) 
		//port_lists can be empty
	endmodule

	Data change happens here:
	initial begin
	end

	Display text with a return:
	$display("text")

	Display text without a return:
	$write("text")

##Implementation
	module.v
	hello_verilog.v

	Not mandatory to understand:
	counter.v
	ra_single_port.v

####ASIC Design Flow
	VLSI, Very Large Scale Integration, is used to create ICs. 

####Design Abstraction Layers
	Architectural Level, top level abstraction layer, consists of sub-blocks and groups. 
	RTL Level describes the sub-block in a HDL.
	Schematic Level converts HDLs to gate level schematics also.
	Transistor Level indicates the implementation of gates.
	Physical Level lay transistors in silicon using EDA tools. 

	Top-Down Design Style: Identify sub-blocks, and try to fabricate them from fundamental blocks. 
	Bottom-up Design Style: Identify fundamental blocks first, and then use them to form what you want.

Note: If you find this chapter boring, don't stop learning but just move forward.

Reference:
chipverify.com

Last Update: 7th June, 2025
