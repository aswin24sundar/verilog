module sat_add(
    input [3:0]a,
    input [3:0]b,
    output reg [3:0]y
);
reg [4:0] sum;
always @(*)begin
    sum = a+b;
    if(sum>5'd15)
        y=4'b1111;
    else
        y=sum[3:0];
end
endmodule 


    

