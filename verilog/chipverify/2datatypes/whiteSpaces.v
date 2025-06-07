module whiteSpaces;
	reg [8*4:1] name = "amir"; 
	initial begin
		//following three lines will output same.
		$display("%s",name);
			$display("amir");
		      $display("amir");
		//this newline will not be shown
		$display("amir");
		//displays a newline, then amir
		$display("\famir");
		$finish;
	end
endmodule

module dataOverflow;
	reg [4*8:1] name="amir  "; //"am" won't get displayed. 0,1,2,3 index will be displayed as "ir  "
	initial begin
		$display("%s",name);
				$finish;
	end
endmodule
