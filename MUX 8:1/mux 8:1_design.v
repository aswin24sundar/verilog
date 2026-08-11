module mux81(
    input[7:0]a,
    input[2:0]s,
    output y
);
assign y=a[s];
endmodule
