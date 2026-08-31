module div_tb;
reg [3:0]a,b;
wire [3:0]y;
div dut (.a(a),.b(b),.y(y));
initial begin
    $dumpfile("div.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,y=%b",a,b,y);
    a=4'b0100;b=4'b0010;
    #5;
end
endmodule
