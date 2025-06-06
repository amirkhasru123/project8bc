`include "define.v"

module ifdef;
	initial begin
	`ifdef amir
		$display("I am amir"); //just boom
	`endif
	`ifndef samir //samir is not defined
		$display("I am samir");
	`endif

	`undef amir //now amir is undefined
	`ifdef amir 
		$display("I am amir"); //will not boom
	`endif

	end
endmodule

