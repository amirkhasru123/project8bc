//We will take module. No port lists will be there. 
module hello_verilog;
	//initial begin = ensures code execution concurrently 
	//end = end of associated block 
	//$display = special function that returns text with return
	//$write = special function that returns text without return
	initial begin
	$display("Hello, Verilog");
	//The following line will start in a newline.
	$write("Hello, amir.");
	//The following line will not start in a newline.
	$write(" You are so boring.");
	end
endmodule

//Note:
//You can't declare display or write outside initial begin block to maintain code execution concurrently.
//All simulation must happen inside of initial begin block.
