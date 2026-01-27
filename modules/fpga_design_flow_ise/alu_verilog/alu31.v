`timescale 1ns / 1ns
module alu32 (
    input  wire [31:0] A,
    input  wire [31:0] B,
    input  wire [2:0]  op,     // operation select
    output reg  [31:0] Y,
    output reg         Cout,   // carry out (ADD/SUB meaningful)
    output reg         Zero    // Y == 0 flag
);

    // Precompute add/sub using two's complement trick:
    // SUB: A + (~B) + 1
    wire        sub = (op == 3'b001);   // SUB opcode = 001
    wire [31:0] B_xor = B ^ {32{sub}};  // sub=1 -> ~B, sub=0 -> B
    wire [32:0] add_ext = {1'b0, A} + {1'b0, B_xor} + sub;

    wire [31:0] addsub_res = add_ext[31:0];
    wire        addsub_cout = add_ext[32];

    wire [31:0] and_res = A & B;
    wire [31:0] or_res  = A | B;
    wire [31:0] shl1_res = {A[30:0], 1'b0};

    always @(*) begin
        Cout = 1'b0;
        case (op)
            3'b000: begin // ADD
                Y    = addsub_res;
                Cout = addsub_cout;
            end
            3'b001: begin // SUB
                Y    = addsub_res;
                Cout = addsub_cout; // no-borrow style carry
            end
            3'b010: begin // AND
                Y = and_res;
            end
            3'b011: begin // OR
                Y = or_res;
            end
            3'b100: begin // SHL
                Y = shl1_res;
            end
            default: begin
                Y = 32'h0000_0000;
            end
        endcase
    end

    always @(*) begin
        Zero = (Y == 32'h0000_0000);
    end

endmodule
