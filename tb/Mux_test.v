module mux_test();
reg A,B,SEL;
wire out;
Mux uut(
  .a (A),
  .b (B), 
  .sel (SEL),
  .out (OUT)
  );

initial begin
  A=1'b1;
  B=1'b0;
  SEL = 1'b0;
  
end

endmodule