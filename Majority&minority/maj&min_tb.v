module mj_mi_tb;
reg[2:0]a;
wire minority;
wire majority;
mj_mi dut (.a(a),.minority(minority),.majority(majority));
integer i;
initial begin
    $dumpfile("mj_mi.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,minority=%b,majority=%b",a,minority,majority);
    for(i=0;i<8;i=i+1)begin
    a=i;
    #5;
    end
end
endmodule
