module signed_add_tb;
reg signed [3:0]a;
reg signed [3:0]b;
wire signed [4:0]y;
signed_add dut(.a(a),.b(b),.y(y));
initial begin
    $dumpfile("signed_add.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,y=%b",a,b,y);
    a=4'd3;b=4'd7;
    #5;
end
endmodule
