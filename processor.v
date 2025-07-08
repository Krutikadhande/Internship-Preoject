module processor (
    input clk,
    input [3:0] instruction
);
wire [1:0] src_reg1, src_reg2, dest_reg;
wire [2:0] alu_op;
wire [3:0] data1, data2, result;
wire reg_write, carry;

control_unit CU (
    .instruction(instruction),
    .src_reg1(src_reg1),
    .src_reg2(src_reg2),
    .dest_reg(dest_reg),
    .alu_op(alu_op),
    .reg_write(reg_write)
);

register_file RF (
    .clk(clk),
    .reg_write(reg_write),
    .read_reg1(src_reg1),
    .read_reg2(src_reg2),
    .write_reg(dest_reg),
    .write_data(result),
    .read_data1(data1),
    .read_data2(data2)
);

alu ALU (
    .A(data1),
    .B(data2),
    .ALU_Sel(alu_op),
    .ALU_Out(result),
    .CarryOut(carry)
);
endmodule