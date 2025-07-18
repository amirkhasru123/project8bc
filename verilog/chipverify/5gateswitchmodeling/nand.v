module nandEx(input a,b,output c);
	nand(c,a,b);
endmodule

module test;
	reg a,b;
	wire c;
	integer i;

	nandEx dut(.a(a),.b(b),.c(c));

	initial begin
		for(i=0;i<4;i++) begin
			{a,b}<=i;
			#5 $display("%b %b = %b",a,b,c);
		end  
	end  
endmodule
