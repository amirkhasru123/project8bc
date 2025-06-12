module notEx(input a,output c);
	not(c,a);
endmodule

module test;
	reg a;
	wire c;
	integer i;
	
	notEx dut(.a(a),.c(c));
	
	initial begin
		for(i=0;i<2;i++) begin
			{a}<=i;
			#5 $display("%b = %b",a,c);
		end
	end
endmodule
