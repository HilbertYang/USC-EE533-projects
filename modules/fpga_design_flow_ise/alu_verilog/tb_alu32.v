`timescale 1ns/1ns

module alu32_tb;

  reg  [31:0] A;
  reg  [31:0] B;
  reg  [2:0]  op;
  wire [31:0] Y;
  wire        Cout;
  wire        Zero;

  // DUT
  alu32 dut (
    .A(A), .B(B), .op(op),
    .Y(Y), .Cout(Cout), .Zero(Zero)
  );

  initial begin
    // Initialize inputs
    A = 0; B = 0; op = 3'b000;
    #20;

    // ADD
    A = 32'd10; B = 32'd5; op = 3'b000; #20;

    // SUB
    A = 32'd10; B = 32'd5; op = 3'b001; #20;

    // AND
    A = 32'h0000_F0F0; B = 32'h0000_0FF0; op = 3'b010; #20;

    // OR
    A = 32'h0000_F0F0; B = 32'h0000_0FF0; op = 3'b011; #20;

    // SHL
    A = 32'h0000_0003; B = 0; op = 3'b100; #20;

    // Zero flag
    A = 0; B = 0; op = 3'b000; #20;

    $finish;
  end

endmodule
