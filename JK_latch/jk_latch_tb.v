module jklatch_tb;
reg en,j,k;
wire q;
jklatch dut (.en(en),.j(j),.k(k),.q(q));
initial begin
    $dumpfile("jklatch.vcd");
    $dumpvars(0,dut);
    $monitor("en=%b,j=%b,k=%b,q=%b",en,j,k,q);
    en=1;
    j=0;k=0;
    #5;
    k=1;
    #5;
    j=1;k=0;
    #5;
    k=1;
    #5;
end
endmodule 
