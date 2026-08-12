module demux2_1_tb;
reg a;
reg s;
wire [1:0]y;
demux2_1 dut (.a(a),.s(s),.y(y));
integer i;
initial begin
    $dumpfile("demux.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,s=%b,y=%b",a,s,y);
    for(i=0;i<4;i=i+1)begin
        {a,s}=i;
        #5;
    end
    $finish;
end
endmodule
    
