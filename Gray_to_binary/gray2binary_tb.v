module gtb_tb;
reg [3:0]g;
wire [3:0]b;
gtb dut(.g(g),.b(b));
integer i;
initial begin
    $dumpfile("gtb.vcd");
    $dumpvars(0,dut);
    $monitor("g=%b,b=%b",g,b);
    for(i=0;i<16;i=i+1)begin
        {g}=i;
        #5;
    end
    $finish;
end
endmodule
