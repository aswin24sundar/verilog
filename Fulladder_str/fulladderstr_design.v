module fulladder(
    input a,b,cin,
    output sum,carry
);
wire o1,o2,o3;
xor x1(o1,a,b);
and a1(o2,a,b);
xor x2(sum,o1,cin);
and a2(o3,o1,cin);
or r1(carry,o2,o3);
endmodule
