module jkff_tb;
reg j,k,clk;
wire q;
jkff dut (.j(j),.k(k),.clk(clk),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("jkff.vcd");
    $dumpvars(0,dut);
    $monitor("j=%b,k=%b,clk=%b,q=%b",j,k,clk,q);
    clk=0;j=0;k=0;
    #10;j=0;k=1;
    #10;j=1;k=0;
    #10;k=1;
    #5;
    $finish;
end
endmodule

    
    
