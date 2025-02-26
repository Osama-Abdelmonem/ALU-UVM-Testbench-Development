module ALU (
    input logic signed [4:0] A, B,
    input logic a_en, b_en, alu_en,
    input logic [2:0] a_op,
    input logic [1:0] b_op,
    input logic clk, rst_n,
    output logic signed [5:0] result
);
    
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            result <= 6'b0;
        else if (alu_en) begin
            if (a_en && !b_en) begin
                case (a_op)
                    3'b000: result <= A + B;    // Addition
                    3'b001: result <= A - B;    // Subtraction
                    3'b010: result <= A ^ B;    // XOR
                    3'b011: result <= ~(A & B); // NAND
                    3'b100: result <= A & B;    // AND
                    3'b101: result <= A | B;    // OR
                    3'b110: result <= A ~^ B;   // XNOR
                    default: result <= 6'b0;
                endcase
            end else if (b_en && !a_en) begin
                case (b_op)
                    2'b00: result <= ~(A & B); // NAND
                    2'b01: result <= A + B;   // Addition
                    2'b10: result <= A - B;   // Subtraction
                    default: result <= 6'b0;
                endcase
            end else if (a_en && b_en) begin
                case (b_op)
                    2'b00: result <= A ^ B;    // XOR
                    2'b01: result <= A ~^ B;   // XNOR
                    2'b10: result <= A - 1;    // Decrement A
                    2'b11: result <= B + 2;    // Increment B by 2
                    default: result <= 6'b0;
                endcase
            end 
        end else begin
                result <= 6'b0; // Default case
            end
    end
endmodule
