module mulbitadd_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;
mulbitadd dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial begin
    $dumpfile("mulbitadd.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);
    a=0110;b=0101;cin=0;
    #5;
    $finish;
end
endmodule
