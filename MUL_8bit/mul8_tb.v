module mul_tb;
reg[7:0]a,b;
wire[15:0]y;
mul dut (.a(a),.b(b),.y(y));
initial begin
    $dumpfile("mul.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,y=%b",a,b,y);
    a=8'd8;b=8'd2;
    #5;
end
endmodule
