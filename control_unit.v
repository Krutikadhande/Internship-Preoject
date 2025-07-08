module control_unit (
    input [3:0] instruction,
    output reg [1:0] src_reg1, src_reg2, dest_reg,
    output reg [2:0] alu_op,
    output reg reg_write
);
always @(*) begin
    src_reg1 = instruction[3:2];
    src_reg2 = instruction[1:0];
    dest_reg = instruction[3:2];
    alu_op = instruction[3:1];
    reg_write = 1;
end
endmodule