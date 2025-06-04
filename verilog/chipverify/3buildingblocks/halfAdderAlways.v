module halfAdderAlways (
    input wire a,
    input wire b,
    output reg sum,
    output reg carry
);
    always @(*) begin
        sum = a ^ b;  
        carry = a & b;
    end
endmodule

module testbench;
    reg a, b;
    wire sum, carry;

    halfAdderAlways dut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        a = 0; b = 0; #10;
        $display("%b %b | %b %b", a, b, carry,sum);
        a = 0; b = 1; #10;
        $display("%b %b | %b %b", a, b, carry,sum);
        a = 1; b = 0; #10;
        $display("%b %b | %b %b", a, b, carry,sum);
        a = 1; b = 1; #10;
        $display("%b %b | %b %b", a, b, carry,sum);
        $finish;
    end
endmodule

