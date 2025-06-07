//module name comment, without port list
module comment;
	//simulation starts
	initial begin
		//This comment will not be executed 
		$display("Boom"); 
		/*We are doing well
		* & very excited about Verilog.
		* Thank you, Rabiul Sir
		* */

		////This is still a comment

		/*
			//This is also a comment
		*/

		/*
		* Nested comment in this style is not possible
		*/
	end
endmodule
