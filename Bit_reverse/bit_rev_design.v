module bit_rev(
    input[3:0]a,
    output[3:0]b
);
assign b[3]=a[0];
assign b[2]=a[1];
assign b[1]=a[2];
assign b[0]=a[3];
endmodule 
