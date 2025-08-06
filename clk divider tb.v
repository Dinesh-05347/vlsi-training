`timescale 1ns/1ps
module tb_clk_divider;
    reg clk, reset;
    wire clk_out;

    clk_divider #(13) uut(clk, reset, clk_out);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("clk_divider.vcd"); $dumpvars(0, tb_clk_divider);
        clk = 0; reset = 1; #10;
        reset = 0;

        #200;
        $finish;
    end
endmodule