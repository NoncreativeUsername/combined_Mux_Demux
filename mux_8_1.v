`timescale 1ns / 1ps


module mux_8_1(
    input [7:0] I,      //input
    input [2:0] S,      //mux select
    output Y            //mux output
    );
    
reg tmp;
    
always @ (S, I)
begin
    case (S)
    3'b000: tmp <= I[0];
    3'b001: tmp <= I[1];
    3'b010: tmp <= I[2];
    3'b011: tmp <= I[3];
    3'b100: tmp <= I[4];
    3'b101: tmp <= I[5];
    3'b110: tmp <= I[6];
    3'b111: tmp <= I[7];
    default: tmp <= 0;
    endcase
end 
    
assign Y = tmp;
    
endmodule
