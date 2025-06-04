module concatenation(input [1:0] a, input [1:0] b, output [3:0] c);
	assign c={a,b};
endmodule

module concatenationtest;
	reg [1:0] a;
	reg [1:0] b;
	wire [3:0] c;
	
	concatenation uut(.a(a),.b(b),.c(c));

	initial begin
		a<=0;
		b<=0;

		$monitor("[%t] a=%b b=%b output=%b",$time,a,b,c);
		#10
		a<=2;
		#20
		a<=4;
		$finish;

	end
endmodule
