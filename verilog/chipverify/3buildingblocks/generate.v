`timescale 1ns/1ps

module ha(input a, b, output sum, cout);
    assign sum  = a^b;
    assign cout = a&b;
endmodule

module my_design
    #(parameter N = 4)
    (
        input  [N-1:0] a, b,
        output [N-1:0] sum, cout
    );
    
    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : ha_array
            ha u_ha (.a(a[i]),.b(b[i]),.sum(sum[i]),.cout(cout[i]));
        end
    endgenerate
endmodule

module tb_my_design;
    parameter N = 4;
    reg  [N-1:0] a, b;
    wire [N-1:0] sum, cout;

    my_design #(N) uut (
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $display("Time\t a    b   | sum  cout");
        $display("-------------------------------");

        a = 4'b0000; b = 4'b0000; #10;
        $display("%0dns\t%b %b | %b %b", $time, a, b, sum, cout);
        a = 4'b0001; b = 4'b0001; #10;
        $display("%0dns\t%b %b | %b %b", $time, a, b, sum, cout);
        a = 4'b1010; b = 4'b0101; #10;
        $display("%0dns\t%b %b | %b %b", $time, a, b, sum, cout);
        a = 4'b1111; b = 4'b1111; #10;
        $display("%0dns\t%b %b | %b %b", $time, a, b, sum, cout);
        a = 4'b1100; b = 4'b0011; #10;
        $display("%0dns\t%b %b | %b %b", $time, a, b, sum, cout);
        $finish;
    end
endmodule
