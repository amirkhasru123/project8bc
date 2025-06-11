module blockEx;
	reg a,b;
	reg c;

	initial begin
		#1 a=0;b=0; $display("a=%b, b=%b got assigned, but c=%b is not assigned",a,b,c);
		#1 c=1; $display("a=%b, b=%b, c=%b is now assigned",a,b,c);
	end
endmodule

module notBlock;
	reg a,b;
	reg c;

	initial begin
		#10
		a<=0;b<=0; 
		c=1; 
		$display("a=%b, b=%b are not assigned yet, but c=%b got assigned",a,b,c);
		#20 //Non-blocking will wait til this time step
		$display("After time step a=%b, b=%b, c=%b all are assigned",a,b,c);
		$finish;
	end
endmodule
