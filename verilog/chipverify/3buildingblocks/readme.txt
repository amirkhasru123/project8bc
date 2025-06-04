####Module
	Module in verilog is just like function in C.
	module <name> ([port_list]);
		//port_list can be empty
	endmodule

##Code Implementation
	orGate one(.a(a),.b(b),.x(out1)) 
	Here one is an instance/copy of module orGate.
	combined.one.x
	It means we are accessing x from instance one of comibined module

##Implementation
	moduleExample.v

####Ports
	3 types of ports: input, output, inout
	input [net_type] [range] list_of_names;
	inout [net_type] [range] list_of_names; 
	output [net_type] [range] list_of_names;
Singed
	Ports can be signed or unsigned. By default ports are unsigned

##Code Implementation
	signed = indicates a number either signed or unsigned

##Implementation
	ports.v

####Assign
	Assign is implemented for wire-like elements where continuous assesment is necessary
	assign <net_expression> = [drive_strength] [delay] <expression of different signals or constant value
	Never assign with reg var. Usually reg is uded with always and initial.

##Code Implementation
	
##Implementation
	assign.v

####Operators
	a**b //a to the power b
	a%b //modulous
	a===b //a equals b, value could be x or z
	a==b //result can be unknown
	& //bitwise and 
	| //bitwise or
	>> //logical right shift
	<< //logical left shift
	>>> //arithmetic right shift
	<<< //arithmetic left shift
	Note: Other operators are just like C
	
####Concatenation & Replication
	{} is used to concatenate and replicate.

##Code Implementation
	c={a,b} //a and b will be concatenated and stored in c. size of c must be the summation of the size of a and b.
	2{a} //a will be replicated two times.
	
##Implementation
	concatenation.v
	replication.v

####Always Block
	Just like while in C. 

##Implementation
	always.v

####Combo Logic With Always

##Implementation
	halfAdderAlways.v
	fullAdderAlways.v
	twoToOneMuxAlways.v
	oneByFourDmuxAlways.v
	fourBySixteenDecoAlways.v

####Sequential Logic With Always

##Implementation
	jkFlipFlop.v
	moduloTenCounter.v
	fourBitLeftShift.v

####Initial Block
	A set of Verilog statements are usually executed sequentially in a simulation. These statements are placed inside a procedural block. There are mainly two types of procedural blocks in Verilog - initial and always

	initial begin
		//Code
	end

####Verilog Generate Block
	//not yet understood as it's dependent on if, else, case etc
