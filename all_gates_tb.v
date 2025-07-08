module all_gates_tb;
wire and_out, nand_out, or_out, nor_out, xor_out, xnor_out, not_out;
  reg a,b;
  all_gates allg ( and_out, nand_out, or_out, nor_out, xor_out, xnor_out, not_out, a, b );
  initial begin
    $dumpfile("all_gates_tb.vcd");
    $dumpvars(0);
    $monitor("At time %0t:a=%b, b=%b,and_out=%b, nand_out=%b, or_out=%b, nor_out=%b, xor_out=%b, xnor_out=%b, not_out=%b",$time,a,b,and_out, nand_out, or_out, nor_out, xor_out, xnor_out, not_out);  
a=0; b=0; 
#10; a=0; b=1;
#10; a=1; b=0;
#10; a=1; b=1;
#10;
$finish;
end
endmodule