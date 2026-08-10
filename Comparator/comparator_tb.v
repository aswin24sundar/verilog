module comp_tb;
reg [3:0]a,b;
wire g,e,l;
comp dut(.a(a),.b(b),.g(g),.e(e),.l(l));
initial begin 
    $dumpfile("comp.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,g=%b,e=%b,l=%b",a,b,g,e,l,);
    a=4'd4;b=4'd2;
    #5;
    $finish;
end
endmodule
