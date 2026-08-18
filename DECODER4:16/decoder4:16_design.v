module decoder4_16(
  input [3:0]a,
  output reg [15:0]y
);
  integer i;
  always @(*)begin
    y=4'd0;
    for(i=0;i<16;i=i+1)begin
      if(i==a)
        y[i]=1;
    end
  end
endmodule
        
      
