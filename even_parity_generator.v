`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2026 20:52:17
// Design Name: 
// Module Name: even_pairity_generator
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
//Code a Even Parity Generator module in Verilog.
//The module name must be 'even_parity_generator'
//Input name must be 'in', which is a 8-bit vector.
//Output name must be 'out', which is a 9-bit vector.
//The output is to be produced by appending the input with 1-bit at the MSB such that the total number of 1s (including the appended bit) in the output is even.

module even_parity_generator(
    input [7:0]in,
    output [8:0]out
    );
    wire [8:0]a;
    assign a[0]=1'b0;
    genvar i;
    generate
    for(i=0;i<8;i=i+1) begin
    assign out[i]=in[i];
    xor(a[i+1],in[i],a[i]);
    end
    endgenerate 
    assign out[8]=a[8];
endmodule
