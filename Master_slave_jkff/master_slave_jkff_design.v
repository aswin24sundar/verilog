module jkms(
    input j,k,clk,
    output reg q
);
initial begin
    qm=0;
    q=0;
end
reg qm;
always@(posedge clk)begin
    case({j,k})
    2'b00 : qm<=qm;
    2'b01 : qm<=0;
    2'b10 : qm<=1;
    2'b11 : qm<=~qm;
    endcase
end
always@(negedge clk)begin
    q<=qm;
end
endmodule 
