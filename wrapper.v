`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunnar Pederson
// 
// Create Date: 05/28/2021 12:45:03 PM
// Design Name: 
// Module Name: wrapper
// Project Name: project 5 Mux Demux circuit
// Target Devices: 
// Tool Versions: vivado 2020.2
// Description: wrapper for mux/ demux circuit
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module wrapper(
    input [7:0] sw,         //switches as data inputs
    input clk,                  //clk signal
    output [7:0] led,           //led outputs
    output [1:0] RGB_led_A      //red led indicates clock cycle
    );
    
wire sdata;             //data between mux/demux
wire [2:0] cdata;       //clock signal

counter count (
    .clk(clk),
    .B(cdata)
    );

mux_8_1 input_mux (
    .I(sw),
    .S(cdata),
    .Y(sdata)
    );
    
 decoder3_8 output_demux (
    .EN(sdata),
    .S(cdata),
    .Y(led)
    );
    
assign RGB_led_A[0] = sdata;

endmodule
