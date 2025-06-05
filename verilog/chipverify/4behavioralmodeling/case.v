module caseEx(input a,b,output reg x);
	always @(*) begin
	case(a)
		0: x=(b==0)?0:1;
		1: x=1;
	endcase
	end
endmodule

module test;
	reg a,b;
	wire x;

	caseEx dut(.a(a),.b(b),.x(x));

	initial begin
		a=0;b=0; #3 $display("%b %b = %b",a,b,x);
	end
endmodule
