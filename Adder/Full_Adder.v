module full_adder(A, B, Cin, SUM, CARRY);
  
  input A, B, Cin;
  output SUM, CARRY;

    assign SUM = A^B^Cin;
    assign CARRY = (A&B) | (B&Cin) | (A&Cin);
  
endmodule

// Full Adder Using Half Adder
module half_adder (
    input a, b,
    output sum, carry
);
    assign Sum = A ^ B;    // XOR for sum
    assign carry = A & B;  // AND for carry
endmodule

module full_adder_ha (
  input a, b, cin,
  output sum, cout);
  
   wire s1, c1, c2;

    // Instance 1 of half adder
    half_adder ha1 (
        .a(a),
        .b(b),
        .sum(s1),
        .carry(c1)
    );

    // Instance 2 of half adder
    half_adder ha2 (
        .a(s1),
        .b(cin),
        .sum(sum),
        .carry(c2)
    );

    // Final carry ORed
    assign cout = c1 | c2;
endmodule

// Gate Level Modeling
// Code your design here
module full_adder(
  input A, B, Cin,
  output SUM, CARRY);
  
 wire w1, w2, w3;
  
  xor(w1, A, B);
  and(w2, A, B);
  
  xor(SUM, w1, Cin);
  and(w3, w1, Cin);
  
  or(CARRY, w3, w2);
  
endmodule
