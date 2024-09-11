`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2024 10:54:27 PM
// Design Name: 
// Module Name: Decoder_2X4
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


module Decoder_2X4(
input [1:0] w,
input en ,
output reg [0:3]y

    );
    
//    always @(w,en) 
//    begin
//    if(en)
//    begin
//        y = 4'b0000;
//    if(w == 2'b00)
//    y[0] = 1'b1;
//    else if (w == 2'b01)
//    y[1] = 1'b1;
//    else if(w == 2'b10)
//    y[2] = 1'b1;
//    else if(w == 2'b11)
//    y[3] = 1'b1;
//    else 
//    y = 4'b0000; 
//    end
//    else
//    y = 4'b0000;
//    end
/******************************************/
//     always @(w,en)
//     begin
//     y = 4'b0000;
// if(en)
// begin
//     case(w)
//     0 : y = 4'b1000;
//     1 : y = 4'b0100;
//     2 : y = 4'b0010;
//     3 : y = 4'b0001;
//     default : y = 4'b0000;
//     endcase
// end
// else
// y = 4'b0000;
//    end
/*********************************************/
always @(w,en)
begin
y = 4'b0000;
if(en)
begin
y[w] = 1'b1;
end
else
y = 4'b0000;
end
    
endmodule
