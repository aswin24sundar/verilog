module alu_tb;
  reg [7:0]a,b;
  reg [3:0] s;
  wire [15:0]y;
  alu dut (.a(a),.b(b),.s(s),.y(y));
  integer i;
  initial begin 
    $monitor("a=%b,b=%b,s=%b ,y=%b",a,b,s,y);
    a=4'd2;b=4'd5;
    for(i=0;i<16;i=i+1)begin
      s=i;
    
      #5;
    end
  end
endmodule
