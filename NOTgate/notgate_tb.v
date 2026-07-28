module notgate_tb;
reg a;
wire b;
notgate dut(.a(a),.b(b));
initial begin
    $dumpfile("notgate.vcd");
    $dumpvars(0,notgate_tb);
    $monitor("a=%b,b=%b",a,b);
    a=0;
    #5;
    a=1;
    #5;
    $finish;
end
endmodule
