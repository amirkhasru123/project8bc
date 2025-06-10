module demux_1x4(input f,input [1:0] sel,output reg a,b,c,d);
  always @(f or sel) begin
    a = f & ~sel[1] & ~sel[0];
    b = f &  sel[1] & ~sel[0];
    c = f & ~sel[1] &  sel[0];
    d = f &  sel[1] &  sel[0];
  end
endmodule

module tb;
  reg f;
  reg [1:0] sel;
  wire a, b, c, d;
  integer i;

  demux_1x4 u0(.f(f),.sel(sel),.a(a),.b(b),.c(c),.d(d));

  initial begin
    f <= 0;
    sel <= 0;

    $monitor("f=%0b sel=%0b a=%0b b=%0b c=%0b d=%0b", f, sel, a, b, c, d);

    //There are 3 inputs. So there can be 8 different permutation of inputs. 
    for(i=0;i<8;i=i+1) begin
      {f,sel} = i;
      #10;
    end
  end
endmodule
