`ifndef ALU_ENVIRONMENT_SV
`define ALU_ENVIRONMENT_SV

`include "alu_agent.sv"
`include "alu_scoreboard.sv"

class alu_environment extends uvm_env;
    `uvm_component_utils(alu_environment)

    function new(string name = "alu_environment", uvm_component parent);
        super.new(name, parent);
    endfunction
endclass

`endif