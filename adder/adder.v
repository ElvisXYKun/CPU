`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/18 15:36:31
// Design Name: 
// Module Name: adder
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


module adder ( 
  input [3:0] a
, input [3:0] b
, input c_in//进位信息
, output [4:0] sum
); //4位全加器
   wire [3:0] c_tmp; 
   full_adder i0 ( a[0], b[0], c_in    , sum[0], c_tmp[0] ); 
   full_adder i1 ( a[1], b[1], c_tmp[0], sum[1], c_tmp[1] ); 
   full_adder i2 ( a[2], b[2], c_tmp[1], sum[2], c_tmp[2] ); 
   full_adder i3 ( a[3], b[3], c_tmp[2], sum[3], c_tmp[3] ); 
   assign sum[4] = c_tmp[3];
endmodule
