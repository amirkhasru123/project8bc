`define add(a,b) (a+b)

module add;
	reg a,b;
	initial begin
		$display("%b",`add(3,4));
	end
endmodule
