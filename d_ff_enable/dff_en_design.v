module dff_en(
    input d,clk,en,
    output reg q
);
initial q=0;
always@(posedge clk)begin
    if(en)
        q<=d;
    else
        q<=q;
end
endmodule 
