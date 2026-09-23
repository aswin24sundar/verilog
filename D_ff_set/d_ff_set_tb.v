module dff_set_tb;
reg d,clk,set;
wire q;
dff_st dut(.d(d),.clk(clk),.set(set),.q(q));
always #5 clk=~clk;
initial begin 
    $dumpfile("dff_st.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,clk=%b,st=%b,q=%b",d,clk,set,q);
    clk=0;
    for(integer i=0;i<4;i=i+1)begin
        {d,set}=i;
        #10;
    end
$finish;
end
endmodule
    
