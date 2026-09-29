module dff_le_tb;
reg d,en,load,clk;
wire q;
dff_le dut(.d(d),.en(en),.load(load),.clk(clk),.q(q));
always #5clk=~clk;
initial begin 
    $dumpfile("dff_le.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,en=%b,load=%b,clk=%b,q=%b",d,en,load,clk,q);
    d=1;load=1;en=0;clk=0;
    #10;load=0;en=1;
    #10;d=0;load=1;en=0;
    #5;
    $finish;
end
endmodule 
