`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 03:08:39 PM
// Design Name: 
// Module Name: REGn_tb
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


module REGn_tb;
 localparam int n = 8; // You can change this value for different widths
 logic clk;
 logic rest;
 logic en;
 logic [n-1:0]D;
 logic [n-1:0]q;
   

    REGn uut (
        .D(D),
        .rest(rest),
        .clk(clk),
        .en(en),
        .q(q)
);
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        D = 4'b0000;
        rest = 0;


        // Apply reset and check behavior
        #10 rest = 1; D = 4'b0001; 
        #20 D = 4'b0010; en = 1;
        #20 D = 4'b0100; en = 0;
        #20 D = 4'b1000; en = 1;
        #20 rest = 0;    // Apply again

        #30 $finish; 
    end

endmodule
