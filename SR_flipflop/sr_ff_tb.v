module srff_tb;
reg s,r,clk;
wire q;
srff dut (.s(s),.r(r),.clk(clk),.q(q));
initial begin
    $dumpfile("srff.vcd");
    $dumpvars(0,dut);
    $monitor("s=%b,r=%b,clk=%b,q=%b",s,r,clk,q);
    clk=0;s=0;r=0;
    #10;
    r=1;
    #10;
    s=1;r=0;
    #10;
    r=1;
    #5;
    $finish;
end
always #5 clk=~clk;
endmodule 
