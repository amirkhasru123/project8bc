module andGate(input a,b,output x);
	and(x,a,b);
endmodule

module orGate(input a,b, output x);
	or(x,a,b);
endmodule

module combined;
	reg a,b;
	wire out1;
	wire out2;
	wire out;
	andGate one(.a(a),.b(b),.x(out1));
	//one is instance of andGate
	orGate two(.a(a),.b(b),.x(out2));
	//two is instance of orGate

	assign	out=out1 & out2;

	initial begin
		a=1'b0;b=1'b0; #2 $display("%b",out);
		a=1'b0;b=1'b1; #2 $display("%b",out);
		a=1'b1;b=1'b0; #2 $display("%b",out);
		a=1'b1;b=1'b1; #2 $display("%b",out);
		$finish;
	end 
endmodule



