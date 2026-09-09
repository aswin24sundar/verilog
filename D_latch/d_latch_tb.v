module d_latch_tb;
reg d;
reg en;
wire q;
d_latch dut (.d(d),.en(en),.q(q));
initial begin
    $dumpfile("d_latch.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,en=%b,q=%b",d,en,q);
    d=0;en=0;
    #5;
    en=1;
    #5;
    d=1;en=0;
    #5;
    en=1;
    #5;
end
endmodule
