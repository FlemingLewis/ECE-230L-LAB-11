module T_flip_flop (
    input T,
    input clk,
    input rst,
    output Q,
    output NotQ
);

wire D;

assign D = (T & NotQ) | (~T & Q);

D_flip_flop DFF(
    .D(D),
    .clk(clk),
    .rst(rst),
    .Q(Q),
    .NotQ(NotQ)
);

endmodule
