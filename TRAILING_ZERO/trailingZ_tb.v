module tr_zero_tb;
reg[7:0]a;
wire[3:0]y;
tr_zero dut(.a(a),.y(y));
initial begin
    $dumpfile("tr_zero.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%d",a,y);
    a=8'd16;
    #5;
end
endmodule
