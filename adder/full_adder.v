`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/18 16:28:07
// Design Name: 有进位信息的加法
// Module Name: full_adder
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


module full_adder(input a,input b,input c_in,output sum,output c_out);
    //c_in接收半加器的进位信息
    //c_out进位信息
    //assign {cout,sum} = a + b + cin;
    wire sum1;                                        
    wire c_out1,c_out2;    
    //实例化
    half_adder half_adder1(.a(a),.b(b),.sum(sum1),.c_out(c_out1));    
    half_adder half_adder2(.a(c_in),.b(sum1),.sum(sum),.c_out(c_out2));
    assign c_out = c_out1|c_out2;
endmodule
