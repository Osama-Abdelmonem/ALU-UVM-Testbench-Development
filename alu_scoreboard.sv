`ifndef ALU_SCOREBOARD_SV
`define ALU_SCOREBOARD_SV

`include "alu_transaction.sv"

class alu_scoreboard extends uvm_scoreboard;
    `uvm_component_utils(alu_scoreboard)

    function new(string name = "alu_scoreboard", uvm_component parent);
        super.new(name, parent);
    endfunction
endclass

`endif