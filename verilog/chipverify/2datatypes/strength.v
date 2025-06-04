module strength_example;
  wire net_example;

  assign (strong1, strong0) net_example = 1'b0;
  assign (weak1, weak0) net_example = 1'b1;
	//here strong will override weak. so the value in net_examplewill remain unchanged

  initial begin
    #5;
    $display("net_example = %b", net_example);
    $finish;
  end

endmodule

