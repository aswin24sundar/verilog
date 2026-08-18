module decoder3_8_tb;
  reg [2:0]a;
  wire [7:0]y;
  decoder3_8 dut(.a(a),.y(y));
  integer i;
  initial begin 
    $monitor("a=%b,y=%b",a,y);
    for(i=0;i<8;i=i+1)begin
      {a}=i;
      #5;
    end
  end
endmodule
