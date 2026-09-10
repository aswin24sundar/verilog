module dff_tb;
reg d,clk;
wire q;
dff dut (.d(d),.clk(clk),.q(q));
initial begin
    $dumpfile("dff.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,clk=%b,q=%b",d,clk,q);
    clk=0;d=0;
    #5;
    clk=1;
    #5;clk=0;d=1;
    #5;clk=1;
    #5;
    $finish;
end
endmodule
