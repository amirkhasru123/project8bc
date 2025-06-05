module controlblock(input a,b, output reg x);
	//x will be reg. 
always @(*) begin
	if(a==0 && b==0) 
		assign x=0;
	else if(a==0 && b==1) 
		assign x=1;
	else if(a==1 && b==0) 
		assign x=1;
	else 
		assign x=1;
end
endmodule

module test;
	reg a,b;
	wire x;

	controlblock dut(.a(a),.b(b),.x(x));

	initial begin
		a=0;b=0;#3 $display("%b %b = %b",a,b,x);
	end 
endmodule
