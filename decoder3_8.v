`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunnar Pederson
// 
// Create Date: 05/28/2021 11:54:53 AM
// Design Name: 
// Module Name: mux_8_1
// Project Name: project 5 Mux Demux circuit
// Target Devices: 
// Tool Versions: Vivado 2020.2
// Description: decoder 3 to 8
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


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
