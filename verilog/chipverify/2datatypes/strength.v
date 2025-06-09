module strength_example;
    wire net_example;
    wire strongIsStrong;

	assign (weak1,weak0) strongIsStrong = 1'b0; //weak0 will be strengthen
	assign (strong1,strong0) strongIsStrong = 1'b1; //strong1 will be strengthen
	//strong1 will lead

    assign (strong1, strong0) net_example = 1'b0;
    assign (weak1, weak0) net_example = 1'b1;
	//here strong will override weak. so the value in net_examplewill remain unchanged

initial begin
    #5;
    $display("net_example = %b", net_example);
	#5
    $display("strongIsStrong = %b", strongIsStrong);
    $finish;
end
endmodule

