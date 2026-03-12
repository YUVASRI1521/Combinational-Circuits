module half_adder(
  input a,b,
  output s,c);
  
  assign s = a^b;
  assign c = a&b;
  
endmodule

// Gate Level Modeling
module half_adder(
  input A, B,
  output SUM, CARRY);
  
  xor(SUM,A,B);
  and(CARRY,A,B);
  
endmodule

// Complier Director

`timescale 1ns/1ps  
`define WIDTH 1   
module half_adder(
    input  [`WIDTH-1:0] a, b,
    output [`WIDTH-1:0] sum,
    output [`WIDTH-1:0] carry
);
    assign sum   = a ^ b;  
    assign carry = a & b;  

endmodule
