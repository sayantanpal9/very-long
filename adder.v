//Code a 8-bit Adder module in Verilog.
//The module name must be adder
//Input names must be A, B, and ci. A and B are 8-bit vectors. ci is a single bit.
//Output names must be S and co. S is a a 8-bit vector. co is a single bit.
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2026 17:46:21
// Design Name: 
// Module Name: practice
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


module half_adder(
    input ao,
    input bo,
    output so,
    output coo
    );
    assign so = ao^bo;
    assign coo = ao&bo;
endmodule


module full_adder(

input a,
input b,
input cii,
output s,
output coi
);
wire tem,ctem,ctem1;
half_adder ha1(.ao(a),.bo(b),.so(tem),.coo(ctem));
half_adder ha2(.ao(cii),.bo(tem),.so(s),.coo(ctem1));
assign coi = ctem1|ctem;


endmodule
module adder(
input [7:0]A,
input [7:0]B,
input ci,
output [7:0]S,
output co
);
wire [7:0]C;
full_adder fa1(.a(A[0]),.b(B[0]),.cii(ci),.s(S[0]),.coi(C[0]));
full_adder fa2(.a(A[1]),.b(B[1]),.cii(C[0]),.s(S[1]),.coi(C[1]));
full_adder fa3(.a(A[2]),.b(B[2]),.cii(C[1]),.s(S[2]),.coi(C[2]));
full_adder fa4(.a(A[3]),.b(B[3]),.cii(C[2]),.s(S[3]),.coi(C[3]));
full_adder fa5(.a(A[4]),.b(B[4]),.cii(C[3]),.s(S[4]),.coi(C[4]));
full_adder fa6(.a(A[5]),.b(B[5]),.cii(C[4]),.s(S[5]),.coi(C[5]));
full_adder fa7(.a(A[6]),.b(B[6]),.cii(C[5]),.s(S[6]),.coi(C[6]));
full_adder fa8(.a(A[7]),.b(B[7]),.cii(C[6]),.s(S[7]),.coi(co));


endmodule
