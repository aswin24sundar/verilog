module mux32_1_tb;
reg [31:0]a;
reg [4:0]s;
wire y;
mux32_1 dut(.a(a),.s(s),.y(y));
initial begin
    $dumpfile("mux32_1.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,s=%b,y=%b",a,s,y);
    a=32'd12;s=5'd3;
    #5;
    $finish;
end
endmodule
