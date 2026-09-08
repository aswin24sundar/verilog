module bit_rev_tb;
reg [3:0]a;
wire [3:0]y;
bit_rev dut (.a(a),.y(y));
integer i;
initial begin
    $dumpfile("bit_rev.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
    a=4'b1011;
end
endmodule 
