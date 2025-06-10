####Module
	Module in verilog is like function in C.
	module <name> ([port_list]);
		//port_list can be empty
	endmodule

##Code Implementation
	orGate one(.a(a),.b(b),.x(out1)) 
	One is an instance / copy of module orGate.

	combined.one.x
	accessing x from module one which is called inside module combined.	

	.y() indicates unconnected ports.

##Implementation
	moduleExample.v

####Ports
	3 types of ports: input, output, inout
	input [net_type] [range] list_of_names;
	inout [net_type] [range] list_of_names; 
	output [net_type] [range] list_of_names;

	By default ports are unsigned

##Code Implementation
	signed = indicates a signed port 

##Implementation
	ports.v

####Assign
	Used for continous assesment
	assign <net_expression> = [drive_strength] [delay] <expression>
	
	assign reg name = expression; //invalid	
	Usually reg is used with always and initial.

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
	Note: Other operators are like C
	
####Concatenation & Replication
	{} is used to concatenate and replicate.

##Code Implementation
	c={a,b} //a and b will be concatenated and stored in c. size of c must be the summation of the size of a and b.
	2{a} //a will be replicated two times.
	
##Implementation
	concatenation.v
	replication.v

####Always Block
	Like while in C. 

##Implementation
	always.v

####Combinational Logic With Always

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
	A set of Verilog statements are usually executed sequentially. These statements are placed mainly inside of either initial or always

	initial begin
		//Code
	end

####Verilog Generate Block
	Generate block is used to generate more complex circuit that resonates simplier one.

##Implementation
	generate.v
	generateDoneByme.v

Update: 10th Jun, 2025
