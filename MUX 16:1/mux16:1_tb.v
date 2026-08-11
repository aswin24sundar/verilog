module mux16_1_tb;
reg [15:0]a;
reg [3:0]s;
wire y;
mux16_1 dut(.a(a),.s(s),.y(y));
initial begin
    $dumpfile("mux16_1.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,s=%b,y=%b",a,s,y);
    a=16'd12;s=4'd3;
    #5;
    $finish;
end
endmodule
