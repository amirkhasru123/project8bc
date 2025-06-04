module signed_example(
	input  signed [7:0] in_a,in_b, //singed import port
	output signed [7:0] sum    //signed output port
);
    assign sum = in_a + in_b;
endmodule

//better way to call module
module tb;
    reg signed [7:0] in_a, in_b;
    wire signed [7:0] sum; 

    signed_example dut(.in_a(in_a),.in_b(in_b),.sum(sum)); //ports are connected in order

    initial begin
        in_a = -5;in_b = 3;#1 $display("Sum: %0d", sum); // Should print -2
        $finish;
    end
endmodule

//call module like C
module tbone;
    reg signed [7:0] in_a, in_b;
    wire signed [7:0] sum;

    signed_example dut(in_a,in_b,sum); //variables are passed

    initial begin
        in_a = -5;in_b = 3;#1 $display("Sum: %0d", sum); // Should print -2
        $finish;
    end
endmodule

