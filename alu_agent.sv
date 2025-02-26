`ifndef ALU_AGENT_SV
`define ALU_AGENT_SV

`include "alu_driver.sv"
`include "alu_monitor.sv"

class alu_agent extends uvm_agent;
    `uvm_component_utils(alu_agent)

    function new(string name = "alu_agent", uvm_component parent);
        super.new(name, parent);
    endfunction
endclass

`endif
