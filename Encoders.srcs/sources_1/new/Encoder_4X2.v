`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2024 01:47:03 AM
// Design Name: 
// Module Name: Encoder_4X2
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


module Encoder_4X2(
input [3:0] w,
input en,
output reg [1:0] y
    );
    always @(w,en)
    begin 
    y = 2'bxx;
    if(en)
    begin
    case(w)
    4'b0001 : y = 0;
    4'b0010 : y = 1;
    4'b0100 : y = 2;
    4'b1000 : y = 3;
    default : y = 2'bxx;
    endcase
    end
    else
    begin 
    y = 2'bxx;
    end
    end
    
   
endmodule
