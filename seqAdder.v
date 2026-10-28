`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2026 09:02:08
// Design Name: 
// Module Name: seqAdder
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
//Code a positive edge triggered Sequential Adder in Verilog.
//The module name must be 'seqAdder'
//Input names must be 'clk' and 'in' (8-bit).
//Output name must be 'out' (8-bit).
//Initial value of Output 'out' must be 0.
//At every positive clk edge the output must increase by the value equal to input.
//Both 'in' and 'out' are signed numbers represented using 2's complement representation.
//The output should be saturated to +127 or -128.
//For example if the input sequence is 40, 50, 60, -100, -120, -80, 50, ...
//          then the output sequence should be 0, 40, 90, 127, 27, -93, -128, -78
//Your module will be evaluated with random input sequence.
//Your module must work for all possible input sequences.
//It is not enough if your module works only for some input sequences.

module seqAdder(
    input clk,
    input signed [7:0]in,
    output reg signed [7:0]out=8'd0
    );
    reg signed [7:0]max;
    reg signed [7:0]min;
    reg signed [7:0]zer;
   
    always @(posedge clk) begin 
        zer = 8'd0;
        max = 8'b01111111;
        min = 8'b10000000;
        if(in>=zer) begin
            if(max-in<=out)begin
                out = max;
            end
            else begin
                out = out + in;
            end
        end
        else begin
            if(min-in>=out)begin 
                out = min;
            end
            else begin
                out = out +in;
            end
        end
    end
endmodule
