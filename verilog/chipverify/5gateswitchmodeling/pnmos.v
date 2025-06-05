module des (input d,ctrl,output outn,outp);

  nmos(outn,d,ctrl);
  pmos (outp,d,ctrl);
endmodule

module tb;
  reg d,ctrl;
  wire outn,outp;

  des u0(.d(d),.ctrl(ctrl),.outn(outn),.outp(outp));

  initial begin
    {d,ctrl}<=0;

    $monitor ("T=%0t d=%0b ctrl=%0b outn=%0b outp=%0b", $time, d, ctrl, outn, outp);

    #10 d <= 1;
    #10 ctrl <= 1;
    #10 ctrl <= 0;
    #10 d <= 0;
  end
endmodule
