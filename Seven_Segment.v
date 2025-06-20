`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2025 17:29:49
// Design Name: 
// Module Name: Seven_Segment
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


module Seven_Segment(
    input [1:0] status,
    output reg [6:0] seg
    ); 
    
    always @(status)
    begin
    case(status)
    2'b01: seg=7'b1000111;
    2'b10: seg=7'b1000001;
    endcase
    end
endmodule
