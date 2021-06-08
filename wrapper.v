`timescale 1ns / 1ps

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
