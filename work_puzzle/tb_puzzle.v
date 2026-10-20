`timescale 1ps/1ps

module tb_puzzle;

    reg clk;
    reg rst_n;
    reg enable;
    reg I;
    wire success;
    wire [7:0] O;

    puzzle_gate uut (
        .clk(clk),
        .rst_n(rst_n),
        .enable(enable),
        .I(I),
        .success(success),
        .O(O)
    );

    // Clock: 10ns period (posedge every 5ns)
    initial clk = 0;
    always #5000 clk = ~clk;

    // Store the 121 bits we send in
    reg [0:120] input_bits;
    integer i;

    task send_input;
        input [0:120] bits;
        integer k;
        begin
            // Assert reset
            rst_n = 0;
            enable = 0;
            I = 0;
            @(posedge clk); #1000;
            @(posedge clk); #1000;
            rst_n = 1;
            @(posedge clk); #1000;
            enable = 1;
            
            // Shift in 121 bits
            for (k = 0; k < 121; k = k + 1) begin
                I = bits[k];
                @(posedge clk); #1000;
            end
            
            enable = 0;
            I = 0;
            // Wait a few cycles for success to propagate
            @(posedge clk); #1000;
            @(posedge clk); #1000;
        end
    endtask

    initial begin
        $dumpfile("puzzle_out.vcd");
        $dumpvars(0, tb_puzzle);
        
        // First try the example input from the VCD
        input_bits = 121'b0010101000000010110000101001100000000010000001110110000100101100001110011000000010110000001011100000000010000011001110000;
        send_input(input_bits);
        
        if (success) begin
            $display("SUCCESS! Example input was correct!");
            $display("Input bits: %b", input_bits);
        end else begin
            $display("Example input failed (expected). O = %s", O);
        end
        
        // Now scan every single-bit-flip variant (111 trials, looking for nearby correct sequence)
        // Actually let's just try all zeros and all ones first
        input_bits = 121'b0;
        send_input(input_bits);
        if (success) $display("SUCCESS with all zeros!");
        
        input_bits = {121{1'b1}};
        send_input(input_bits);
        if (success) $display("SUCCESS with all ones!");
        
        #100000;
        $display("Done. success=%b", success);
        $finish;
    end

endmodule
