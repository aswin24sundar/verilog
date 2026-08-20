module pri_gen_tb;
  reg[3:0]a;
  reg s;
  wire [4:0]y;
  pri_gen dut (.a(a),.s(s),.y(y));
  initial begin
    $monitor("a=%b,s=%b,y=%b",a,s,y);
    a=4'b1001;s=0;
    #5;
    s=1;
  end
endmodule
