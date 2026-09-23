module dff_st_rst(
    input d,st,rst,clk,
    output reg q
);
always@(posedge clk)begin
    if (st && !rst)
        q<=1'b1;
    else if (!st && rst)
        q<=1'b0;
    else if (!st && !rst)
        q<=d;
    else 
        q<=1'bx;
end
endmodule 
