module pr_ck_tb;

  reg [3:0] a;
  reg parity;
  reg mode;
  wire error;

  pr_ck dut(.a(a),.parity(parity),.mode(mode),.error(error));

  integer i;

  initial begin

    // Even 
    mode = 0;
    $display("EVEN PARITY");

    for(i=0; i<16; i=i+1) begin
      a = i;
      parity = ^a;
      #5;
      $display("a=%b parity=%b error=%b", a, parity, error);
    end

    // Odd 
    mode = 1;
    $display("ODD PARITY");

    for(i=0; i<16; i=i+1) begin
      a = i;
      parity = ~^a;
      #5;
      $display("a=%b parity=%b error=%b", a, parity, error);
    end

    $finish;
  end

endmodule
