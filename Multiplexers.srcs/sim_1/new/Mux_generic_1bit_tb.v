`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2024 06:24:42 PM
// Design Name: 
// Module Name: Mux_generic_1bit_tb
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


module Mux_generic_1bit_tb(

    );
    parameter n = 4;
    reg [n-1 : 0] w;
    reg [$clog2(n)-1:0]s;
    wire f;
    Mux_generic_1bit #(.n(n)) UUT1
    (
    .w(w),
    .s(s),
    .f(f)
    );
    initial
    #40 $finish;
    
    initial
    begin
    w = 4'd10;
    s = 2'b00;
    #10 s = 2'b01;
    #10 s = 2'b10;
    #10 s = 2'b11;
    end
    
endmodule
