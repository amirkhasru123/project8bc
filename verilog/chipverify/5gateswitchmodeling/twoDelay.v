`timescale 1ns/1ps

module des(input a,b,output out1,out2);
	and #(2,3) o1 (out1,a,b);
	bufif0 #(4,5) b1 (out2,a,b);
endmodule

module tb_des;
  reg a, b;
  wire out1, out2;

  des uut(.a(a),.b(b),.out1(out1),.out2(out2));

  initial begin
    $monitor("%4t\t %b %b | %b %b",$time,a,b,out1,out2);
    a = 0; b = 0; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    a = 0; b = 1; #10;
    a = 0; b = 0; #10;
    a = 1; b = 0; #10;
    $finish;
  end
endmodule
