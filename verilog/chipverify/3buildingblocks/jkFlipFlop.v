module jk_ff (input	j, input k, input rstn, input clk, output reg q);
	always @ (posedge clk or negedge rstn) begin
		if (!rstn) begin
			q <= 0;
		end else begin
	  	q<=(j&~q)|(~k&q);
	  end
  end
endmodule

module tb;
	reg j,k,rstn,clk;
	wire q;
	integer i;
	reg [2:0] dly;

	always #10 clk = ~clk;

	jk_ff u0(.j(j),.k(k),.clk(clk),.rstn(rstn),.q(q));

	initial begin
		{j,k,rstn,clk}<=0;
		#10 rstn<=1;

		for(i=0;i<10;i=i+1) begin
			dly=$random;
			#(dly) j<= $random;
			#(dly) k<= $random;
		end

		#20 $finish;
	end
endmodule
