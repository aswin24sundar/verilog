module mux21_tb;
reg a,b,s;
wire y;
mux21 dut(.a(a),.b(b),.s(s),.y(y));
integer i;
initial begin
    $dumpfile("mux21.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,s=%b,y=%b",a,b,s,y,);
    for(i=0;i<8;i=i+1)begin
        {a,b,s}=i;
        #5;
    end
    $finish;
end
endmodule
    
