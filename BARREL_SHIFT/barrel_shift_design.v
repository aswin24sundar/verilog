module barrel_sh(
  input signed [3:0]a,
  input [3:0]s,
  output reg [3:0]y
);
  always@(*)begin
    case(s)
      
      4'b0000 : y= a<<1;
      4'b0001 : y= a>>1;
      4'b0010 : y= a<<<1;
      4'b0011 : y= a>>>1;
      4'b0100 : y= a<<<1;
      4'b0101 : y= {a[2:0],a[3]};//left cir
      4'b0110 : y= {a[0],a[3:1]};//right cir
    endcase
  end
endmodule
