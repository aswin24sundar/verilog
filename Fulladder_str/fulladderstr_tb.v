module fulladder_tb;
reg a,b,cin;
wire sum,carry;
fulladder dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial begin
    $dumpfile("fulladder.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,cin=%b,sum=%b,carry=%b,",a,b,cin,sum,carry,);
    a=0;b=0;cin=0;
    #5;
    cin=1;
    #5;
    b=1;cin=0;
    #5;
    cin=1;
    #5;
    a=1;b=0;cin=0;
    #5;
    cin=1;
    #5;
    b=1;cin=0;
    #5;
    cin=1;
    #5;
    $finish;
end
endmodule
