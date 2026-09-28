module dff_en_rst(
    input d,clk,rst,en,
    output reg q
);
always @(posedge clk)begin
    if(rst)
        q<=0;
    else if(en)
        q<=d;
    else
        q<=q;
end
endmodule 
