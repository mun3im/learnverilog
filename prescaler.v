module prescaler( input clkin, output reg clkout );
  reg[25:0] counter;

  always @(posedge clkin) 
    begin
      if (counter == 0)
        begin
          counter <= 24999999;
          clkout <= ~clkout;
        end
      else
        counter <= counter - 1;
    end
endmodule
