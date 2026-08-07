module addnsub(
    input [3:0]a,b,
    input c,
    output reg [3:0]sum
);
always @(*)begin
    if(c==1)
        sum=a+b;
    else
        sum=a-b;
end
endmodule
