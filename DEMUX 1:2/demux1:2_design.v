module demux2_1(
    input a,
    input s,
    output [1:0]y
);
assign y[0]=(a&~s);
assign y[1]=(a&s);
endmodule 
