// 2:1 MUX

module mux_21(A, B, S, Y);
  input A, B, S;
  output Y;
  
  assign Y = (S == 1'b0 ? A: B);
endmodule

// 4:1 MUX
module mux_41_b(
  input [3:0] y,
  input [1:0] sel,
  output reg dout
);

  always @(*) begin
    if(sel == 2'b00) 
      dout = y[0];
    else if(sel == 2'b01) 
      dout = y[1];
    else if(sel == 2'b10) 
      dout = y[2];
    else 
      dout = y[3];
  end
endmodule

// Behavioural Modeling
module mux_41_b(
  input [3:0] y,
  input [1:0] sel,
  output reg dout
);

  always @(*) begin
  case(sel)
    2'b00: dout = y[0];
    2'b01: dout = y[1];
    2'b10: dout = y[2];
    2'b11: dout = y[3];
  endcase
end
endmodule

// 8:1 MUX

module mux_81(
  input[7:0] I,
  input[2:0] sel,
  output reg Y);
  
  always@(*) begin
    case(sel)
      3'b000 : Y=I[0];
      3'b001 : Y=I[1];
      3'b010 : Y=I[2];
      3'b011 : Y=I[3];
      3'b100 : Y=I[4];
      3'b101 : Y=I[5];
      3'b110 : Y=I[6];
      3'b111 : Y=I[7];
      default:Y=1'b0;
    endcase
  end
endmodule

// 16:1 MUX

module mux_81(
  input[7:0] I,
  input[2:0] sel,
  output reg Y);
  
  always@(*) begin
    case(sel)
      3'b000 : Y=I[0];
      3'b001 : Y=I[1];
      3'b010 : Y=I[2];
      3'b011 : Y=I[3];
      3'b100 : Y=I[4];
      3'b101 : Y=I[5];
      3'b110 : Y=I[6];
      3'b111 : Y=I[7];
      default:Y=1'b0;
    endcase
  end
endmodule

module mux_2_1 (
  input I0, I1,
  input sel,
  output Y);
  
  assign Y = (sel) ? I1 : I0;
endmodule

module mux_16_1(
  input [15:0] I,
  input [3:0] sel, 
  output Y);
  
  wire Y0, Y1;
  
  mux_81 m0(
    .I(I[7:0]),
    .sel(sel[3:0]),
    .Y(Y0) );
  
   mux_81 m1(
     .I(I[15:8]),
    .sel(sel[3:0]),
     .Y(Y1) );
  
  mux_2_1 m2(
    .I0(Y0),
    .I1(Y1),
    .sel(sel[3]),
    .Y(Y) );
  
endmodule
