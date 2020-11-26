`timescale 1ns / 10ps
module counter60(
    input wire clk,
    input wire rst,
    output wire count,
    output reg [5:0] ans
);
    wire counter_6_out;
    //分频？
    counter6 U_counter6_0(.clk(clk), .rst(rst), .count(counter_6_out));
    counter10 U_counter10_0(.clk(counter_6_out), .rst(rst), .count(count));
    always@(posedge clk or posedge rst)begin
        if (rst == 1'b1) begin
            ans <= 6'b0;
    
        end
        else if (ans == 6'd59) begin
            ans <= 6'b0;
         
        end
        else begin
            ans <= ans + 1'b1;
           
        end
    end
endmodule 
