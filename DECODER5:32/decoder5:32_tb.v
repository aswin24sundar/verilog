module decoder5_32_tb;
  reg [4:0]a;
  wire [31:0]y;
  decoder5_32 dut (.a(a),.y(y));
  integer i;
  initial begin
    $monitor("a=%b,y=%b",a,y);
    for(i=0;i<32;i=i+1)begin
      {a}=i;
      #5;
    end
  end
endmodule
    
