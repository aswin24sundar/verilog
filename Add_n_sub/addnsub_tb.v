module addnsub_tb;
reg [3:0]a,b;
reg c;
wire [3:0]sum;
addnsub dut(.a(a),.b(b),.c(c),.sum(sum));
initial begin
    $dumpfile("addnsub.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,c=%b,sum=%b",a,b,c,sum);
    a=4'd3;b=4'd2;c=0;
    #5;
    $finish;
end
endmodule
