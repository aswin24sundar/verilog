module dff_syn_tb;
reg d,clk,rst;
wire q;
dff_syn dut (.d(d),.clk(clk),.rst(rst),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("dff_syn.vcd");
    $dumpvars(0,dut);
    $monitor("time=%d d=%b,clk=%b,rst=%b,q=%b",$time,d,clk,rst,q);
    d=1;clk=0;rst=1;
    #10;d=0;rst=0;
    #10;d=1;rst=1;
    #5;$finish;
end
endmodule 
