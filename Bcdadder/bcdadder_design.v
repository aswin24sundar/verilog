module bcdadder(
    input [3:0]a,b,
    input cin,
    output reg [3:0]sum,
    output carry
);
reg [3:0]w1;
assign {carry,w1}=a+b+cin;
always@(*) begin
    if(carry || w1>4'b1001)
        sum=w1+4'b0110;
    else
        sum=w1;
end
endmodule


    
