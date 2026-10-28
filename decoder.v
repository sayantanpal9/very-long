`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2026 21:18:20
// Design Name: 
// Module Name: decoder
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
//Code a 3 to 8 Decoder module in Verilog.
//The module name must be 'decoder'
//Input name must be 'in'. There should also be a enable bit 'en'.
//Output name must be 'out'.


module decoder(
    input [2:0]in,
    input en,
    output reg[7:0]out
    );
    always @(*) begin
    out = 1'b00000000;
    if(en) begin
        case(in)
        3'b000: out=8'b00000001;
        3'b001: out=8'b00000010;
        3'b010:  out=8'b00000100;
        3'b011: out=8'b00001000;
        3'b100: out=8'b00010000;
        3'b101: out=8'b00100000;
        3'b110: out=8'b01000000;
        3'b111: out=8'b10000000;
        default:out=8'b00000000;
        endcase
       end
    end
    
endmodule
