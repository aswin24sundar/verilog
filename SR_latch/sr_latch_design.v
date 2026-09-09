module sr_latch(
    input s,
    input r,
    output reg q,
    output reg qb
);
initial begin
    q=0;
    qb=0;
end
always @(*)begin
    if(s==1 && r==0)begin
        q=1;
        qb=0;
    end
    else if(s==0 && r==1)begin
        q=0;
        qb=1;
    end
    else if (s==0 && r==0)begin
        q=q;
        qb=qb;
    end
    else begin
        q=1'bx;
        qb=1'bx;
    end
end
endmodule 
