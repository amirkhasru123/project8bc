module sum;
	integer i=0;
	initial sum();
	initial sum();

	task automatic sum(); //Now we don't need time step
		begin
			i=i+1;
			$display("%0d",i);
		end
	endtask
endmodule

module outputEx;
	integer result;

	initial begin
		calculate_sum(5, 10, result);
   		$display("The sum of two numbers here = %0d", result);
  	end

	//Output is generated
	task calculate_sum(input integer a, input integer b, output integer sum);
		begin
      		sum = a + b;
		end
	endtask
endmodule

module taskWithTrigger;
	reg clk = 0;
	initial forever #5 clk = ~clk;

	initial begin
		display_on_clock();
  	end

  	task display_on_clock;
		begin
      		@(posedge clk); //Wait for clock rising edge
     		$display("Triggered on posedge clk at time %0t", $time);
    	end
	endtask

	#10 
	$finish;
endmodule
