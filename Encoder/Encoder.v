// 4:2 ENCODER (Behavioural Modeling)

module encoder_42(
  input[3:0] I,
  output reg [1:0] Y);
  
  always@(*) begin
    case(I) 
      
      4'b0001 : Y=2'b00;
      4'b0010 : Y=2'b01;
      4'b0100 : Y=2'b10;
      4'b1000 : Y=2'b11;
      
      default:Y=2'b00;
    endcase
  end
endmodule

    // 8:3 ENCODER

module encoder_83(
  input[7:0] I,
  output reg[2:0] Y);
  
  always@(*) begin
    case(I)
      8'b00000001: Y=3'b000;
      8'b00000010: Y=3'b001;
      8'b00000100: Y=3'b010;
      8'b00001000: Y=3'b011;
      8'b00010000: Y=3'b100;
      8'b00100000: Y=3'b101;
      8'b01000000: Y=3'b110;
      8'b10000000: Y=3'b111;
      
      default:Y=3'b000;
    endcase
  end
endmodule
      
      
