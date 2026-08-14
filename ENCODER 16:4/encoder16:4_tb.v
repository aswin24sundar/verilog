module encoder16_4_tb;
  reg [15:0]a;
  wire [3:0]y;
  encoder16_4 dut(.a(a),.y(y));
  integer i;
  initial begin
    $monitor("a=%b,y=%b",a,y);
    for(i=0;i<16;i=i+1)begin
      a=(16'b0000000000000001 << i);
      #5;
    end
  end
endmodule
      
