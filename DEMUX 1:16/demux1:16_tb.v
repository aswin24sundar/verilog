module demux1_16_tb;
reg a;
reg [3:0]s;
wire [15:0]y;
demux1_16 dut(.a(a),.s(s),.y(y));
integer j,i;
initial begin 
    $dumpfile("demux1_16.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,s=%b,y=%b",a,s,y);
    for(j=0;j<2;j=j+1)begin
    for(i=0;i<16;i=i+1)begin
        a=j;
        s=i;
        #5;
    end
    end
    $finish;
end
endmodule
