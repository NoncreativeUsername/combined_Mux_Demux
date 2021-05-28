`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunnar Pederson
// 
// Create Date: 05/28/2021 12:18:05 PM
// Design Name: 
// Module Name: counter
// Project Name: project 5 Mux Demux circuit
// Target Devices: 
// Tool Versions: vivado 2020.2
// Description: creates a counter for the project
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter(
    input clk,          //clk input
    output [2:0] B      //counter output
    );
    
reg [27:0] counter;

always @ (posedge clk)
begin
    counter <= counter + 1;
end

assign B = counter[27:25];
    
endmodule
