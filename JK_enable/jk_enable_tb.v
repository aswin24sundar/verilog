module jk_en_tb;
reg j,k,clk,en;
wire q;
jk_en dut (.j(j),.k(k),.clk(clk),.en(en),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("jk_en.vcd");
    $dumpvars(0,dut);
    $monitor("j=%b,k=%b,clk=%b,en=%b,q=%b",j,k,clk,en,q);
    clk=0;
    for(integer i=0;i<8;i=i+1)begin
        {j,k,en}=i;
        #10;
    end
    $finish;
end
endmodule 
