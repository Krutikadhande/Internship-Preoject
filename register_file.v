module register_file (
    input clk,
    input reg_write,
    input [1:0] read_reg1, read_reg2, write_reg,
    input [3:0] write_data,
    output [3:0] read_data1, read_data2
);
reg [3:0] reg_array[3:0];
assign read_data1 = reg_array[read_reg1];
assign read_data2 = reg_array[read_reg2];
always @(posedge clk) begin
    if (reg_write)
        reg_array[write_reg] <= write_data;
end
endmodule