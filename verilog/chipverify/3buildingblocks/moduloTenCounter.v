module mod10_counter ( 	input		clk,
												input 	rstn,
												output	reg[3:0] out);

	always @ (posedge clk) begin
		if (!rstn) begin
			out <= 0;
		end else begin
			if (out == 10)
				out <= 0;
			else
				out <= out + 1;
		end
	end
endmodule

module tb;
    reg clk, rstn;
    wire [3:0] out;

    // Instantiate the mod10_counter
    mod10_counter u0 (
        .clk(clk),
        .rstn(rstn),
        .out(out)
    );

    // Clock generation
    always #10 clk = ~clk;

    // Stimulus
    initial begin
        clk = 0;
        rstn = 0;

        #10 rstn = 1;
        #450 $finish;
    end
endmodule

