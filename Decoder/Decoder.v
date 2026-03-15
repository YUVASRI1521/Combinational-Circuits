// 4:2 DECODER

module decoder_2to4 (
    input  wire [1:0] in, 
    input  wire       en,   
    output reg  [3:0] out   
);

always @(*) begin
    if (en) begin
        case (in)
            2'b00: out = 4'b0001;
            2'b01: out = 4'b0010;
            2'b10: out = 4'b0100;
            2'b11: out = 4'b1000;
            default: out = 4'b0000;
        endcase
    end
    else
        out = 4'b0000;
end
endmodule

// 3:8 DECODER

module decoder_3_8(
  input[2:0] I,
  input En,
  output reg [7:0] d);
  
  always@(*) begin
    if(En) begin
      case(I)
        3'b000 : d = 0000_0001;
        3'b001 : d = 0000_0010;
        3'b010 : d = 0000_0100;
        3'b011 : d = 0000_1000;
        3'b100 : d = 0001_0000;
        3'b101 : d = 0010_0000;
        3'b110 : d = 0100_0000;
        3'b111 : d = 1000_0000;
      endcase
    end
  end
endmodule

// 4:16 DECODER

module decoder_416(
  input  [3:0] A,
  output reg [15:0] Y
);

  always @(*) begin
    Y = 16'b0;          // default all outputs 0
    Y[A] = 1'b1;        // activate selected line
  end
endmodule

// 4:16 ENCODER
