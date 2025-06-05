module test;
integer i=0;
	initial begin
		while(i<10) begin
			//loops must be inside a procedural block
			$display("I love coding");
			i++;
		end
	end
endmodule
