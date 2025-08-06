module clk_divider #(parameter DIVIDE_BY = 13)(
    input clk, reset,
    output reg clk_out
);
    reg [31:0] count;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 0;
            clk_out <= 0;
        end else begin
            if (count == (DIVIDE_BY/2 - 1)) begin
                clk_out <= ~clk_out;
                count <= 0;
            end else
                count <= count + 1;
        end
    end
endmodule