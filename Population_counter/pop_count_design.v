module pop_count(
    input [7:0]a,
    output reg [4:0]y
);
integer i;
always @(*)begin
    y=0;
    for(i=0;i<8;i=i+1)
        if(a[i]==1)
            y=y+1;
end
endmodule
