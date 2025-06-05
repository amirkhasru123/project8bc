module des(input d,nctrl,pctrl,output out);
  cmos(out,d,nctrl,pctrl);
endmodule

module tb;
  reg d,nctrl,pctrl;
  wire out;

  des u0(.d(d),.nctrl(nctrl),.pctrl(pctrl),.out(out));

  initial begin
    {d,nctrl,pctrl}<=0;

    $monitor ("T=%0t d=%0b nctrl=%0b pctrl=%0b out=%0b",$time,d,nctrl,pctrl,out);

    #10 d <= 1;
    #10 nctrl <= 1;
    #10 pctrl <= 1;
    #10 nctrl <= 0;
    #10 pctrl <= 0;
    #10 d <= 0;
    #10;
  end
endmodule
