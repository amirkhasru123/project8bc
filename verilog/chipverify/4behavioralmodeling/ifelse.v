module controlblock(input a,b, output reg x);
	//x will be reg because it's holding value. 
	//if will be inside of always
always @(*) begin //or gate implemented
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
	#10	a=0;b=0;#3 $display("%b %b = %b",a,b,x);
	end 
endmodule

module ifelseEx;
	reg a=1'b1;
	initial begin
	//if will be inside initial
	#20	if(a==1'b1) begin
			$display("a is 1");
		end
		else begin 
			$display("a is not 1");
		end
	end
endmodule
