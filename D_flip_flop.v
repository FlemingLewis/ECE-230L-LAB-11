module D_flip_flop(
    input D,
    input clk,
    input rst,
    output reg Q,
    output NotQ
);

initial begin
    Q <= 0;
end
 
always @(posedge clk or posedge rst) begin
    if (rst)
        Q <= 0;
    else
        Q <= D;
    end
   
assign NotQ = ~Q;


endmodule

