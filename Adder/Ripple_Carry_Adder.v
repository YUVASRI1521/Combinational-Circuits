module full_add(
  input A, B, Cin,
  output SUM, CARRY
);

assign SUM = A ^ B ^ Cin;
assign CARRY = (A & B) | (B & Cin) | (A & Cin);

endmodule


module ripple_carry_add_4(
  input  [3:0] a, b,
  input  cin,
  output [3:0] s,
  output cout
);

wire c1, c2, c3;

full_add f1 (a[0], b[0], cin, s[0], c1);
full_add f2 (a[1], b[1], c1,  s[1], c2);
full_add f3 (a[2], b[2], c2,  s[2], c3);
full_add f4 (a[3], b[3], c3,  s[3], cout);

endmodule
