//multi-dimentional array can't be used in ports. It's possible in system-verilog though.
module arrayIshot(input a,b, output c);
	wire array [0:1]; //array[2] not possible
	assign array[0] = a; //possible, funny
	assign array[1] = b; //possible, funny
	assign c = array[0] & array[1];
endmodule

module test;
	reg a;
	reg b;
	wire c;

	arrayIshot dut(.a(a),.b(b),.c(c));

	initial begin
		#5 a=0; b=1; #5 $display("%b %b = %b",a,b,c);
		$finish;
	end
endmodule
