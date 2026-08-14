module encoder4_2_tb;
reg [3:0]a;
wire [1:0]y;
encoder4_2 dut(.a(a),.y(y));
initial begin
    $dumpfile("encoder4_2.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
    a=4'd2;
    #5;
    $finish;
end
endmodule
