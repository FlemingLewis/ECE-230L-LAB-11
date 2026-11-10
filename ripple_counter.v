module ripple_counter (
    input clk,
    input reset,
    output [2:0] q_out
);
    wire [2:0] not_q;

    T_flip_flop tf0 (.T(1'b1), .clk(clk), .rst(reset), .Q(q_out[0]), .NotQ(not_q[0]));
    T_flip_flop tf1 (.T(1'b1), .clk(not_q[0]), .rst(reset), .Q(q_out[1]), .NotQ(not_q[1]));
    T_flip_flop tf2 (.T(1'b1), .clk(not_q[1]), .rst(reset), .Q(q_out[2]), .NotQ(not_q[2]));

endmodule