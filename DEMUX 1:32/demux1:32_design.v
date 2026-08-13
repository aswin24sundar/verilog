module demux1_32(
    input a,
    input [4:0]s,
    output reg [31:0]y
);
integer i;
always @(*)begin
    y=32'd0;
    for(i=0;i<32;i=i+1)begin
        if(s==i)
        y[i]=a;
    end
end
endmodule 
