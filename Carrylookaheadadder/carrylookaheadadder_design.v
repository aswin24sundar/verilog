module cla4bit(
    input [3:0]a,b,
    input cin,
    output [3:0]sum,
    output carry
);
wire [3:0]g,p;
wire carry0,carry1,carry2;
assign g=a&b;
assign p=a^b;
assign sum[0]=p[0]^cin;
assign carry0=g[0]+(p[0]&cin);
assign sum[1]=p[1]^carry0;
assign carry1=g[1]+(p[1]&g[0])+(p[1]&p[0]&carry0);
assign sum[2]=p[2]^carry1;
assign carry2=g[2]+(p[2]&g[1])+(p[1]&p[2]&g[0])+(p[0]&p[1]&p[2]&carry0);
assign sum[3]=p[3]^carry2;
assign carry=g[3]+(p[3]&g[2])+(p[3]&p[2]&g[1])+(p[3]&p[2]&p[1]&g[0])+(p[3]&p[2]&p[1]&p[0]&carry0);

endmodule
