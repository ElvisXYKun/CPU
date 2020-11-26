`timescale 1ns / 10ps
module counter60_tb();
    reg clk;
    reg rst;
    wire outa;
    wire [5:0] ans;

    counter60 U_counter60_0(.clk(clk), .rst(rst), .count(outa),.ans(ans));

 

    initial 
        begin
            rst <= 0;
            clk <= 0;
            #50 rst <= 1;
            #100 rst <= 0;
        end
    always #5 clk = ~clk;

endmodule
