module dff_st_rst_tb;
reg d,st,rst,clk;
wire q;
dff_st_rst dut (.d(d),.st(st),.rst(rst),.clk(clk),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("dff_st_rst.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,st=%b,rst=%b,clk=%b,q=%b",d,st,rst,clk,q);
    clk=0;
    for(integer i=0;i<8;i=i+1)begin
        {d,st,rst}=i;
        #10;
    end
    $finish;
end
endmodule
