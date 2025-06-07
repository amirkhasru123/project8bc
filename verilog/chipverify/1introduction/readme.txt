I was thinking. "I can't waste time anymore. I've to learn Verilog as Robiul sir advised me. Learning such tech will secure a good fortune for me." When I'd just searched online about Verilog, the Iblis appeared.He smiled,"Dude,cool down! You don't need to learn Verilog.""Why? Because you want me to follow the path of failure?",I shouted. "No, I want you to realize that you already learnt C. Verilog is nothing but C.",The Iblish replied. "What!",I thought."After all learning C wansn't a devilish idea at all?" "Yea. Just keep partying.", The Iblish left.

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
	Module definition is given as below: 
	module module_name(port_lists) 
		//port_lists can be empty
	endmodule

	Code execution happens here:
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
	VLSI stands for Very Large Scale Integration which is a tech used to create ICs. 

####Design Abstraction Layers
	RTL Level: In this level we write each sub-block in a HDL.
	Schematic Level: HDLs are converted to gate level schematics also involve tech libraries.
	Transistor Level: Implementation of gates.
	Physical Level: The final step is the layout transistors in silicon using EDA tools so that it can be fabricated. 
Design Styles:
	Top-Down: First define top-level blocks. Then break it into sub-levels. 
	Bottom-up: First we identify building blocks. Then we use them to build the top-level. 

Note: If you find this chapter boring, don't stop learning but just move forward.

Reference:
chipverify.com

Last Update: 7th June, 2025
