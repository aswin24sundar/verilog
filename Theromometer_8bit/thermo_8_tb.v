module thermo_tb;
reg [3:0]a;
wire [15:0]y;
thermo dut (.a(a),.y(y));
initial begin
    $dumpfile("thermo.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
    a=4'd11;
    #5;
end
endmodule
