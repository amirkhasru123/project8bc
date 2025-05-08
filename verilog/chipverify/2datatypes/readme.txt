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

####White spaces(spaces, tabs, newlines, formfeeds) are ignored.
Implementation: whiteSpaces.v

##Code Explanation
reg = data is given, a register(?).
[8*4:1] name = indicates name as a string which has 6 byte data.
[8*4:1] name = "amir " //a won't get displayed because name is declared as 4 byte string but we're forced it to hold 5 byte string.
%s = indicates we are displaying string
$finish = terminates the simulation cleanly

##Implementation: whiteSpaces.v

####Operators: Unary, Binary, Conditional operators are allowed.

##Code Explanation
~ = indicates not 
| = indicates or
x = ~y //y will be negated & will be stored in x
x = y|z //x will hold the value or y or z
x = (y>5) ? w:z; // if y is greater than 5, then w will be the output. if y is smaller than 5, z will be the output.

##Implementation: operators.v

####Number formats: [size]'[base_format][number]

#Code Explanation
reg [2:0] a=3'b010 //declaring register a & initializing it
3'b010 = indicates that our number is 3 byte long, binary & its value is 010
3'd2 = indicates that our number is 3 byte long, decimal & its value is 002
	So if there is not enough digit, 0 will be replaced.
9'h1FA = indicates that our number is 9 byte long, hexadecimal & its value is 1FA.
32'h1D40_CAFE = indicates that our number is 32 byte long, hexadecimal, & its value is 1D40CAFE. Here underscore is used to make code looks clear.
%b = binary, %d = decimal, %o = octal, %h = hexadecimal

##Implementation: numberFormats.v

####Numbers without a base format are decimals. Numbers without a size matches size with given data. For negative nuumbers we put a negative sign before size of the number.

##Code Explanation
integer a = 5421 //A will be a decimal as base format is not mentioned. Also the size of a is not mentioned, so the size is the size of 5421.

##Implementation: unsizedNagative.v

####Identifiers are names of variables. [a-z],[A-Z],[0-9],_,$ can be used to make variable names. Case sensitive. They can't start with a digit or a dollar sign. 
Keywords are special identifiers reserved to define the language constructs &are in lower case. Some of them we learnt so far:
always, and, assign, begin, else, end, endmodule, for, function, include, initial, input, integer, module, nand, nor, not, or, output, signed, time, real, realtime, reg, unsigned, wait, wire, while etc 

##Code Implementation
reg [2:0] $amir = 3'b010; // not possible, because identifier names can't start with a dollar sign
reg 1amir = 1; //not possible, because identifier can't start with a numberb.
reg amir; reg Amir; //2 different identifiers.

##Implementation: identifiers.v
