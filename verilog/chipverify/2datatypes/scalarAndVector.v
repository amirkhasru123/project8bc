module scalarAndVector;
	reg [12:0] addr = 3'b010;

	initial begin
		addr[10] = 1'b1;
		$display("%b", addr);
		addr[6:2]=5'b111;
		//addr[2:6]=5'b111; //illegal
		$display("%b",addr);
		$finish;
	end
endmodule
