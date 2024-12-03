`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 10:58:59 AM
// Design Name: 
// Module Name: topReg_tb
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


module topReg_tb;

    // Declare 
    logic [3:0] D;            
    logic clk, rest,en;         
    logic [3:0] q;            
    
    
    // Instantiate the top-level module 
    top_register dut (
        .D(D),
        .rest(rest),
        .clk(clk),
        .en(en),
        .q(q)
    );

    // Clock generation: Toggle clock every 5 time 
    initial clk = 0;
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        // Initialize signals
        D = 4'b0000;
        rest = 0; // Reset is active low initially

        // Apply reset and check behavior
        #10 rest = 1; D = 4'b0001; 
        #20 D = 4'b0010; en = 1;
        #20 D = 4'b0100; en = 0;
        #20 D = 4'b1000; en = 1;
        #20 rest = 0;    // Apply again

        #30 $finish; 
    end

endmodule

