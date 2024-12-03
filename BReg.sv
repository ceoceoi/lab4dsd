`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 09:44:19 AM
// Design Name: 
// Module Name: BReg
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


module BReg( 
 input logic clk,
 input logic rest,
 input logic en,
 input logic [3:0]D,
 
 output logic [3:0]q_behavioral );
   

 always @ (posedge clk,  negedge rest)
    begin
    if (rest == 0) 
    q_behavioral<=1'b0 ;
    else if (en)
    q_behavioral<=D;
    
    end



endmodule
