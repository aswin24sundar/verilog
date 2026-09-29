module jk_en(
    input j,k,clk,en,
    output reg q
);
always @(posedge clk )begin
    if(en) begin
        case({j,k})
        2'b00 : q<=q;
        2'b01 : q<=0;
        2'b10 : q<=1;
        2'b11 : q<=~q;
        endcase
    end
    else begin
        q<=q;
    end
end
endmodule
