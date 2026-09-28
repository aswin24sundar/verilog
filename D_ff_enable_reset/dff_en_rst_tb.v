module dff_en_rst_tb;
reg d,clk,rst,en;
wire q;
dff_en_rst dut(.d(d),.clk(clk),.rst(rst),.en(en),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("dff_en_rst.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,clk=%b,rst=%b,en=%b,q=%b",d,clk,rst,en,q);
    d=1;clk=0;rst=1;en=0;
    #10;d=1;rst=0;en=1;
    #10;d=0;rst=1;en=0;
    #5;$finish;
end
endmodule 
