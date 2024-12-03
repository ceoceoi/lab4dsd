`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 03:06:42 PM
// Design Name: 
// Module Name: REGn
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


module REGn#(parameter n=8)( 
 input logic clk,
 input logic rest,
 input logic en,
 input logic [n-1:0]D,
 output logic [n-1:0]q
  );
   

 always @ (posedge clk,  negedge rest)
    begin
    if (rest == 0) 
    q<=1'b0 ;
    else if (en)
    q<=D;
    
    end
endmodule
