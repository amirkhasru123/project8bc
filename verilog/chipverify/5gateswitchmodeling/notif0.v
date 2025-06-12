`timescale 1ns/1ps

module notif1_example (input wire a,input wire en,output wire y);
    notif0(y, a, en);  // y = ~a if en == 1, else y = z
endmodule

module tb_notif1_example;
    reg a;
    reg en;
    wire y;

    notif1_example uut(.a(a),.en(en),.y(y));

    initial begin
        $monitor("control=%b not %b=%b", en, a, y);
        en = 0; a = 0; #10;
        en = 1; a = 0; #10;
        en = 1; a = 1; #10;
        en = 0; a = 1; #10;
        $finish;
    end
endmodule
