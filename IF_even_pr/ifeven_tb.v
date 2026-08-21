module even_par_tb;
  reg [3:0]a;
  wire [4:0]y;
  even_par dut (.a(a),.y(y));
  initial begin 
    $monitor("a=%b,y=%b",a,y);
    a=4'b1011;
    #5;
  end
endmodule
    
  
