####Comment
	1. Single line comment indicated with //
	2. Multiple line comment is indicated with /* */

##Code Explanation
	module = starts a module (function in C)
		module moduleName
	endmodule = ends a module(return in C)
	$display() = displays a string (printf in C)
	begin = begins a block?
	end = ends a block

##Implementation: comment.v

####Space
	1.White spaces(spaces, tabs, newlines, formfeeds) are ignored.

##Code Explanation
	reg = data is given, a register(?).
	[8*4:1] name = indicates name as a string which has 6 byte data.
	[8*4:1] name = "amir " //a won't get displayed because name is declared as 4 byte string but we're forced it to hold 5 byte string.
	%s = indicates we are displaying string
	$finish = terminates the simulation cleanly

##Implementation: whiteSpaces.v

####Operators
	1.Unary, Binary, Conditional operators are allowed.

##Code Explanation
	~ = indicates not 
	| = indicates or
	x = ~y //y will be negated & will be stored in x
	x = y|z //x will hold the value or y or z
	x = (y>5) ? w:z; // if y is greater than 5, then w will be the output. if y is smaller than 5, z will be the output.

##Implementation: operators.v

####Number formats 
	1.[size]'[base_format][number]
	2.%b = binary, %d = decimal, %o = octal, %h = hexadecimal

##Code Explanation
	reg [2:0] a=3'b010 //declaring register a & initializing it
	3'b010 = indicates that our number is 3 byte long, binary & its value is 010
	3'd2 = indicates that our number is 3 byte long, decimal & its value is 002
		So if there is not enough digit, 0 will be replaced.
	9'h1FA = indicates that our number is 9 byte long, hexadecimal & its value is 1FA.
	32'h1D40_CAFE = indicates that our number is 32 byte long, hexadecimal, & its value is 1D40CAFE. Here underscore is used to make code looks clear.

##Implementation: numberFormats.v

####Default base and size
	1.Numbers without a base format are decimals.
	2.Numbers without a size matches size with given data. 
	3.For negative numbers, we put a negative sign before size of the number.

##Code Explanation
	integer a = 5421 //A will be a decimal as base format is not mentioned. Also the size of a is not mentioned, so the size is the size of 5421.

##Implementation: unsizedNagative.v

####Identifiers:
	1.Identifiers are names of variables. 
	2.[a-z],[A-Z],[0-9],_,$ can be used to make variable names. 
	3.Case sensitive. 
	4.They can't start with a digit or a dollar sign. 
Keywords:
	1.Keywords are special identifiers reserved to define the language constructs.
	2.They are in lower case. 
	3.Some of them we learnt so far:always, and, assign, begin, else, end, endmodule, for, function, include, initial, input, integer, module, nand, nor, not, or, output, signed, time, real, realtime, reg, unsigned, wait, wire, while etc 

##Code Implementation
	reg [2:0] $amir = 3'b010; // not possible, because identifier names can't start with a dollar sign
	reg 1amir = 1; //not possible, because identifier can't start with a number.
	reg amir; reg Amir; //2 different identifiers.

##Implementation: identifiers.v

####Data types
	1.Almost all data-types can only have one of the four different values: 0, 1, x, z. Here 0 means false, 1 means true, x or X means unknown, z means any unconnected wire. Other data typs are integer, time, real. %t=time or realtime. %f=floating point number = real number.    
Nets & Variables:
	1. Nets are used to connect between hardware entities like logic gates and hence do not store any value on its own.
	2. Wire is 1 type of nets.
	3. Same nets and variables can't be declared multiple time.
Wire vs reg
	1. Wire doesn't not store value but reg does.

##Code Explanation
	wire a,b; //2 wires declared
	wire andGate; //another wire declared
	assign andGate = a&b; //assign is used to store operated data. Here andGate variwire will store value of a&b.
	integer int_a; //declaring an integer
	time time_c; //integer time
	realtime realtime_d; //fractional time
	#2 //code execution will stop for 2 unit of time

##Implementation: variable.v 

####Verilog strings
	1. One character is 8 byte long.

##Code Explanation
	reg [8*4:1] str="amir" //so 8 byte space for each 4 characters are located.
	reg [8*4:1] str="amir" //can be declared directly  
	reg	[8*4:1] dude;
	dude = "boss"          //can be declared indirectly

##Implementation: string.v

####Scalar & Vector
	1. 1 bit net or wire
	2. Multiple bit net or wire is vector
	3. We can perform operation directly to a bit
	4. [a:b] can be used to part select

##Code Explanation
	reg [7:0] addr; //8-bit vector  
	addr [0] = 1;   //bit one is changed            
	addr [3] = 0;   //bit four is changed           
	addr [8] = 1;   //illegal bit manipulation
	addr [23:16] = 8'h23; // bits 23 to 16 will be replaced by 8'h23
	
##scalarAndVector.v

####Verilog Array
	1. An array declaration of a net or variable can be either scalar or vector.
	2. Multidimensional arry
	3. Arrays are allowed in Verilog for reg, wire, integer and real data types.

##Code Implementation
	reg        y1 [11:0]; //number of var = 12 each 1-bit
	wire [0:7] y2 [3:0]; //number of var = 4 each 8-bit
	reg  [7:0] y3 [0:1][0:3]; //2D arry each var 8-bit

##Implementation: array.v
