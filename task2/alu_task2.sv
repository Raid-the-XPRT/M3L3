`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 04:28:05 AM
// Design Name: 
// Module Name: alu_task2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_task2(
    input [3:0]a,
    input [3:0]b,
    input [1:0]alu_op,
    input cin,
    output logic [3:0]out
    );
    
    logic [3:0]res;
    fourBitAdderSubstractor_toProgram fas(.a(a),.b(b),.m(alu_op[0]),.sum(res));
    
    always@ (*)
    begin
        if (~alu_op[1])  out=res;
        else if (alu_op[0])
             out = a&b;
        else
            out = a<<b;
    end
endmodule