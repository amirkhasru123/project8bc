module net_types;
  // wire 
  wire net_wire;
  assign net_wire = 1'b1;
  assign net_wire = 1'b0; // multiple drivers possible; unknown x will be shown as output.

  // uwire
  uwire net_uwire;
  assign net_uwire = 1'b1;
  //assign net_uwire = 1'b0; // Uncommenting this will get an error. Multiple drivers not possible.

  //tri
  logic dev1 = 1, dev2 = 0;
  wire [1:0] dev1_value = 2'b11;
  wire [1:0] dev2_value = 2'b10;
  tri [1:0] net_tri;

  //Multiple drivers:
  assign net_tri = (dev1) ? dev1_value : 2'bzz;
  assign net_tri = (dev2) ? dev2_value : 2'bzz;

  // wor
  wor net_wor;
  assign net_wor = 1'b0;
  assign net_wor = 1'b1;

  // wand
  wand net_wand;
  assign net_wand = 1'b1;
  assign net_wand = 1'b0;

  // tri0
  tri0 net_tri0;
  assign net_tri0 = 1'bz;
  assign net_tri0 = 1'b1;

  // tri1
  tri1 net_tri1;
  assign net_tri1 = 1'bz;

  // supply0
  supply0 net_supply0;

  // supply1
  supply1 net_supply1;

  // iverilog doesn't support trireg

  initial begin
	#5;
    $display("net_wire     = %b", net_wire);

	#5
    $display("net_uwire    = %b", net_uwire);

    #5 dev1 = 1; dev2 = 0;
    $display("net_tri (dev1=1, dev2=0) = %b", net_tri);
    dev1 = 0; dev2 = 1;
    #5;
    $display("net_tri (dev1=0, dev2=1) = %b", net_tri);
    dev1 = 1; dev2 = 1;
    #5;
    $display("net_tri (dev1=1, dev2=1) = %b", net_tri);
    dev1 = 0; dev2 = 0;
    #5;
    $display("net_tri (dev1=0, dev2=0) = %b", net_tri);

    $display("net_wor      = %b", net_wor);
    $display("net_wand     = %b", net_wand);
    $display("net_tri0     = %b", net_tri0);
    $display("net_tri1     = %b", net_tri1);
    $display("net_supply0  = %b", net_supply0);
    $display("net_supply1  = %b", net_supply1);
    $finish;
  end
endmodule
