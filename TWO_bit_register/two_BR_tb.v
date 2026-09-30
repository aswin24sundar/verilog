module reg_2bit_tb;
reg[1:0]d;
reg clk;
wire [1:0]q;
reg_2bit dut(.d(d),.clk(clk),.q(q));
initial begin
    $dumpfile("reg_2bit.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,clk=%b,q=%b",d,clk,q);
    clk=0;d=2'b00;
    #5;clk=1;d=2'b01;
    #5;clk=0;d=2'b10;
    #5;clk=1;d=2'b10;
    #5;clk=0;d=2'b11;
    #5;clk=1;d=2'b11;
end
endmodule
