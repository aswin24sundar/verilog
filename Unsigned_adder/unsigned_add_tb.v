module unsigned_add_tb;
reg [3:0]a;
reg [3:0]b;
wire [4:0]y;
unsigned_add dut (.a(a),.b(b),.y(y));
initial begin
    $dumpfile("unsigned_add.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,y=%b",a,b,y);
    a=4'd3;b=4'd4;
    #5;
end
endmodule
