`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2025 19:01:08
// Design Name: 
// Module Name: Top_Module
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


module Top_Module(
    input [4:0] sw,
    output [1:0] status,
    output [6:0] seg,
    output [3:0] en
    ); 
    
    assign en=4'b1110;
    
    Seven_Segment U0(status,seg);
    Digital_Safe U1(sw,status);
endmodule
