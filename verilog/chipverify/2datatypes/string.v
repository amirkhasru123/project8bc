module str;
	reg [8*4:1] amir = "amir";
	reg [8*11:1] str1;

	initial begin
	str1 = "Hello World";
		$display("%s",amir);
		$display("%s",str1);
		$finish;
	end 
endmodule
