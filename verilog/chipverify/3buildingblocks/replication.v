module replication;
	reg [2:1] a;
	reg [2:1] b;
	initial begin
		a<=3;
		b<=2;
		
		#10
		$display("%b %b = %b",a,b,{{2{a}},{3{b}}});
		$finish;
	end
endmodule
