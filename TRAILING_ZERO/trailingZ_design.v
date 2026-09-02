module tr_zero(
    input[7:0]a,
    output reg [3:0]y
);
integer i;
always @(*)begin
    y=0;
    for(i=0;i<=8;i=i+1)begin
        if(a[i]==1'b0)
            y=y+1;
        else
         i=8;
    end
end
endmodule
