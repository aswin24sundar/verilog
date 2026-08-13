module encoder2_1_tb;
reg [1:0]a;
wire y;
encoder2_1 dut (.a(a),.y(y));
initial begin
    $dumpfile("encoder2_1.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
    a=2'd2;
    #5;
    $finish;
end
endmodule
