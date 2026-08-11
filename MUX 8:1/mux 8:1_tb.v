module mux81_tb;
reg [7:0]a;
reg [2:0]s;
wire y;
mux81 dut(.a(a),.s(s),.y(y));
initial begin
    $dumpfile("mux81.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,s=%b,y=%b",a,s,y);
    a=8'd12;s=3'd3;
    #5;
    $finish;
end
endmodule
