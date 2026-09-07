module sat_add_tb;
reg[3:0]a;
reg[3:0]b;
wire[3:0]y;
sat_add dut (.a(a),.b(b),.y(y));
initial begin
    $dumpfile("sat_add.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,y=%b",a,b,y);
    a=4'd10;b=4'd6;
    #5;
end
endmodule
