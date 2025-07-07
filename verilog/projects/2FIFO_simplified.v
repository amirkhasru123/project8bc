`timescale 1ns/1ps

module fifo (
    input        clk, rst_n, wr, rd,
    input [7:0]  data_in,
    output reg [7:0] data_out,
    output       fifo_full, fifo_empty,
    output reg   fifo_threshold, fifo_overflow, fifo_underflow
);
    reg [7:0] mem [0:15];
    reg [4:0] wptr, rptr;
    reg [5:0] count;

    assign fifo_empty = (count == 0);
    assign fifo_full  = (count == 16);

    always @(*) fifo_threshold = (count >= 8);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wptr <= 0; rptr <= 0; count <= 0;
            data_out <= 0;
            fifo_overflow <= 0;
            fifo_underflow <= 0;
        end else begin
            fifo_overflow <= 0;
            fifo_underflow <= 0;

            // Write operation
            if (wr) begin
                if (!fifo_full) begin
                    mem[wptr] <= data_in;
                    $display("WRITE TIME=%0t: mem[%0d] = %0h", $time, wptr, data_in);

                    // Print entire RAM content
                    $write("FIFO RAM: ");
                    for (integer j = 0; j < 16; j = j + 1) begin
                        $write("%0h ", mem[j]);
                    end
                    $write("\n");

                    wptr <= wptr + 1;
                    count <= count + 1;
                end else begin
                    fifo_overflow <= 1;
                end
            end

            // Read operation
            if (rd) begin
                if (!fifo_empty) begin
                    data_out <= mem[rptr];
                    rptr <= rptr + 1;
                    count <= count - 1;
                end else begin
                    fifo_underflow <= 1;
                end
            end
        end
    end
endmodule


module tb_fifo_simple;
    parameter ENDTIME = 40000;
    reg clk = 0, rst_n = 0, wr = 0, rd = 0;
    reg [7:0] data_in = 0;
    wire [7:0] data_out;
    wire fifo_full, fifo_empty;
    wire fifo_threshold, fifo_overflow, fifo_underflow;
    integer i;

    fifo dut (
        .clk(clk), .rst_n(rst_n),
        .wr(wr), .rd(rd),
        .data_in(data_in),
        .data_out(data_out),
        .fifo_full(fifo_full), .fifo_empty(fifo_empty),
        .fifo_threshold(fifo_threshold),
        .fifo_overflow(fifo_overflow),
        .fifo_underflow(fifo_underflow)
    );

    always #5 clk = ~clk;

    initial begin
        $display("------------------ SIMULATION RESULT ----------------");
        $monitor("TIME=%0d, wr=%b, rd=%b, in=%0h out=%0h full=%b empty=%b thr=%b ovf=%b unf=%b",
                 $time, wr, rd, data_in, data_out,
                 fifo_full, fifo_empty,
                 fifo_threshold, fifo_overflow, fifo_underflow);
        rst_n = 0; wr = 0; rd = 0; data_in = 0;
        #10 rst_n = 1;

        // Write 17 values (to test overflow)
        for (i = 0; i < 17; i = i + 1) begin
            #10 wr = 1; data_in = i;
            #10 wr = 0;
        end

        // Read 17 values (to test underflow)
        for (i = 0; i < 17; i = i + 1) begin
            #10 rd = 1;
            #10 rd = 0;
        end

        #ENDTIME $finish;
    end
endmodule

