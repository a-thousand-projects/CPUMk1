module tb_Mux4x16;
  reg [15:0] a;
  reg [15:0] b;
  reg [15:0] c;
  reg [15:0] d;
  
  reg [1:0] sel;
  
  wire [15:0] out;
  
  integer i;
  
  
  Mux4x16 mux_test(
  .a (a),
  .b (b),
  .c (c),
  .d (d),
  .sel (sel),
  .out (out)
  );
  
  initial begin
    $monitor ("[%0t] sel=0x%0h a=0x%0h b=0x%0h c=0x%0h d=0x%0h out=0x%0h", $time, sel, a, b, c, d, out); 
   // 1. At time 0, drive random values to a/b/c/d and keep sel = 0
      sel <= 0;
      a <= $random;
      b <= $random;
      c <= $random;
      d <= $random;
 
      // 2. Change the value of sel after every 5ns
      for (i = 1; i < 4; i=i+1) begin
         #5 sel <= i;
      end
 
      // 3. After Step2 is over, wait for 5ns and finish simulation
      //#5 $finish;
  
end
        
endmodule
