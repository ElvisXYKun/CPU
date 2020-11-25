`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/18 15:37:38
// Design Name: 
// Module Name: testbench
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


module testbench();
     reg   [3:0] A,B;
     reg   CI;
     wire  [4:0] S;
     adder A1(A,B,CI,S);
     initial
          begin
               A=4'd0;B=4'd0;CI=1'b0;
               #10 A=4'd3;B=4'd4;CI=1'B0;
               #10 A=4'd2;B=4'd5;CI=1'b1;
               /**
               #10 A=4'd9;B=4'd9;CI=1'b1;
               9->1001
               */
               #10 A=4'd7;B=4'd7;CI=1'b1;
          end
     
endmodule
