module bit_rev(
    input[3:0]a,
    output reg[3:0]y
);
integer i;
always@(*)begin
    for(i=0;i<4;i=i+1)
        y[i]=a[3-i];
end
endmodule 
