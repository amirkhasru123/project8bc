module lshift_4b_reg (  input d,
                        input clk,
                        input rstn,
                        output reg [3:0] out
                     );

   always @ (posedge clk) begin
      if (!rstn) begin
         out <= 0;
      end else begin
         out <= {out[2:0], d};
      end
   end
endmodule

module tb;
	reg clk, rstn, d;
	wire [3:0] out;
  integer i;

  lshift_4b_reg u0 (  .d(d), .clk(clk), .rstn(rstn), .out(out));

	always #10 clk = ~clk;

	initial begin
    {clk, rstn, d} <= 0;

    #10 rstn <= 1;

    for (i = 0; i < 20; i=i+1) begin
      @(posedge clk) d <= $random;
    end

    #10 $finish;
	end
endmodule
