`timescale 1ns / 1ps //??

module counter4bit (
    input wire clk,    
    input wire reset, 
    output reg [3:0] count 
);

always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 4'b0000;
    else
        count <= count + 1; 
end

endmodule

module counter4bit_tb;
reg clk;
reg reset;
wire [3:0] count;

counter4bit uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

always begin
    #5 clk = ~clk;
end

initial begin
    clk = 0;
    reset = 1;  
    #12;       

    reset = 0;
    #100;    

    reset = 1;
    #10;

    reset = 0;
    #50;

    $stop;
end

initial begin
    $monitor("Time=%0t | Reset=%b | Count=%b", $time, reset, count);
end
endmodule
