module bit_rev_tb;
reg [3:0]a;
wire [3:0]b;
bit_rev dut(.a(a),.b(b));
initial begin
    $dumpfile("bit_rev.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b",a,b);
    a=4'b1011;
    #5;
    $finish;
end
endmodule
