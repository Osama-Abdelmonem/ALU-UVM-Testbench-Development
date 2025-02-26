`ifndef ALU_SEQUENCE_SV
`define ALU_SEQUENCE_SV

`include "alu_transaction.sv"

class alu_sequence extends uvm_sequence #(alu_transaction);
    `uvm_object_utils(alu_sequence)

    function new(string name = "alu_sequence");
        super.new(name);
    endfunction

    task body();
        alu_transaction tx;
        tx = alu_transaction::type_id::create("tx");
        start_item(tx);
        if (!tx.randomize()) `uvm_error("SEQ", "Randomization failed")
        finish_item(tx);
    endtask
endclass

`endif