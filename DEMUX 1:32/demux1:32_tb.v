module demux1_32_tb;
reg a;
reg [4:0]s;
wire [31:0]y;
demux1_32 dut (.a(a),.s(s),.y(y));
initial begin
    $dumpfile("demux1_32.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,s=%b,y=%b",a,s,y);
    a=1;s=5'b10101;
    #5;
    $finish;
end
endmodule
    
