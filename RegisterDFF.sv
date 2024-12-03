`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 09:01:39 AM
// Design Name: 
// Module Name: RegisterDFF
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


module RegisterDFF(
input logic [3:0]D,
input logic [3:0]clk,
input logic [3:0]rest, 
output logic [3:0]q);

   
     logic D0,D1,D2,D3;  
     logic q0,q1,q2,q3;
     
      DFF R1(
.D(D3),
.clk(clk),
.q(q3),
.rest(rest)
  ); 
      DFF R2(
.D(D2),
.clk(clk),
.q(q2),
.rest(rest)
  ); 
      DFF R3(
.D(D1),
.clk(clk),
.q(q2),
.rest(rest)
  ); 
      DFF R4(
.D(D0),
.clk(clk),
.q(q2),
.rest(rest)
  );
    
endmodule
