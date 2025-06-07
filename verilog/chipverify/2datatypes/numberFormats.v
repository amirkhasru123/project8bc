module numberFormats;
	//numbers will be converted to decimal and then to binary
	//numbers are not converted to Binary Coded Decimal, BDC
	//
	//3-bit binary
	reg [2:0] a=3'b010; 
	//3-bit decimal
	reg [2:0] b=3'd2; 
	//9-bit hexadecimal
	reg [8:0] c=9'h1FA; 
	//32-bit hexadecimal
	reg [31:0] d=32'h1D40_CAFE; 
	//4-bit octal
	reg [3:0] e = 4'o11; 

	initial begin
		$display("binary %b decimal %d hexadecimal %h hexadecimal %h octal %o ",a,b,c,d,e);
		$finish;
	end
endmodule

module sameNumDiffBase;
	reg [31:0] number = 32'hABCD_0123;
	initial begin
		$display("Same number but diff bases %b %d %o %h", number, number, number, number);
	end
endmodule

