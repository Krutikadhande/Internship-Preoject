module testbench;
reg clk;
reg [3:0] instruction;
processor uut (
    .clk(clk),
    .instruction(instruction)
);
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end
initial begin
    instruction = 4'b0001; #10;
    instruction = 4'b1010; #10;
    instruction = 4'b1111; #10;
    $stop;
end
endmodule