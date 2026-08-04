module fullsub_tb;
reg a,b,bin;
wire dif,bor;
fullsub dut(.a(a),.b(b),.bin(bin),.dif(dif),.bor(bor));
initial begin
    $dumpfile("fullsub.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,bin=%b,dif=%b,bor=%b",a,b,bin,dif,bor,);
    a=0;b=0;bin=0;
    #5;
    bin=1;
    #5;
    b=1;bin=0;
    #5;
    bin=1;
    #5;
    a=1;b=0;bin=0;
    #5;
    bin=1;
    #5;
    b=1;bin=0;
    #5;
    bin=1;
    #5;
    $finish;
end
endmodule
