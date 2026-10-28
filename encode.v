`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2026 22:28:15
// Design Name: 
// Module Name: encode
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
//Code a 8 to 3 Priority Encoder module in Verilog.
//More significant bit has higher priority.
//The module name must be 'encode'.
//Input name must be 'in' (a 8-bit vector).
//Output name must be 'out' (a 3-bit vector) and valid (a 1-bit output).
//Output 'valid' is true unless all the inputs are false.


module encode(
    input [7:0]in,
    output reg[2:0]out,
    output reg valid
    );
    integer i;
    integer g;
    always @(*) begin
        valid = 1'b0;
        out = 1'b000;
        g=7;
        for(i = 7;i>=0&&(!valid);i=i-1) begin
            if(in[i])begin
                valid=1'b1;
                out = g;
            end
            g=g-1;
            
        end
    end
endmodule
