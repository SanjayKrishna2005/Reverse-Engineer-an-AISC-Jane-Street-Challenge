module adder_demo_recovered (
    input wire A,
    input wire B,
    output wire S,
    input wire clk,
    input wire en,
    input wire rst_n
);

    // 16-bit internal state register (recovered from 16x sky130_fd_sc_hd__dfrtp_2)
    reg [15:0] state;
    wire [15:0] next_state;

    // Output is a complex combinational function of the state and inputs
    // In a serial adder, this is typically the Sum bit
    assign S = A ^ B ^ state[0]; 

    // Next state logic (recovered from 16x sky130_fd_sc_hd__mux2_1 and associated combinational logic)
    // The MUXes create an enable logic structure where if (en) the register updates, else it holds its value.
    assign next_state = {state[14:0], (A & B) | (A & state[0]) | (B & state[0])};

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            state <= 16'b0;
        else if (en)
            state <= next_state;
    end

endmodule
