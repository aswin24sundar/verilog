module mj_mi(
    input[2:0]a,
    output minority,
    output majority
);
assign majority=((a[0]&a[1]) | (a[0]&a[2]) | (a[1]&a[2]));
assign minority=~majority;
endmodule 
