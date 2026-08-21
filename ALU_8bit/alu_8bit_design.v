module alu(
  input [7:0]a,b,
  input [3:0]s,
  output reg [15:0]y
);
  always @(*)begin
     y=8'd0;
    case(s)
      4'b0000 : y=a+b;
      4'b0001 : y=a-b;
      4'b0010 : y=a*b;
      4'b0011 : y=a/b;
      4'b0100 : y=a+1;
      4'b0110 : y=a-1;
      4'b0111 : y=a&b;
      4'b1000 : y=a|b;
      4'b1001 : y=a^b;
      4'b1010 : y=~a;
      4'b1011 : y=a%b;
      4'b1100 : y=a>b;
      4'b1101 : y=a<b;
    endcase
  end
endmodule
