`timescale 1ns/1ps

module tb_equiv;

    reg clk;
    reg rst_n;
    reg A;
    reg B;
    reg en;

    wire S_gold;
    wire S_gate;

    // Instantiate Golden RTL
    adder_demo u_golden (
        .clk(clk),
        .rst_n(rst_n),
        .A(A),
        .B(B),
        .S(S_gold),
        .en(en)
    );

    // Instantiate Extracted Gate-level Netlist
    adder_demo_gate u_gate (
        .clk(clk),
        .rst_n(rst_n),
        .A(A),
        .B(B),
        .S(S_gate),
        .en(en)
    );

    integer mismatches;
    integer tests;

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        // Initialize
        rst_n = 0;
        A = 0;
        B = 0;
        en = 0;
        mismatches = 0;
        tests = 0;

        #20;
        rst_n = 1;
        en = 1;

        // Run 100,000 random test cycles
        repeat (100000) begin
            @(negedge clk);
            A = $random % 2;
            B = $random % 2;
            en = ($random % 10) > 2; // 80% chance of enable
            
            #1; // Wait for combinational logic to settle
            if (S_gold !== S_gate) begin
                $display("MISMATCH at time %0t: gold=%b, gate=%b", $time, S_gold, S_gate);
                mismatches = mismatches + 1;
            end
            tests = tests + 1;
        end

        #20;
        if (mismatches == 0) begin
            $display("SUCCESS: %0d tests run. 100%% Functional Coverage Match!", tests);
        end else begin
            $display("FAILED: %0d mismatches out of %0d tests.", mismatches, tests);
        end
        $finish;
    end

endmodule
