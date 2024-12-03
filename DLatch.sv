`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 09:56:04 AM
// Design Name: 
// Module Name: DLatch
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

module DLatch(
input logic D,
input logic clk,
input logic rest,
output logic q,
output logic qpar );
// logic  D;
logic t1,t2,t3,t4;
nand (t1,clk,D);
nand(t2,clk,~D);

nand(qpar,t2,q);
nand(q,t1,qpar);

endmodule
