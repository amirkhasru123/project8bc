primitive my_and_gate (out, a, b);
	output out;
	input a, b;

	table
		0  ?  : 0;
        	?  0  : 0;
        	1  1  : 1;
  	endtable
endprimitive

module and_gate_wrapper (input wire a, b, output wire y);
	my_and_gate my_and1 (y, a, b);
endmodule

module testbench;
	reg a, b;
	wire y;

	and_gate_wrapper uut3 (.a(a), .b(b), .y(y));

	initial begin
		$display("Displaying And Gate");
		$monitor("%0t\t%b\t%b\t%b", $time, a, b, y);
		a = 0; b = 0; #10;
		a = 0; b = 1; #10;
		a = 1; b = 0; #10;
		a = 1; b = 1; #10;
	end
endmodule
