module demux1_8(
    input a,
    input [2:0]s,
    output reg [7:0]y
);
always @(*)begin
    y=8'b00000000;
    case(s)
        8'b000:y[0]=a;
        8'b001:y[1]=a;
        8'b010:y[2]=a;
        8'b011:y[3]=a;
        8'b100:y[4]=a;
        8'b101:y[5]=a;
        8'b110:y[6]=a;
        8'b111:y[7]=a;
endcase
end
endmodule
