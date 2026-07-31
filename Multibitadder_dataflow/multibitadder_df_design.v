module mulbitadd(
    input [3:0]a,b,
    input cin,
    output [3:0]sum,
    output carry
);
wire [4:0]d;
assign d=a+b+cin;
assign sum=d[3:0];
assign carry=d[4];
endmodule
//assign {carry,sum}=a+b+cin;
