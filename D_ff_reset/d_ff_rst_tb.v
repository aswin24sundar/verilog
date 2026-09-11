module dff_rst_tb;
reg d,clk,rst;
wire q;
dff_rst dut (.d(d),.clk(clk),.rst(rst),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("dff_rst.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,clk=%b,rst=%b,q=%b",d,clk,rst,q);
    clk=0;
    for(integer i=0;i<4;i=i+1) begin
        {d,rst} = i;
        #10;
    end
    $finish;
end
endmodule 
