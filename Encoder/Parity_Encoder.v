// 3-BIT ENCODER

module parity_odd(
  input[2:0] A,
  output reg P);
    assign P = ^A;
    endmodule
    
    module parity_even(
      input[2:0] A,
      output reg P);
        assign P = ~(^A); 
        endmodule
          
    
  
