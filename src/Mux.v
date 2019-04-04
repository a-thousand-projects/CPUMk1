module Mux(input a, input b,input sel, output reg out);
  //input a,b,sel;
  //output out;
  
  always @ (sel)
  begin
    out <= (a & ~sel) | (b &sel);
  end
  
endmodule