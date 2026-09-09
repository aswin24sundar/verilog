module sr_latch_tb;
reg s;
reg r;
wire q;
wire qb;
sr_latch dut (.s(s),.r(r),.q(q),.qb(qb));
initial begin
    $dumpfile("sr_latch.vcd");
    $dumpvars(0,sr_latch_tb);
    $monitor("s=%b,r=%b,q=%b,qb=%b",s,r,q,qb);
    s=0;r=0;
    #5;
    r=1;
    #5;
    s=1;r=0;
    #5;
    r=1;
    #5;
    $finish;
end 
endmodule 
