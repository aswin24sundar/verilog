module thermo_tb;
reg [2:0]a;
wire [7:0]y;
thermo dut (.a(a),.y(y));
initial begin
    $dumpfile("thermo.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
    a=3'd2;
    #5;
end
endmodule 
