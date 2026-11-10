module top (
    input btnC,
    input btnU,
    output [15:0] led
);

    ripple_counter RC (
        .clk(btnC),
        .reset(btnU),
        .q_out(led[2:0])
    );

    modulo_counter MC (
        .clk(btnC),
        .rst(btnU),
        .Q(led[5:3]),
        .out(led[6])
    );

    assign led[15:7] = 9'b0;

endmodule
