module tb_sr_ff;
　　reg clk, j, k, s, r;
　　wire q1, q2;
　　jk_ff u1(clk, j, k, q1);
　　sr_ff u2(clk, s, r, q2);
　　initial begin clk = 0; forever #5 clk = ~clk; end
　　initial begin
　　j = 0; k = 0; s = 0; r = 0; #10;
　　j = 1; k = 0; s = 1; r = 0; #10;
　　j = 0; k = 1; s = 0; r = 1; #10;
　　j = 1; k = 1; s = 1; r = 1; 
    #10;
　　end
　　endmodule