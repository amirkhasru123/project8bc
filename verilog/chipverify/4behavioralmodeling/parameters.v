//Parameter is like constant
module paraEx;
parameter a=1;
	initial begin
		$display("Example of module");
		//a=a-1; //Not possible, as a is a constant
		if(a)
			$display("a is a constant");
		else 
			$display("a is a fluke");
	end
endmodule

module adder #(parameter WIDTH = 8) (input [WIDTH-1:0] a,input [WIDTH-1:0] b,output [WIDTH-1:0] sum);
  assign sum = a + b;
endmodule

//This is a module parameter
module addertest;
	reg [7:0] a,b;
	wire [7:0] sum;

	adder dut(.a(a),.b(b),.sum(sum));

	initial begin
		a=7'b10;b=7'b11; #5 $display("%b + %b = %b",a,b,sum);
	end  
endmodule

module adder #(parameter WIDTH = 8) (input wire [WIDTH-1:0] a,input wire [WIDTH-1:0] b,output wire [WIDTH-1:0] sum);
// Define a local parameter that cannot be modified externally
localparam LENGTH = 4;
assign sum = a + b;
endmodule

module tb;
    reg [15:0] a;
    reg [15:0] b;
    wire [15:0] sum;

    adder #(.WIDTH(16)) add_instance (.a(a),.b(b),.sum(sum));

    //The following line would cause an error because LENGTH is a localparam
    //adder #(.WIDTH(16), .LENGTH(5)) add_instance2 ( ... ); 
endmodule
