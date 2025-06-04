//and gate implementation
module combo(input a,b, output z);
	assign z=a&b;
endmodule

module tb;
  reg a,b;
  wire z;
  integer i;

  combo u0 (.a(a),.b(b),.z(z));

  initial begin
    a <= 0;
    b <= 0;

    $monitor ("a=%0b b=%0b z=%0b",a,b,z);

	//a,b will get 4 different combinations, 00, 01, 10, 11 
    for (i = 0; i < 4; i = i + 1) begin
      {a,b} = i;
      #10;
    end
  end
endmodule
