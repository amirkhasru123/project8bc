`timescale 1ns/1ps

module clk;
	reg clk;

	always #5 clk=~clk;

	initial begin
		clk=0;
		$dumpfile("clk.vcd");
		$dumpvars(0,clk);
		#30 $finish;
	end

endmodule

