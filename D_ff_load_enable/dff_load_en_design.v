module dff_le(
    input d,en,load,clk,
    output reg q
);
always@(posedge clk)begin
    if(load)
        q<=d;
    else if(en)
        q<=d;
    else
        q<=q;
end
endmodule 
