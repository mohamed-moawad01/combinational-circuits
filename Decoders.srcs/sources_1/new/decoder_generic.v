`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2024 11:52:25 PM
// Design Name: 
// Module Name: decoder_generic
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


module decoder_generic
#(parameter n = 2)(
input [n-1 : 0] w,
output reg [0 : (2**n)-1] y,
input en
    );
    always @(w,en)
    begin
    y = 'b0;//default
    if(en)
    y[w] = 1'b1;
    else
    y = 'b0;
    end
    
endmodule
