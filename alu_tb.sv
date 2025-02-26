module alu_tb;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  logic clk, rst;
  alu_if intf(clk, rst);

  // DUT Instantiation
  alu dut (
    .a(intf.a),
    .b(intf.b),
    .op(intf.op),
    .result(intf.result),
    .clk(clk),
    .rst(rst)
  );

  initial begin
    uvm_config_db#(virtual alu_if)::set(null, "*", "vif", intf);
    run_test("alu_test");
  end

  always #5 clk = ~clk;

endmodule
