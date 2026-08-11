module mux16_1(
    input[15:0]a,
    input[3:0]s,
    output y
);
assign y=a[s];
endmodule
