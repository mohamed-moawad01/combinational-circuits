`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2024 09:58:43 PM
// Design Name: 
// Module Name: RCA_nBits
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


module RCA_nBits
#(parameter n = 4)
(
input [n-1 : 0]x,y,
input c_in,
output [n-1 : 0]s,
output c_out,
output c_overflow
);
wire [n : 0]c;
assign c[0] = c_in;
assign c_out = c[n]; 
assign c_overflow = c [n-1];
generate 
genvar k;
for (k = 0; k < n; k = k+1)
begin: stage
Full_Adder P1(
.x(x[k]),
.y(y[k]),
.c_in(c[k]),
.s(s[k]),
.c_out(c[k+1])
);
end
endgenerate
endmodule
