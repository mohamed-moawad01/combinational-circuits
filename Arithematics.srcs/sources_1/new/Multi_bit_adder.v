`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2024 10:22:54 PM
// Design Name: 
// Module Name: Multi_bit_adder
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


module Multi_bit_adder(
input [15:0]a,b,
input [15:0]s_ab,
output c_out_ab,
input [33:0]x,y,
input [33:0]s_xy,
input c_out_xy
    );
 RCA_nBits #(.n(16)) ADD16(
 .x(a),
 .y(b),
 .c_in(0),
 .s(s_ab),
 .c_out(c_out_ab)
 );  
  RCA_nBits #(.n(34)) ADD34(
 .x(x),
 .y(y),
 .c_in(0),
 .s(s_xy),
 .c_out(c_out_xy)
 ); 
endmodule
