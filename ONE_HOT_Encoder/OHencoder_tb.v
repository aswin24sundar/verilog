module one_hot_encoder_tb;
reg [3:0] a;
wire [1:0] y;
one_hot_encoder dut (.a(a),.y(y));
integer i;
initial begin
    $dumpfile("one_hot_encoder.vcd");
    $dumpvars(0,dut);
    $monitor("a = %b, y = %b", a, y);
    for(i = 0; i < 16; i = i + 1) begin
        a = 4'b0001<<i;
        #5;
    end
    $finish;
end
endmodule
