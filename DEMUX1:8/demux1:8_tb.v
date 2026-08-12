module demux1_8_tb;
reg a;
reg [2:0]s;
wire reg [7:0]y;
demux1_8 dut(.a(a),.s(s),.y(y));
integer i;
initial begin 
    $dumpfile("demux1_8.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,s=%b,y=%b",a,s,y);
    for(i=0;i<16;i=i+1)begin
        {a,s}=i;
        #5;
    end
    $finish;
end
endmodule
