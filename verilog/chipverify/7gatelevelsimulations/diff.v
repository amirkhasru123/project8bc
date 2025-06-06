`timescale 1ns/1ps

module dff (
    input wire clk,
    input wire d,
    output reg q
);
    always @(posedge clk) begin
        q <= d;
    end

    specify
        specparam setup_time_limit = 2;  // 2ns setup time
        specparam hold_time_limit  = 1;  // 1ns hold time

        $setup(d, posedge clk, setup_time_limit);
        $hold(posedge clk, d, hold_time_limit);
    endspecify
endmodule

module tb;
    reg clk;
    reg d;
    wire q;

    dff uut (
        .clk(clk),
        .d(d),
        .q(q)
    );

    initial begin
        $dumpfile("dff.vcd");
        $dumpvars(0, tb);

        clk = 0;
        d = 0;

        #5 d = 1;
        #5 clk = 1;   // Rising edge at t=10
        #5 clk = 0;

        // This change will violate hold time
        #1 d = 0;     // Change d too soon after posedge clk at t=10

        #5 clk = 1;   // Another rising edge at t=20
        #5 clk = 0;

        // Normal case: d changes early enough before the next clk edge
        #2 d = 1;
        #3 clk = 1;   // Rising edge at t=30
        #5 clk = 0;

        #10 $finish;
    end
endmodule

