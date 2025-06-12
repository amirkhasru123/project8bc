`timescale 1ns/1ps

module des(input a,b,output out1,out2);
  and #(2,3) o1 (out1,a,b);
  bufif0 #(5,6,7) b1 (out2,a,b);
endmodule

module tb_des;
  reg a, b;
  wire out1, out2;

  des uut(.a(a),.b(b),.out1(out1),.out2(out2));

  initial begin
    $monitor("%4t\t%b %b |   %b     %b", $time, a, b, out1, out2);

    a = 0; b = 0; #15; // AND = 0, bufif0 = z → 0
    a = 1;       #15; // AND = 0→1 (2ns), bufif0 = 0→1 (5ns)
    b = 1;       #15; // AND = 1, bufif0 = 1 → z (7ns)
    a = 0;       #15; // AND = 1→0 (3ns), bufif0 stays z
    b = 0;       #15; // bufif0 = z → 0 (5ns)
    a = 1;       #15; // AND = 0→1 (2ns), bufif0 = 0→1 (5ns)
    $finish;
  end
endmodule
