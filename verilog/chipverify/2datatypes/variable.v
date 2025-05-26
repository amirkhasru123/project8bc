module variable(input a, b, output c);
    assign c = a & b; // assign will hold the data of a & b in c
endmodule

module test;
    reg a, b;
    wire c;

    integer int_a;
    real real_b;
    time time_c;
    realtime realtime_d;

    variable dut(.a(a), .b(b), .c(c));

    initial begin
        a = 0;
        b = 1;
        #1; //wait for 1 unit of time

        //Set other variables
        int_a = 32'd124; //32-bit decimal
        real_b = 0.123456; //real number
        time_c = $time; //time
        realtime_d = $realtime; //realtime

        $display("%b %b = %b", a, b, c);

        $display("integer=%0d real=%0.5f time=%0t realtime=%0t", int_a, real_b, time_c, realtime_d); //%0t = time, %0t = realtime, %0.5f = fflot with 5 digits after . 
        $finish;
    end
endmodule

