module reg_8bit_tb;
reg [7:0]d;
reg clk;
wire [7:0]q;
reg_8bit dut (.d(d),.clk(clk),.q(q));
always #5 clk=~clk;
initial begin
    $dumpfile("reg_8bit.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,clk=%b,q=%b",d,clk,q);
    clk=0;
    for(integer i=0;i<256;i=i+1 )begin
        d=i;
        #10;
    end
    $finish;
end
endmodule 
