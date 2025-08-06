`timescale 1ns/1ps
module tb_comparator_4bit;
    reg [3:0] a, b;
    wire gt, lt, eq;

    comparator_4bit uut(a, b, gt, lt, eq);

    initial begin
        $dumpfile("comparator.vcd"); $dumpvars(0, tb_comparator_4bit);

        a = 4; b = 4; #10;
        a = 7; b = 3; #10;
        a = 2; b = 9; #10;

        $finish;
    end
endmodule