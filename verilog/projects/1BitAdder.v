// 1BitAdder.v
module fpga4student_adder(input A, B, Ci,output S, Co);
    wire tmp1, tmp2, tmp3;

    xor u1(tmp1, A, B);
    and u2(tmp2, A, B);
    and u3(tmp3, tmp1, Ci);
    or  u4(Co, tmp2, tmp3);
    xor u5(S, tmp1, Ci);
endmodule


module test;
    reg A, B, Ci;
    wire S, Co;

    fpga4student_adder dut(.A(A), .B(B), .Ci(Ci), .S(S), .Co(Co));

    initial begin
        $display("A B Ci | S Co");
        $monitor("%b %b %b | %b %b", A, B, Ci, S, Co);
        A = 0; B = 0; Ci = 0; #10;
        A = 0; B = 0; Ci = 1; #10;
        A = 0; B = 1; Ci = 0; #10;
        A = 0; B = 1; Ci = 1; #10;
        A = 1; B = 0; Ci = 0; #10;
        A = 1; B = 0; Ci = 1; #10;
        A = 1; B = 1; Ci = 0; #10;
        A = 1; B = 1; Ci = 1; #10;
        $finish;
    end
endmodule
