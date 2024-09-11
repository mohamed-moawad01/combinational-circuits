`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2024 09:26:26 PM
// Design Name: 
// Module Name: RCA_4Bit
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


module RCA_4Bit(
input [3:0]x,y,
input c_in,
output [3:0]s,
output c_out
    );
    wire[3:1]c;
    Full_Adder F0 (x[0],y[0],c_in,s[0],c[1]);
    Full_Adder F1 (x[1],y[1],c[1],s[1],c[2]);
    Full_Adder F2 (x[2],y[2],c[2],s[2],c[3]);
    Full_Adder F3 (x[3],y[3],c[3],s[3],c_out);
    
endmodule
