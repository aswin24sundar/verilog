module parity_even_tb;
  reg [3:0]a;
  wire [4:0]y;
  parity_even dut(.a(a),.y(y));
  initial begin 
    $monitor("a=%b,y=%b",a,y);
    a=4'b1101;
    #5;
  end
endmodule 
