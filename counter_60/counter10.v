`timescale 1ns / 10ps
/**
module counter10(
input clk,
input rst,
output [3:0] count
);
    reg [3:0] t;
    assign count = t;
    always@(posedge clk)
        begin
            if(!rst)
                t <= 0;
            else if(t >= 4'd9)
                t <= 0;
            else
                t <= t + 1;
        end
endmodule
**/
module counter10(
input wire rst,
input wire clk,
output reg count
);
    reg [3:0] t;
    always@(posedge clk or posedge rst)
        begin
            if(rst)
            begin
                t <= 4'b0;
                count <= 1'b0;
            end
            else if(t == 4'd9)
            begin
                t <= 4'b0;
                //溢出时产生上升沿
                count <=1'b1;
                #5 count <=1'b0;
            end
            else
                begin
                    t <= t + 1'b1;
                    count <= 1'b0;
                end
        end
endmodule

                    