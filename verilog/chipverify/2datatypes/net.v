module net_types;

  //wire
  wire net_wire;
  assign net_wire = 1'b1;

  //tri
  tri net_tri;
  assign net_tri = 1'b0;
  assign net_tri = 1'b1;

  //wor
  wor net_wor;
  assign net_wor = 1'b0;
  assign net_wor = 1'b1;

  //wand
  wand net_wand;
  assign net_wand = 1'b1;
  assign net_wand = 1'b0;

  //tri0
  tri0 net_tri0;
  assign net_tri0 = 1'bz;

  //tri1
  tri1 net_tri1;
  assign net_tri1 = 1'bz;

  //supply0
  supply0 net_supply0;

  //supply1
  supply1 net_supply1;

  //uwire
  uwire net_uwire;
  assign net_uwire = 1'b1;

  //iverilog doesn't support trireg

  initial begin
    #5;
    $display("net_wire     = %b", net_wire);
    $display("net_tri      = %b", net_tri);
    $display("net_wor      = %b", net_wor);
    $display("net_wand     = %b", net_wand);
    $display("net_tri0     = %b", net_tri0);
    $display("net_tri1     = %b", net_tri1);
    $display("net_supply0  = %b", net_supply0);
    $display("net_supply1  = %b", net_supply1);
    $display("net_uwire    = %b", net_uwire);
    $finish;
  end
endmodule

