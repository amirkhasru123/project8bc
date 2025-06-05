module sumModule;
    reg [1:0] a, b;
    wire [2:0] result;

    function [2:0] sumFunc;
        input [1:0] a, b;
        begin
            sumFunc = a + b;
        end
    endfunction

    assign result = sumFunc(a, b);

    initial begin
        a = 10; b = 11;
        #3 $display("%b + %b = %b", a, b, result);
    end
endmodule

