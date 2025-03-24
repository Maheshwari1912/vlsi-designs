Verilog Code (and_gate.sv)
module and_gate (
    input logic A,
    input logic B,
    output logic Y
);
    assign Y = A & B;
endmodule

 Testbench (and_gate_tb.sv)
`timescale 1ns/1ps
module and_gate_tb;

    logic A, B;
    logic Y;

    and_gate dut ( 
        .A(A), 
        .B(B), 
        .Y(Y) 
    );
    initial begin
        $monitor("A=%b B=%b | Y=%b", A, B, Y);

        // Apply test vectors
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end
endmodule


Verilog Code (or_gate.sv)
module or_gate (
    input logic A,
    input logic B,
    output logic Y
);
    assign Y = A | B;
endmodule

Testbench (or_gate_tb.sv)
`timescale 1ns/1ps
module or_gate_tb;
    logic A, B;
    logic Y;

    or_gate dut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        $monitor("A=%b B=%b | Y=%b", A, B, Y);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end
endmodule



Verilog Code (not_gate.sv)
module not_gate (
    input logic A,
    output logic Y
);
    assign Y = ~A;
endmodule

Testbench (not_gate_tb.sv)
`timescale 1ns/1ps
module not_gate_tb;
    logic A;
    logic Y;
    not_gate dut (
        .A(A),
        .Y(Y)
    );

    initial begin
        $monitor("A=%b | Y=%b", A, Y);
        A = 0; #10;
        A = 1; #10;
        $finish;
    end
endmodule



Verilog Code (xor_gate.sv)
module xor_gate (
    input logic A,
    input logic B,
    output logic Y
);
    assign Y = A ^ B;
endmodule

Testbench (xor_gate_tb.sv)
`timescale 1ns/1ps
module xor_gate_tb;
    logic A, B;
    logic Y;

    xor_gate dut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        $monitor("A=%b B=%b | Y=%b", A, B, Y);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end
endmodule



Verilog Code (nand_gate.sv)
module nand_gate (
    input logic A,
    input logic B,
    output logic Y
);
    assign Y = ~(A & B);
endmodule
Testbench (nand_gate_tb.sv)
`timescale 1ns/1ps
module nand_gate_tb;
    logic A, B;
    logic Y;

    nand_gate dut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        $monitor("A=%b B=%b | Y=%b", A, B, Y);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end
endmodule




Verilog Code (nor_gate.sv)
module nor_gate (
    input logic A,
    input logic B,
    output logic Y
);
    assign Y = ~(A | B);
endmodule

Testbench (nor_gate_tb.sv)
`timescale 1ns/1ps
module nor_gate_tb;
    logic A, B;
    logic Y;

    nor_gate dut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        $monitor("A=%b B=%b | Y=%b", A, B, Y);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end
endmodule



Verilog Code (xnor_gate.sv)
module xnor_gate (
    input logic A,
    input logic B,
    output logic Y
);
    assign Y = ~(A ^ B);
endmodule

Testbench (xnor_gate_tb.sv)
`timescale 1ns/1ps
module xnor_gate_tb;
    logic A, B;
    logic Y;

    xnor_gate dut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        $monitor("A=%b B=%b | Y=%b", A, B, Y);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end
endmodule

