module assignEx;
	reg [1:0] a;
	initial begin
		assign a = 2'b01;
		$display("after assign a = %b", a);
		deassign a; //The above assign is no longer applied, but that doesn't mean a gets random value. 
		assign a = 2'b11; //Now we can again assign a with value
		#5 $display("after deassign a = %b", a);
		//Don't put $finish here, otherwise the code will finish executing. May be good practice will be to put finish after the final module to be executed.
	end
endmodule

module forceEx;
	wire [1:0] a;
	initial begin
		#10
		force a = 2'b01;
		$display("after force a = %b", a);
		#15 release a; //The above force is no longer applied, but that doesn't mean a gets random value. 
		force a = 2'b11; //Now we can force a with value
		#5 $display("after release a = %b", a);
		$finish;
	end
endmodule
