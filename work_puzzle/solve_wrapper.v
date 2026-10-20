module solve_wrapper(
    input wire I,
    output wire success
);

    reg clk = 0;
    always clk = ~clk;

    reg [7:0] cycle_count = 0;
    reg rst_n = 0;
    reg enable = 0;

    always @(posedge clk) begin
        cycle_count <= cycle_count + 1;
        
        // Assert reset low for a few cycles
        if (cycle_count == 2) rst_n <= 1;
        
        // Enable shifting from cycle 4 to 124 (121 cycles)
        if (cycle_count == 4) enable <= 1;
        if (cycle_count == 125) enable <= 0;
    end

    wire [7:0] O;
    
    puzzle_gate uut (
        .clk(clk),
        .rst_n(rst_n),
        .enable(enable),
        .I(I),
        .success(success),
        .O(O)
    );

endmodule
