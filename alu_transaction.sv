`ifndef ALU_TRANSACTION_SV
`define ALU_TRANSACTION_SV

`include "uvm_macros.svh"
import uvm_pkg::*;

class alu_transaction extends uvm_sequence_item;
    rand logic signed [4:0] A, B;
    rand logic a_en, b_en, alu_en;
    rand logic [2:0] a_op;
    rand logic [1:0] b_op;
    logic signed [5:0] result;

    `uvm_object_utils(alu_transaction)

    function new(string name = "alu_transaction");
        super.new(name);
    endfunction
endclass

`endif