`timescale 1ns/1ps

// --------------------------------------------------
// RTL Module (AND gate)
// --------------------------------------------------
module andgate(input a, b, output x);
    assign x = a & b;
endmodule

// --------------------------------------------------
// Gate-level Netlist (Example)
// Normally this would be generated by synthesis tools
// but here we write it manually for demonstration.
// --------------------------------------------------
module andgate_gatelevel(input a, b, output x);
    // Using primitive gates for illustration
    and U1 (x, a, b);
endmodule

// --------------------------------------------------
// Testbench for GLS
// --------------------------------------------------
module andgate_tb;
    reg a, b;
    wire x;

    // DUT: instantiate the gate-level netlist
    andgate_gatelevel DUT (.a(a), .b(b), .x(x));

    initial begin
        $dumpfile("gls_example.vcd");
        $dumpvars(0, andgate_tb);
        
        // Stimulus
        a = 0; b = 0;
        #5 a = 0; b = 1;
        #5 a = 1; b = 0;
        #5 a = 1; b = 1;
        #5 $finish;
    end

    always @(x) begin
        $display("Time=%0t : a=%b, b=%b, x=%b", $time, a, b, x);
    end
endmodule

