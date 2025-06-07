####Comment
	Single line comment indicated with //
	Multiple line comment is indicated with /* */

##Implementation: comment.v

####Space
	White spaces (spaces, tabs, newlines, formfeeds) are ignored.

##Code Explanation
	reg = identifiers which store data 
	[8*4:1] name = 4-byte container.
	[8*4:1] name = "amir " //sise of container = 4, but content size = 5. a won't get displayed.
	%s = string 
	$finish = terminates simulation

##Implementation: whiteSpaces.v

####Operators
	Unary, Binary, Conditional operators are allowed.

##Code Explanation
	~ = indicates not 
	| = indicates or
	x = ~y //y will be negated & will be stored in x
	x = y|z //x will hold the value or y or z
	x = (y>5) ? w:z; // if y is greater than 5, then w will be the output. if y is smaller than 5, z will be the output.

##Implementation: operators.v

####Number formats 
	[size]'[base_format][number]
	%b = binary, %d = decimal, %o = octal, %h = hexadecimal

##Code Explanation
	3'b010 = 3-bit binary number 010
	3'd2 = 3-bit decimal number 002
	9'h1FA = 9-bit hexadecimal number 1FA
	32'h1D40_CAFE = 32-bit hexadecimal number 1D40_CAFE. 

##Implementation: numberFormats.v

####Default base and size
	Baseless numbers are decimals.
	Sizeless numbers match size with given data.
	For negative numbers, - sign is set before size.

##Code Explanation
	Following baseless a is decimal. It's size = size of 5421.
	integer a = 5421 

##Implementation: unsizedNagative.v

####Identifiers:
	Identifiers in Verilog are like variables in C.
	[a-z],[A-Z],[0-9],_,$ can be used to make variable names.
	Identifiers are case sensitive. 
	They can't start with a digit or a dollar sign. 

	Keywords are special identifiers reserved to define the language constructs.
	Keywords are expressed in lower case. 
	For examples: always, and, assign, begin, else, end, endmodule, for, function, include, initial, input, integer, module, nand, nor, not, or, output, signed, time, real, realtime, reg, unsigned, wait, wire, while etc 

##Code Implementation
	reg [2:0] $amir = 3'b010; //invalid
	reg 1amir = 1; //invalid
	//followoing two identifiers are different	
	reg amir; 
	reg Amir; 

##Implementation: identifiers.v

####Data types
	Almost all data-types can have: 0, 1, x, z. 
	0 = false
	1 = true
	x/X = unknown
	z = unconnected wire.

	Other data typs are integer, time, real. 
	%t = time or realtime 
	%f = real number.    
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

####Net Types
	1. Net types are used to model physical connections between components in digital circuits.
	2.  They do not store values, its value is determined by the values of its drivers and the default value of a net is typically 'z' (high impedance) when left unconnected.

##Code Implementation
	wire = continuous assesment
	supply0 = ground
	supply1 = voltage reference to ground
	uwire = single driver 
	tri [7:0] bus; //declaring 8-bit tri
	wor = wired or
	wand = wired and
	trior = or with multiple driveris
	triand = and, multiple drivers
	tri0 = pulldown
	tri1 = pullup
	trireg = not supported by iverilog
	uwire = single driver
	supply0 = ground
	supply1 = voltage
##Implementation
	net.v

####Net strength
	assign  (strength1, strength0) net = expression;
	supply1, supply0, strong1, strong0, weak1, weak0, pull0, pull1, highz0, highz1
	1 = true/up
	0 = false/down

##Code Implementation
	assign(strong1,strong0) net_example=1'b0; 
	Here strong0 will be instigated. 
	assign(weak1, weak0) net_example=1'b1;
	Here weak1 will be instigated.
	Strong will override weak. so net_example will hold the value.

##Implementation
	strength.v

