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
