module csa_tb;
reg [3:0]a,b,c;
wire [3:0]sum;
wire [3:0]carry;
csa dut (.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial begin 
    $dumpfile("csa.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);
    a=4'b1011;b=4'b1101;c=4'b0110;
    #5;
end
endmodule
