module sev_seg_top(
    input wire CLK100MHZ,    // using the same name as pin names
    input wire CPU_RESETN,   
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [7:0] AN,    
    input wire [15:0] SW,    
    input wire BTNC  
);
logic reset_n;
logic clk;

assign reset_n = CPU_RESETN;
assign clk = CLK100MHZ;

//Design start here


logic en ;
logic [7:0]d;
logic [7:0] reg_OUT;

assign d = SW[7:0];

top_register uut (
    .clk(BTNC),         
    .rest(reset_n),         
    .D(d), 
    .en(SW[8]),    
    .q(reg_OUT)
    );

// Design ends here 
// Seven segments Controller
wire [6:0] Seg;
wire [3:0] digits[7:0];

assign digits[0] = reg_OUT; //output 4 bit 
assign digits[1] = reg_OUT;
assign digits[2] = 4'b1111;
assign digits[3] = 4'b1111;
assign digits[4] = 4'b1111;
assign digits[5] = 4'b1111;
assign digits[6] = 4'b1111;
assign digits[7] = 4'b1111;


sev_seg_controller ssc(
    .clk(clk),
    .resetn(reset_n),
    .digits(digits),
    .Seg(Seg),
    .AN(AN)
);


assign CA = Seg[0];
assign CB = Seg[1];
assign CC = Seg[2];
assign CD = Seg[3];
assign CE = Seg[4];
assign CF = Seg[5];
assign CG = Seg[6];
assign DP = 1'b1; // turn off the dot point on seven segs


endmodule 