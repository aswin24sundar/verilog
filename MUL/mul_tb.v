module mul_tb;
reg [3:0]a,b;
wire [7:0]y;
mul dut (.a(a),.b(b),.y(y));
initial begin
    $dumpfile("mul.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,y=%b",a,b,y);
    a=4'b0010;b=4'b0010;
    #5;
end
endmodule
