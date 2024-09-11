`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2024 06:05:28 PM
// Design Name: 
// Module Name: Mux_generic_1bit
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


module Mux_generic_1bit
#(parameter n = 4)(
input [n-1 : 0] w,
input [$clog2(n)-1:0]s,
output reg f
    );
    integer k;
    always @(w,s)
    begin
    f = 'bx;
    for(k = 0; k < n; k = k+1)
    if(k == s)
    f = w[k];
    end
endmodule
