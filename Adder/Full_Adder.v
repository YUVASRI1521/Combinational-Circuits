module full_adder(A, B, Cin, SUM, CARRY);
  
  input A, B, Cin;
  output SUM, CARRY;

    assign SUM = A^B^Cin;
    assign CARRY = (A&B) | (B&Cin) | (A&Cin);
  
endmodule

// Full Adder Using Half Adder
