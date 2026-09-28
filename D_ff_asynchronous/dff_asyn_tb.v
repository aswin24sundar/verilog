module dff_asyn_tb;
reg d,clk,rst;
wire q;
always #5 clk=~clk;
dff_asyn dut(.d(d),.clk(clk),.rst(rst),.q(q));
initial begin
    $dumpfile("dff_asyn.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,clk=%b,rst=%b,q=%b",d,clk,rst,q);
    d=1;clk=0;rst=0;
    #10;d=1;rst=1;
    #10;d=1;rst=0;
    #5;
    $finish;
end
endmodule
