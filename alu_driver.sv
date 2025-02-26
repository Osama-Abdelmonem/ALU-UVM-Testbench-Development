`ifndef ALU_DRIVER_SV
`define ALU_DRIVER_SV

`include "alu_transaction.sv"

class alu_driver extends uvm_driver #(alu_transaction);
    virtual alu_if vif;
    `uvm_component_utils(alu_driver)

    function new(string name = "alu_driver", uvm_component parent);
        super.new(name, parent);
    endfunction

    task run_phase(uvm_phase phase);
        forever begin
            alu_transaction tx;
            seq_item_port.get_next_item(tx);
            vif.A = tx.A;
            vif.B = tx.B;
            vif.a_en = tx.a_en;
            vif.b_en = tx.b_en;
            vif.alu_en = tx.alu_en;
            vif.a_op = tx.a_op;
            vif.b_op = tx.b_op;
            seq_item_port.item_done();
        end
    endtask
endclass

`endif