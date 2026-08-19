module pri_enc_tb;
  reg[7:0]a;
  wire[2:0]y;
  pri_enc dut (.a(a),.y(y));
  integer i;
  initial begin
    $monitor("a=%b,y=%b",a,y);
    for(i=0;i<256;i=i+1)begin
      a=i;
      #5;
    end
    $finish;
  end
endmodule
    
