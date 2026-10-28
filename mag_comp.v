`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2026 21:36:08
// Design Name: 
// Module Name: mag_comp
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
//Code a Signed Magnitude Comparator module in Verilog.
//The module name must be mag_comp.
//Input names must be A and B, both 8 bit signed vectors.
//Output names must be AeqB (inicates if A=B), AgtB (inicates if A>B), AltB (inicates if A<B), one bit each.


module mag_comp(
    input signed [7:0] A,
    input signed [7:0] B,
    output AeqB,
    output AgtB,
    output AltB
);

    assign AeqB = (A == B);
    assign AgtB = (A > B);
    assign AltB = (A < B);

endmodule
