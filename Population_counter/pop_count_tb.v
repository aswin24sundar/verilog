module pop_count_tb;
reg [7:0]a;
wire [4:0]y;
pop_count dut (.a(a),.y(y));
initial begin 
    $dumpfile("pop_count.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
    a=8'd7;
    #5;
end
endmodule
