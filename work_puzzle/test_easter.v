`timescale 1ps/1ps
module test_easter;
    reg clk;
    reg rst_n;
    reg enable;
    reg I;
    wire success;
    wire [7:0] O;

    puzzle_gate uut(
        .clk(clk),
        .rst_n(rst_n),
        .enable(enable),
        .I(I),
        .success(success),
        .O(O)
    );

    initial clk = 0;
    always #5000 clk = ~clk;

    reg [121:0] pwd = 122'b00000001010010001000000000000101010001000000001010000001000000010000000100001001000001000000001000100010010000010100000000;
    
    integer k;
    initial begin
        rst_n = 0; enable = 0; I = 0;
        @(posedge clk);
        @(posedge clk);
        rst_n = 1;
        @(posedge clk);
        enable = 1;
        
        for (k = 0; k < 122; k = k + 1) begin
            I = pwd[121 - k];
            @(posedge clk);
        end
        
        enable = 0; I = 0;
        for (k = 0; k < 15; k = k + 1) begin
            @(posedge clk);
            if (O >= 32 && O <= 126) $write("%c", O);
        end
        $display("");
        $finish;
    end
endmodule
