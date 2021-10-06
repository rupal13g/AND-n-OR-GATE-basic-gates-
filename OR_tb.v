module or_tb;
  reg ta, tb;
  wire ty;
  orgate og (.a(ta), .b(tb), .y(ty));
  initial
    begin
       $monitor (ta, tb, ty);
      ta = 1'b0;
      tb = 1'b0;
      #10
      ta = 1'b0;
      tb = 1'b1;
      #10
      ta = 1'b1;
      tb = 1'b0;
      #10
      ta = 1'b1;
      tb = 1'b1;
    end
endmodule
