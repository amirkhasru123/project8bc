module scalarAndVector;
	reg a;
	wire [8*3:0] b;

	initial begin
		a=1;
		b="amir";

		b[1]='a';

		$display("%b %s", a,b);
		$finish;
	end
endmodule
