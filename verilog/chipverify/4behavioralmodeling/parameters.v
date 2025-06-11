module paraEx;
parameter a=1;
	initial begin
		//a=a-1; //Not possible, as a is a constant.
		if(a)
			$display("a is a constant");
		else 
			$display("a is a fluke");
	end
endmodule
	
