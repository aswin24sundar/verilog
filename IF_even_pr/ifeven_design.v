module even_par(
  input [3:0]a,
  output reg [4:0]y
);
  integer i;
  integer count;
  always @(*)begin
    count=0;
    for(i=0;i<5;i=i+1)begin
      if(a[i])
        count=count+1;
    end
    if(count%2==0)
      y[4]=0;
    else
      y[4]=1;
    y[3:0]=a[3:0];
  end
endmodule

