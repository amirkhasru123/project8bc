module numberFormats;
	reg [2:0] a=3'b010; //binary number
	reg [2:0] b=3'd2; //decimal number
	reg [8:0] c=9'h1FA; //hexadecimal
	reg [31:0] d=32'h1D40_CAFE; //hexadecimal
	reg [3:0] e = 4'o11; //octal

	initial begin
		$display("%b %d %h %h %o ",a,b,c,d,e);
		$finish;
	end
endmodule

module sameNumDiffBase;
	reg [31:0] number = 32'hABCD_0123;
	initial begin
		$display("%b %d %o %h", number, number, number, number); //same number will be converted to different bases
	end
endmodule

