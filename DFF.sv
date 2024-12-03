`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 05:26:33 PM
// Design Name: 
// Module Name: DFF
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


module DFF(
input logic D,
input logic clk,
output logic q );

logic t1;
DLatch f1(
 .D(D),
 .clk(~clk),
 //.rest(),
   .q(t1) 
    //.qpar( )
);
 
DLatch f2(
 .D(t1),
 .clk(clk),
  //.rest(),
   .q(q) 
    //.qpar( )
);
 
endmodule



