`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2024 04:54:17 PM
// Design Name: 
// Module Name: Mux_2X1_nbits
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


module Mux_2X1_nbits
#(parameter n = 4)
(
input [n-1 : 0] w0,w1,
input s,
output reg [n-1 : 0] f
    );
    always @(s,w0,w1)
    begin
    f = s? w1 : w0;
    end
endmodule
