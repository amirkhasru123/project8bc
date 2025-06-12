`timescale 1ns/1ps

module bufif0_example (input wire a,input wire en,output wire y);
    bufif0 (y, a, en);  // y = a if en == 1, else y = z
endmodule

module tb_bufif1_example;
    reg a;
    reg en;
    wire y;

    bufif0_example uut (.a(a),.en(en),.y(y));

    initial begin
        $monitor("%g\t  %b  %b | %b", $time, en, a, y);
        en = 0; a = 0; #10;
        en = 1; a = 0; #10;
        en = 1; a = 1; #10;
        en = 0; a = 1; #10;
        $finish;
    end
endmodule
