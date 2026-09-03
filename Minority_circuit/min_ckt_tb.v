module min_ckt_tb;
reg [2:0]a;
wire y;
min_ckt dut (.a(a),.y(y));
initial begin
    $dumpfile("min_ckt.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
    a=3'b010;
    #5;
end
endmodule 
