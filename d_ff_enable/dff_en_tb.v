module dff_en_tb;
reg d,clk,en;
wire q;
always #5 clk=~clk;
dff_en dut(.d(d),.clk(clk),.en(en),.q(q));
initial begin
    $dumpfile("dff_en.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,clk=%b,en=%b,q=%b",d,clk,en,q);
    d=1;clk=0;en=0;
    #10;d=1;en=1;
    #10;d=0;en=1;
    #5;
    $finish;
end
endmodule 
