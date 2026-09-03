module maj_ckt_tb;
reg [2:0]a;
wire y;
maj_ckt dut (.a(a),.y(y));
initial begin
    $dumpfile("maj_ckt.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
    a=3'b111;
    #5;
end
endmodule 
