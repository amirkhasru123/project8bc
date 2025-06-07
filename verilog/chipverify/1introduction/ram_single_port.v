//Most of the following codes will not be understood by you. So just keep reading, and try to get familiarized with the code.
//
//After 100+ hours of suffering, I understand these lines of code. -Amir. 7th July, 2025.
//
//ADDER_WIDTH = 4-bit address bus
//DATA_WIDTH = Number of bits per word
module ram_single_port #(parameter ADDR_WIDTH = 4, DATA_WIDTH = 8) (input wire clk, input wire we, input wire [ADDR_WIDTH-1:0] addr, input wire [DATA_WIDTH-1:0] din, output wire [DATA_WIDTH-1:0] dout);

//Declaring memory 
//Memory is nothing but spreadsheet 
//Number of locations in a memory = 2^(ADDER_WIDTH-1)
reg [DATA_WIDTH-1:0] mem[2**ADDR_WIDTH-1:0]; 

//When we get the positive edge of the clk, circuit begins.
always @(posedge clk) begin
	//If we wanna write i.e. we = 1, we will write to din to mem.
    if (we == 1)
		//we need to know the address where to put din.
        mem[addr] <= din;
end
assign dout = mem[addr];
endmodule

module ram_single_port_tb;
	//Parameters to ensure code safety
	//You will learn about this after
    localparam ADDR_WIDTH = 4;
    localparam DATA_WIDTH = 8;

    reg clk;
    reg we;
    reg [ADDR_WIDTH-1:0] addr;
    reg [DATA_WIDTH-1:0] din;
    wire [DATA_WIDTH-1:0] dout;

    ram_single_port #(.ADDR_WIDTH(ADDR_WIDTH), .DATA_WIDTH(DATA_WIDTH)) uut(.clk(clk),.we(we),.addr(addr),.din(din),.dout(dout));

    // Clock generation: 10 time units period
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
		//$monitor function monitors each input change
        $monitor("Time=%0t | we=%b addr=%h din=%h dout=%h", $time, we, addr, din, dout);
        we = 0;
        addr = 0;
        din = 0;
        #10;
        addr = 4'h0; din = 8'hA5; we = 1; 
        #10; we = 0;                     
        addr = 4'h3; din = 8'h3C; we = 1; 
        #10; we = 0;                     
        addr = 4'h0;
        #10;
        addr = 4'h3;
        #10;
        addr = 4'h1;
        #10;
        $finish;
    end
endmodule

//Note: Data change is happening inside of initial begin block.
