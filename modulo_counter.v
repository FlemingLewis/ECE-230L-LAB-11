module modulo_counter(

//inputs
input clk,
input rst,

//outputs
output [2:0] Q,
output out

);

//wiires
wire [2:0] sum;
wire [2:0] next_count;

wire c1, c2, c3;
wire terminal;

//three adders 1,2,3 -> 0,1,2
full_adder FA0 (
    .A(Q[0]),
    .B(1'b1),
    .Cin(1'b0),
    .Y(sum[0]),
    .Cout(c1)
);

full_adder FA1 (
    .A(Q[1]),
    .B(1'b0),
    .Cin(c1),
    .Y(sum[1]),
    .Cout(c2)
);

full_adder FA2 (
    .A(Q[2]),
    .B(1'b0),
    .Cin(c2),
    .Y(sum[2]),
    .Cout(c3)
);

//assignment code
assign terminal = Q[2] & ~Q[1] & Q[0];

//coint reset
assign next_count = sum & {3{~terminal}};

//D flip flops
D_flip_flop DFF0 (
    .D(next_count[0]),
    .clk(clk),
    .rst(rst),
    .Q(Q[0]),
    .NotQ()
);

D_flip_flop DFF1 (
    .D(next_count[1]),
    .clk(clk),
    .rst(rst),
    .Q(Q[1]),
    .NotQ()
);

D_flip_flop DFF2 (
    .D(next_count[2]),
    .clk(clk),
    .rst(rst),
    .Q(Q[2]),
    .NotQ()
);

//DFF3
D_flip_flop DFF3 (
    .D(out ^ terminal),
    .clk(clk),
    .rst(rst),
    .Q(out),
    .NotQ()
);


endmodule
