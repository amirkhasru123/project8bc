`timescale 1ns/1ps
module clksig;
	reg clk;
	reg signal;

	always #5 clk=~clk;

	initial begin
		$dumpfile("clksig");
		$dumpvars(0,clksig);
		clk=0; signal=0;
		#10 signal=1;
		#5 signal=0;
		#10 signal=1;
		#5 signal=0;
		$finish;
	end
endmodule
