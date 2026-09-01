module barrel_sh_tb;
  reg [3:0]a;
  reg [3:0]s;
  wire [3:0]y;
  barrel_sh dut (.a(a),.s(s),.y(y));
  integer i;
  initial begin
    $monitor("a=%b,s=%b,y=%b",a,s,y);
    for(i=0;i<8;i=i+1)begin
      s=i;
    a=4'b1011;
    #5;
  end
  end
endmodule 
