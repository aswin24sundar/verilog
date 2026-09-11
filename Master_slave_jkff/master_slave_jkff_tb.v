module jkms_tb;
reg j,k,clk;
wire q;
jkms dut (.j(j),.k(k),.clk(clk),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("jkms.vcd");
    $dumpvars(0,dut);
    $monitor("j=%b,k=%b,clk=%b,q=%b",j,k,clk,q);
    clk=1;j=0;k=0;
    #10;k=1;
    #10;j=1;k=0;
    #10;k=1;
    #5;$finish;
end
endmodule 
