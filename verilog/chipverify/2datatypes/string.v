module str;
	reg [8*4:1] amir = "amir";
	initial begin
		$display("%s",amir);
		$finish;
	end 
endmodule
