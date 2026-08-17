module decoder1_2_tb;
  reg a;
  wire [1:0]y;
  decoder1_2 dut(.a(a),.y(y));
  initial begin
    $monitor("a=%b,y=%b",a,y);
    a=0;
    #5;
  end
endmodule 
