`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 02:33:44 PM
// Design Name: 
// Module Name: DLatch_tb
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

module tb_DLatch;

logic D, clk, rest ;
logic q , qpar;

DLatch dut (
    D,
    clk ,
    rest,
    q ,
    qpar );   
    
      
    
      
      initial clk = 0;
      always #5 clk = ~clk;
      initial begin
         D = 0;
         rest = 0;

        #10 D = 1; rest = 1;
        #20 D = 0; rest = 1;
        #20 D = 1; rest = 0;
        #20 D = 0; rest = 0;
        #20 D = 0; rest = 1;
        #20 D = 1; rest = 1;
        #20 D = 0; rest = 1;

    #30 $finish;
    
    
    end
     
endmodule