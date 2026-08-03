module halfsub_tb;
reg a,b;
wire diff,bor;
halfsub dut(.a(a),.b(b),.diff(diff),.bor(bor));
initial begin 
    $dumpfile("halfsub.vcd");
    $dumpvars(0,halfsub_tb);
    $monitor("a=%b,b=%b,diff=%b,bor=%b",a,b,diff,bor);
    a=0;b=0;
    #5;
    b=1;
    #5;
    a=1;b=0;
    #5;
    b=1;
    #5;
    $finish;
end
endmodule
