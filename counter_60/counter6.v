`timescale 1ns / 10ps
module counter6(
input wire clk,
input wire rst,
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
            else if(t == 4'd5)
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
