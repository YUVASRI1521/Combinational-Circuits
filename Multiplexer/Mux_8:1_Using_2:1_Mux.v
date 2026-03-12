module mux_2_1 (
  input I0, I1,
  input sel,
  output Y
);

assign Y = sel ? I1 : I0;

endmodule


module mux_8_1(
  input [7:0] I,
  input [2:0] sel,
  output Y
);

assign Y = I[sel];

endmodule


module mux_16_1(
  input [15:0] I,
  input [3:0] sel,
  output Y
);

wire Y0, Y1;

mux_8_1 m0(
  .I(I[7:0]),
  .sel(sel[2:0]),
  .Y(Y0)
);

mux_8_1 m1(
  .I(I[15:8]),
  .sel(sel[2:0]),
  .Y(Y1)
);

mux_2_1 m2(
  .I0(Y0),
  .I1(Y1),
  .sel(sel[3]),
  .Y(Y)
);

endmodule
