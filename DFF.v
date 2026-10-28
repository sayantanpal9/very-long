`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2026 23:54:44
// Design Name: 
// Module Name: DFF
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//Code positive edge triggered D-FlipFlop module in Verilog.
//The module name must be 'DFF'
//Input name must be 'D'.
//Output name must be 'Q'.

module DFF(
    input D,
    output reg Q,
    input clk
    );
    always @(posedge clk) begin
        Q=D;
    end
endmodule

