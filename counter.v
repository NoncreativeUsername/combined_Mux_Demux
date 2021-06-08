`timescale 1ns / 1ps

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
