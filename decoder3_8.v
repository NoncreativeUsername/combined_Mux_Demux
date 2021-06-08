`timescale 1ns / 1ps

module decoder3_8(
    input EN,
    input [2:0] S,
    output reg [7:0] Y
    );
    
always @ (S, EN)
begin
    Y <= 8'b00000000;
    case (S)
        3'b000: Y[0] <= EN;
        3'b001: Y[1] <= EN;
        3'b010: Y[2] <= EN;
        3'b011: Y[3] <= EN;
        3'b100: Y[4] <= EN;
        3'b101: Y[5] <= EN;
        3'b110: Y[6] <= EN;
        3'b111: Y[7] <= EN;
        default Y <= 0;
    endcase
end

endmodule
