module fuck;
	reg [7:0] data;
initial begin
	#10   data = 8'hfe;
	$display("%h",data);
	fork
	   #20 data = 8'h11;
	   #10 data = 8'h00;
	join
	$display("%h",data);
end
endmodule
