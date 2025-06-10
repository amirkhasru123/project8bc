module forkJoin;
	reg [7:0] data;

initial begin
	#10   data = 8'hfe;
	$display("Before forking %h",data);
	fork
	   #20 data = 8'h11;
	   #10 data = 8'h00;
	join
	$display("After forking and joining %h",data);
end
endmodule
