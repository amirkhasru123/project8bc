`timescale 1ns/1ps

module andgate(input a, b, output x);
    and (x, a, b);
endmodule

module test;
    reg a, b;
    wire x;

    andgate instanceOne(.a(a), .b(b), .x(x));

    initial begin
        $dumpfile("verybasic.vcd");
        $dumpvars(0, test);

        $monitor("%b %b = %b", a, b, x);
        a = 0; b = 1;
        #5 a = 1;
        #10 a = 0;
        #15 a = 1;
        $finish;
    end
endmodule
