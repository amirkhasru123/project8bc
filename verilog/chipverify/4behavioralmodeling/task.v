//After some brain storming, I got the point. Tasks are actually like the functions in C.
module taskEx;
  initial display();
  initial display();
  initial display();
  initial display();

  	task display();
		integer i;
		//In the classic Verilog, we add multiple lines inside of begin and end
		begin 
			i=0;
   			i = i + 1;
    		$display("i=%0d", i);
		end
    endtask
  endmodule	

module taskWithTimeControl;
	integer i=0;
	initial begin 
	display();
	#1 display();
	#1 display();
	#1 display();
	end

	//Task can have zero input
	task display();
		begin //In the classic Verilog, we add multiple lines inside of begin and end
			#5 incre(); //Calling another task.
   		 	#5 $display("i=%0d", i); //Taks contain time control
		end
    endtask

	task incre();
		i<=i+1; //Non-blocking statements
	endtask
  endmodule	
