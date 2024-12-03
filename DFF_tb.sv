`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 05:44:36 PM
// Design Name: 
// Module Name: DFF_tb
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


module DFF_tb;
logic D, clk, rest ;
logic q;
DFF dut (
    D,
    clk,
    q ); 
    
    
     initial clk = 0;
      always #5 clk = ~clk;
      initial begin
         D = 0;
         rest = 0;

        #10 D = 1; 
        #10 D = 0; 
        #10 D = 1; 
        #10 D = 0; 
    #30 $finish;
    
    
    end
    
endmodule

 