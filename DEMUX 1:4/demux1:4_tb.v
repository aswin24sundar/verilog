module demux4_1_tb;
reg a;
reg [1:0]s;
wire reg [3:0]y;
demux4_1 dut (.a(a),.s(s),.y(y));
integer i;
initial begin
    $dumpfile("demux4_1.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,s=%b,y=%b",a,s,y);
    for(i=0;i<8;i=i+1)begin
        {a,s}=i;
        #5;
    end
    $finish;
end
endmodule
