module my_module(input a,output y);
  assign y = a; 

  specify
    (a => y) = 2;  // 2 time unit delay from 'a' to 'y'
  endspecify
endmodule

`timescale 1ns/1ns

module tb_my_module;
  reg a;
  wire y;

  my_module dut(.a(a),.y(y));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_my_module);
    a = 0;
    #5;
    a = 1;
    #5;
    a = 0;
    #5;
    $finish;
  end

  initial begin
    $monitor("Time: %0t | a=%b | y=%b", $time, a, y);
  end
endmodule
