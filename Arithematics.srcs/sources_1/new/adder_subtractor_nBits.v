`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2024 02:30:20 PM
// Design Name: 
// Module Name: adder_subtractor_nBits
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


module adder_subtractor_nBits #(parameter n = 4)
(
input [n-1 : 0] x,y,
input add_n,
output [n-1 : 0]s,
output c_out,
output overflow
 );
 wire [n-1 : 0] xored_y;
 wire  c_overflow;
 generate
 genvar k;
 
 for(k = 0; k < n; k = k+1)
 begin
 assign xored_y[k] = y[k] ^ add_n;
 end
 endgenerate
 RCA_nBits #(.n(n)) 
M0 (
 .x(x),
 .y(xored_y),
 .c_in(add_n),
 .s(s),
 .c_out(c_out),
 .c_overflow(c_overflow)
 );
assign overflow = c_out ^ c_overflow;
endmodule
