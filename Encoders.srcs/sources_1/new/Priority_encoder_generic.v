`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2024 03:00:07 AM
// Design Name: 
// Module Name: Priority_encoder_generic
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


module Priority_encoder_generic
#(parameter n = 4)
   (
    input [n-1 : 0] w,
    output z,
    output reg [$clog2(n)-1 : 0]y
    );
    integer k;
    assign z = |w;
    always @(w)
    begin
    y = 'bx;
    for(k = 0; k < n; k = k+1)
    y = k;   /*it will continue assign till we ge the greatest index  and the rest is zeroes and it will over write on the lower indecies*/
    end
endmodule
