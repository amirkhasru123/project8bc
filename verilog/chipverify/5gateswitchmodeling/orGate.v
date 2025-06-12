primitive my_or_gate (out, a, b);
	output out;
	input a, b;

	table
		1  ?  : 1;
        	?  1  : 1;
        	0  0  : 0;
  	endtable
endprimitive

module or_gate_wrapper (input wire a, b, output wire y);
	my_or_gate my_and1 (y, a, b);
endmodule

module orGate;
	reg a, b;
	wire y;

	or_gate_wrapper dut (.a(a), .b(b), .y(y));

	initial begin
		$display("Displaying Or Gate");
		$monitor("%0t\t%b\t%b\t%b", $time, a, b, y);
		a = 0; b = 0; #10;
		a = 0; b = 1; #10;
		a = 1; b = 0; #10;
		a = 1; b = 1; #10;
		$finish;
	end
endmodule
