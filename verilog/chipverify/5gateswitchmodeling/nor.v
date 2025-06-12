module norEx(input a,b,output c);
	nor(c,a,b);
endmodule

module tb;
	reg a,b;
	wire c;
	integer i;

	norEx dut(.a(a),.b(b),.c(c));

	initial begin
		for(i=0;i<4;i++) begin
			{a,b}<=i;
			#5 $display("%b %b = %b",a,b,c);
		end  
	end
endmodule
