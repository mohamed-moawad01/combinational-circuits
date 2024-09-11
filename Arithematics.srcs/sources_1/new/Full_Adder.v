`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2024 09:13:31 PM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
input x,y,c_in,
output s,c_out
    );
    wire w1,w2,w3;
    Half_Adder H0 (x,y,w1,w2);
    Half_Adder H1 (w1,c_in,s,w3);
    assign c_out = w2 | w3;
endmodule
