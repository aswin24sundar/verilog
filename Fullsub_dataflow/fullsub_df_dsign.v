module fullsub(
    input a,b,bin,
    output dif,bor
);
assign dif=(a^b^bin);
assign bor=((~a&bin)|(b&bin)|(~a&b));
endmodule
