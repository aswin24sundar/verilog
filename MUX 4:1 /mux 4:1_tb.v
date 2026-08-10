module mux41_tb;
reg [3:0]a;
reg [1:0]s;
wire y;
mux41 dut(.a(a),.s(s),.y(y));
integer i;
initial begin
    $dumpfile("mux41.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,s=%b,y=%b",a,s,y);
    for(i=0;i<64;i=i+1)begin
        {a,s}=i;
        #5;
    end
end
endmodule


