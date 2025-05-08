module whiteSpaces;
		reg [8*4:1] name = "amir"; //spaces exist eginning of the sentences but will not be displayed
	initial begin
	//newline will not be shown
		$display("%s",name);
		$finish;
	end
endmodule

module dataOverflow;
	reg [4*8:1] name="amir  "; //am won't get displayed. 0,1,2,3 numbered characters will be displayed as "ir  "
	initial begin
		$display("%s",name);
		$finish;
	end
endmodule
