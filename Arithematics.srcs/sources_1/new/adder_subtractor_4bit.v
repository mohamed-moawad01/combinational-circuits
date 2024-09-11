`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2024 02:10:57 PM
// Design Name: 
// Module Name: adder_subtractor_4bit
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


module adder_subtractor_4bit(
input [3:0]x,y,
input add_n,
output [3:0]s,
output c_out /*only useful in addition */
    );
    wire[3:0] xored_y;
    assign xored_y[0] = y[0] ^ add_n;
    assign xored_y[1] = y[1] ^ add_n;
    assign xored_y[2] = y[2] ^ add_n;
    assign xored_y[3] = y[3] ^ add_n;
    RCA_4Bit A0(
             .x(x),
             .y(xored_y),
             .c_in(add_n),
             .s(s),
             .c_out(c_out)
             );
    
endmodule
