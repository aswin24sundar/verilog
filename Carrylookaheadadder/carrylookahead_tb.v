module cla4bit_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;
cla4bit dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
integer i,j;
initial begin
    $dumpfile("cla4bit.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);
    for(i=0;i<256;i=i+1)begin
        for(j=0;j<2;j=j+1)begin
            {a,b}=34;
            cin=1;
            #5;
        end
    end
    $finish;
end 
endmodule
