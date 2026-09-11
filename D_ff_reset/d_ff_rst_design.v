module dff_rst(
    input d,clk,rst,
    output reg q
);
initial q =0;
always @(posedge clk)begin
    if(rst)
        q<=1'b0;
    else 
        q<=d;
end
endmodule 
