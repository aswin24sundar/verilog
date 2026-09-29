module jk_rst_tb;
reg j,k,rst,clk;
wire q;
jk_rst dut (.j(j),.k(k),.rst(rst),.clk(clk),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("jk_rst.vcd");
    $dumpvars(0,dut);
    $monitor("j=%b,k=%b,rst=%b,clk=%b,q=%b",j,k,rst,clk,q);
    clk=0;
    for(integer i=0;i<8;i=i+1)begin
        {j,k,rst}=i;
        #10;
    end
    $finish;
end
endmodule
    
