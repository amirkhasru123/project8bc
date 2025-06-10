//After 100+ hours of hardworking, now I have earnt the capability to implement following code.
`timescale 1ns/1ps

module fullAdder(input  a,b,cin, output sum,carry);
    assign sum   = a^b^cin;
    assign carry = (a&b)|(b&cin)|(a&cin);
endmodule

module myDesign #(parameter N=4) (input [N-1:0] a,b, input cin, output [N-1:0] sum, output carry_out);
    wire [N:0] carry; 
    assign carry[0] = cin;

    genvar i;
    generate
        for (i=0; i<N; i=i+1) begin : fa_array
            fullAdder dut (.a(a[i]),.b(b[i]),.cin(carry[i]),.sum(sum[i]),.carry(carry[i+1]));
        end
    endgenerate

    assign carry_out = carry[N];
endmodule

module tbMyDesign;
    parameter N=4;
    reg  [N-1:0] a, b;
    reg          cin;
    wire [N-1:0] sum;
    wire         carry_out;

    myDesign #(N) dut (.a(a),.b(b),.cin(cin),.sum(sum),.carry_out (carry_out)
    );

    initial begin
        a=4'b0001; b=4'b0010; cin=1'b0; #5;
        $display("%0dns\t%b %b %b | %b %b", $time, a, b, cin,carry_out, sum);
        $finish;
    end
endmodule
