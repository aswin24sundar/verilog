module fulladder(
    input a,b,cin,
    output sum,carry
);
assign sum=cin^a^b;
assign carry=(a&b)|(cin&(a^b));
endmodule
