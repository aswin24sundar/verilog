module comp(
    input [3:0]a,b,
    output g,e,l
);
assign g=a>b;
assign e=a==b;
assign l=a<b;
endmodule 
