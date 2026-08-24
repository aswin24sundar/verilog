module pr_ck(
  input [3:0] a,
  input parity,
  input mode,
  output reg error
);

  always @(*) begin
    if(mode == 0) begin
      // Even 
      if((^a ^ parity) == 0)
        error = 0;
      else
        error = 1;
    end

    else begin
      // Odd 
      if((^a ^ parity) == 1)
        error = 0;
      else
        error = 1;
    end
  end

endmodule
