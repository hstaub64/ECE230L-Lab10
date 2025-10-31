module simple_8_mux(
    input [1:0] Sel,
    input [7:0]A, 
    input [7:0]B, 
    input [7:0]C, 
    input [7:0]D, 
    input Enable,
    output [7:0]Y
);
    assign Y = (Enable && Sel==2'b00) ? A:
               (Enable && Sel==2'b01) ? B:
               (Enable && Sel==2'b10) ? C : D;
endmodule