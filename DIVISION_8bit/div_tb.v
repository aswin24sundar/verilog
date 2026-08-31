module div_tb;
reg[7:0]a,b;
wire[3:0]y;
div dut (.a(a),.b(b),.y(y));
initial begin
    $dumpfile("div.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,y=%b",a,b,y);
    a=8'd4;b=8'd2;
    #5;
end
endmodule
