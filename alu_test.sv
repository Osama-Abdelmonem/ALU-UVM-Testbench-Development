`ifndef ALU_TEST_SV
`define ALU_TEST_SV

`include "alu_environment.sv"

class alu_test extends uvm_test;
    `uvm_component_utils(alu_test)

    function new(string name = "alu_test", uvm_component parent);
        super.new(name, parent);
    endfunction
endclass

`endif