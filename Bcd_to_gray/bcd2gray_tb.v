module bctog_tb;
reg [3:0]b;
wire [3:0]g;
bctog dut(.b(b),.g(g));
integer i;
initial begin
    $dumpfile("bctog.vcd");
    $dumpvars(0,dut);
    $monitor("b=%b,g=%b",b,g);
    for(i=0;i<=9;i=i+1)begin
        b=i;
        #5;
    end
    $finish;
end 
endmodule
