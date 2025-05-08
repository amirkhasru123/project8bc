module operators;
	reg x=1;
	reg y=0;
	reg z=1;

	initial begin
		x=~y;
		$display("%0b",x); //x=~y=~0=1, output will be one

		x=y|z;
		$display("%0b",x); //y=0, z=1, so y or z = 1, output will be one
		
		x=(y>5)?x:y; //y is smaller than 5 so x will contain y's value = 0
		$display("%0b",x);
		$finish;
	end
endmodule
