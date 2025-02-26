`ifndef ALU_IF_SV
`define ALU_IF_SV

interface alu_if (
    input logic clk,
    input logic rst_n
);
    logic signed [4:0] A, B;
    logic a_en, b_en, alu_en;
    logic [2:0] a_op;
    logic [1:0] b_op;
    logic signed [5:0] result;
endinterface

`endif