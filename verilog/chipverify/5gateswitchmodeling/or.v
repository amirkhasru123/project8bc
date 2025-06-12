module orgate(input a, b, output x);
    or(x, a, b);
endmodule

module tb;
    reg a, b;
    wire x;
    integer i;

    orgate dut(.a(a), .b(b), .x(x));

    initial begin
        $monitor("%b %b = %b", a, b, x); 
        for (i = 0; i < 4; i++) begin
            {a, b} = i;                
           	#10
        end
    end
endmodule

