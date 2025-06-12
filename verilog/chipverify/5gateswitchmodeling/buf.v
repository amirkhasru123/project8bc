module bufgate(input a,output x);
	buf(x,a);
endmodule

module test;
	reg a;
	wire x;
	integer i;

	bufgate dut(.a(a),.x(x));

	initial begin
		$monitor("%b = %b",a,x);
		for(i=0;i<2;i++) begin
			{a}=i;
			#10;
		end  
	end  
endmodule
