`timescale 1ns / 1ps

`include "uvm_macros.svh"
import uvm_pkg::*;
`include "alu_if.sv"

module alu_tb;
    logic clk;
    logic rst_n;

    // Instantiate Interface
    alu_if alu_intf (clk, rst_n);

    // Generate Clock Signal
    always #5 clk = ~clk;

    // Generate Reset Signal
    initial begin
        clk = 0;
        rst_n = 0;
        #10 rst_n = 1;
    end

    // Start UVM Test
    initial begin
        uvm_config_db#(virtual alu_if)::set(null, "uvm_test_top", "alu_if", alu_intf);
        run_test("alu_test");
    end
endmodule
