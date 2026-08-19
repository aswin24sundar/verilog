module pri_encoder4_2_tb;
  reg [3:0]a;
  wire [1:0]y;
  pri_encoder4_2 dut (.a(a),.y(y));
  integer i;
  initial begin
    $monitor("a=%b,y=%b",a,y);
    for(i=0;i<16;i=i+1)begin
      {a}=i;
      #5;
    end
  end
endmodule
