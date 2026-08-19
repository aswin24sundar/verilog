module pri_enc(
  input[3:0]a,
  output reg [1:0]y
);
  integer i;
  reg found ;
  always @(*)begin
    y=3'b00;
    found=1'b0;
    for(i=7;i>=0;i=i-1)begin
      if((a[i]==1'b1) && (found == 1'b0))begin
        y=i;
      found =1'b1;
      end
    end
  end
endmodule
  
  
