module DReg(input logic clk,
 input logic rest,
 input logic [3:0]D,
      input logic en,

  output logic [3:0]q );
    
    
    
     logic D0,D1,D2,D3;  
     logic q0,q1,q2,q3;
     
     
      DFF R1(
.D(D3),
.clk(clk),
.q(q3),
.en(en),
.rest(rest)
  ); 
      DFF R2(
.D(D2),
.clk(clk),
.q(q2),
.en(),
.rest(rest)
  ); 
      DFF R3(
.D(D1),
.clk(clk),
.q(q1),
.en(en),
.rest(rest)
  ); 
      DFF R4(
.D(D0),
.clk(clk),
.q(q0),
.en(en),
.rest(rest)
  );
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    endmodule