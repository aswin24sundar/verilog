module right_sh_tb;
  reg[3:0]a;
  wire[3:0]y;
  right_sh dut(.a(a),.y(y));
  initial begin
    $monitor("a=%b,y=%b",a,y);
    a=4'b1011;
    #5;
  end
endmodule
