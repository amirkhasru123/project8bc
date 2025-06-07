jj// If you are new at Verilog, most the the following code won't be understood by you. Just keep reading. You can come back here later.
// After one months of hard work and spending 100+ hours, I finally got it. -Amir, 7th June, 2025.
// 
// A counter is a block of code. We've taken a module, and named it counter. Module counter has four ports of which three are inputs and the last one is output. 
// up_down checks whether to increase or to decrease. 
// clk will generate a pulse signal. 
// rstn will set or reset output.
// out will show output.
module counter(input up_down, input clk, input rstn, output reg [2:0] out);

// When the positive edge of the pulse is found, counter operates.
always @(posedge clk or negedge rstn) begin
	// If rstn=0 then output=0 i.e. the ouput resets.
    if (!rstn)
        out <= 0;   
    else begin
		//up_down=1, output will will increase by one. Otherwise output will decrease by one.
        if (up_down)
            out <= out + 1;  
        else
            out <= out - 1;
    end
end

endmodule

//Test counter module here. No port list is available.
module test;
    reg up_down;
    reg clk = 0;
    reg rstn;
    wire [2:0] out;

    counter dut(.up_down(up_down),.clk(clk),.rstn(rstn),.out(out));

    //Generate clock with period of 10 time units
    always #5 clk = ~clk;

    initial begin
        //Continuously monitor changes
        $monitor("Time=%0t up_down=%b clk=%b rstn=%b out=%b", $time, up_down, clk, rstn, out);
        rstn = 0;     
        up_down = 1; 
        #15 rstn = 1;
        #100 $finish;
    end
endmodule
