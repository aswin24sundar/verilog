module fullsub(
    input a,b,bin,
    output dif,bor
);
wire w1,w2,w3;
xor x1(dif,a,b,bin);
not n1(w4,a);
and a1(w1,w4,b);
and a2(w2,b,bin);
and a3(w3,w4,bin);
or r1(bor,w1,w2,w3);
endmodule
