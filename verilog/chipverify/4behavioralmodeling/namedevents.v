module tb;
  event a_event;
  event b_event0, b_event1, b_event2, b_event3, b_event4;

  initial begin
    #20 -> a_event;
    #30 -> a_event;
    #50 -> a_event;
    #10 -> b_event3;
  end

  always @ (a_event)
    $display ("T=%0t [always] a_event is triggered", $time);

  initial begin
    #25;
    @(a_event)
      $display ("T=%0t [initial] a_event is triggered", $time);

    #10;
    @(b_event3)
      $display ("T=%0t [initial] b_event3 is triggered", $time);
  end
endmodule

