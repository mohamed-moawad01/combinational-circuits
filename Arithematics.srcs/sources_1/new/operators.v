`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2024 05:19:24 PM
// Design Name: 
// Module Name: operators
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


module arithmetic_operators
#(parameter n = 4)
(
input [n-1 : 0] x,y,
output [n-1 : 0] s,
output cout, overflow
    );
    assign s = x + y;
endmodule
