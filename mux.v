`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2026 20:47:45
// Design Name: 
// Module Name: mux
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
//Code a 8 to 1 Multiplexer module in Verilog.
//The module name must be 'mux'
//Input names must be 'in' and 'sel'.
//Output name must be 'out'.

module mux(
    input [8:0]in,
    input [3:0]sel,
    output out
    );
    assign out = in[sel];
endmodule
