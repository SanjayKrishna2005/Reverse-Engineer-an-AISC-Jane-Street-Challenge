`timescale 1ps/1ps

module tb_bruteforce;
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

    initial clk = 0;
    always #5000 clk = ~clk;

    // The input bits to shift in — we'll try to find the right 121-bit sequence
    reg [120:0] input_bits;
    integer i, bit_pos, trial;
    integer found;

    task send_and_check;
        output reg result;
        integer k;
        begin
            rst_n = 0; enable = 0; I = 0;
            @(posedge clk); #1000;
            @(posedge clk); #1000;
            rst_n = 1;
            @(posedge clk); #1000;
            enable = 1;
            for (k = 0; k < 121; k = k + 1) begin
                I = input_bits[120 - k];
                @(posedge clk); #1000;
            end
            enable = 0; I = 0;
            @(posedge clk); #1000;
            @(posedge clk); #1000;
            @(posedge clk); #1000;
            result = success;
        end
    endtask

    reg result;
    reg [7:0] out_char;
    integer char_idx;

    initial begin
        found = 0;

        // Try 1: The example VCD input (known wrong)
        input_bits = 121'b0010101000000010110000101001100000000010000001110110000100101100001110011000000010110000001011100000000010000011001110000;
        send_and_check(result);
        $display("Trial VCD input: success=%b O=%c%c%c%c%c%c%c%c%c", result,
            O[7]?"T":" ", O[6]?"R":" ", O[5]?"Y":" ", O[4]?" ":" ",
            O[3]?"A":" ", O[2]?"G":" ", O[1]?"A":" ", O[0]?"I":" ", 8'h4E);
        
        if (result) begin
            $display("FOUND! Input = %b", input_bits);
            found = 1;
        end

        // Try 2: All zeros
        if (!found) begin
            input_bits = 121'b0;
            send_and_check(result);
            $display("All zeros: success=%b", result);
            if (result) begin
                $display("FOUND! Input = %b", input_bits);
                found = 1;
            end
        end

        // Try 3: All ones
        if (!found) begin
            input_bits = {121{1'b1}};
            send_and_check(result);
            $display("All ones: success=%b", result);
            if (result) begin
                $display("FOUND! Input = %b", input_bits);
                found = 1;
            end
        end

        // Try 4: ASCII text strings that could be the answer
        // The puzzle hint says "find the string value" - try encoding ASCII strings
        // Let's try common phrases bit by bit
        
        // "Hello World!" = 48 65 6c 6c 6f 20 57 6f 72 6c 64 21 (96 bits)
        // Pad to 121 bits
        if (!found) begin
            // Try "ASIC" padded
            input_bits = 121'b0;
            input_bits[120:113] = 8'h41; // A
            input_bits[112:105] = 8'h53; // S
            input_bits[104:97] = 8'h49;  // I
            input_bits[96:89] = 8'h43;   // C
            send_and_check(result);
            $display("'ASIC': success=%b", result);
            if (result) found = 1;
        end

        // Try single-bit flips from the VCD example
        if (!found) begin
            $display("Trying single-bit flips from VCD example...");
            for (bit_pos = 0; bit_pos < 121 && !found; bit_pos = bit_pos + 1) begin
                input_bits = 121'b0010101000000010110000101001100000000010000001110110000100101100001110011000000010110000001011100000000010000011001110000;
                input_bits[bit_pos] = ~input_bits[bit_pos];
                send_and_check(result);
                if (result) begin
                    $display("FOUND at bit flip %0d! Input = %b", bit_pos, input_bits);
                    found = 1;
                end
            end
            if (!found)
                $display("No single-bit flip worked.");
        end

        if (!found)
            $display("No solution found yet.");
        
        $finish;
    end
endmodule
