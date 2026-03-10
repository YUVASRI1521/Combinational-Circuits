
module signed_comparator(
  input[3:0] A,
  input[3:0] B,
  output greater,
  output less,
  output equal );
  
  assign greater = A>B;
  assign less = A<B;
  assign equal = (A==B);

endmodule
