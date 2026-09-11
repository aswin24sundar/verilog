module tff_tb;
reg t,clk;
wire q;
tff dut (.t(t),.clk(clk),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("tff.vcd");
    $dumpvars(0,dut);
    $monitor("t=%b,clk=%b,q=%b",t,clk,q);
    clk=0;t=0;
    #10;t=1;
    #5;
    $finish;
end
endmodule
