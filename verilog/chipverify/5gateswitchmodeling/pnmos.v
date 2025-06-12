module cmos_inverter(input a,output y);
    wire w;
    supply1 vdd;
    supply0 gnd;
    nmos n1(y,gnd,a);
    pmos p1(y,vdd,a);
endmodule

module tb_cmos_inverter;
    reg a;
    wire y;

    cmos_inverter uut(.a(a),.y(y));

    initial begin
        a = 0; #10; $display("%b %b", a, y); //pmos will turn on
        a = 1; #10; $display("%b %b", a, y); //nmos will turn on
        $finish;
    end
endmodule
