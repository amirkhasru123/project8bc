module unsized;
	reg [31:0] a; //32-bit integer

	initial begin
		a=42; //didn't mention it to be a decimal
		$display("%d",a); //but a will be a decimal by default
		$finish;
	end
endmodule

module negative;
	reg [5:0] b; 

	initial begin
		b=-6'b110100; //here b is a 6-bit binary negative number
		$display("%b",b);
		$finish;
	end 
endmodule
