`ifndef ALU_MONITOR_SV
`define ALU_MONITOR_SV

`include "alu_transaction.sv"

class alu_monitor extends uvm_monitor;
    virtual alu_if vif;
    uvm_analysis_port #(alu_transaction) mon_ap;
    `uvm_component_utils(alu_monitor)

    function new(string name = "alu_monitor", uvm_component parent);
        super.new(name, parent);
        mon_ap = new("mon_ap", this);
    endfunction

    task run_phase(uvm_phase phase);
        forever begin
            alu_transaction tx = alu_transaction::type_id::create("tx");
            tx.A = vif.A;
            tx.B = vif.B;
            tx.result = vif.result;
            mon_ap.write(tx);
        end
    endtask
endclass

`endif