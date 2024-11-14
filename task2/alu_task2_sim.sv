`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 11:18:06 PM
// Design Name: 
// Module Name: alu_task2_sim
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


module alu_task2_sim;
logic [3:0]a;
logic [3:0]b;
logic [1:0]op;
logic cin;
logic [3:0]resOut;

alu_task2 at2(.a(a),.b(b),.alu_op(op),.cin(cin),.out(resOut));
initial begin
$display("TIME\t a value\t b value\t OP value\t cin\t result");
    a=  1'b0000;
    b=  1'b0000;
    op= 2'b00;
    cin=1'b0;
#5;
    $display("%0\t\t %h\t\t\t %h\t\t\t %b\t\t\t %b\t\t\t %b",$time,a,b,op,cin,resOut);    
    a=  1'b0000;
    b=  1'b0001;
    op= 2'b00;
    cin=1'b0;
#5;
    $display("%0\t\t %h\t\t\t %h\t\t\t %b\t\t\t %b\t\t\t %b",$time,a,b,op,cin,resOut);
    a=  4'b0100;
    b=  4'b0001;
    op= 2'b01;
    cin=1'b0;
#5;
    $display("%0\t\t %h\t\t\t %h\t\t\t %b\t\t\t %b\t\t\t %b",$time,a,b,op,cin,resOut);
    a=  4'b0110;
    b=  4'b0001;
    op= 2'b10;
    cin=1'b0;
#5;
    $display("%0\t\t %h\t\t\t %h\t\t\t %b\t\t\t %b\t\t\t %b",$time,a,b,op,cin,resOut);
    a=  4'b0110;
    b=  4'b0011;
    op= 2'b11;
    cin=1'b0;
#5
    $display("%0\t\t %h\t\t\t %h\t\t\t %b\t\t\t %b\t\t\t %b",$time,a,b,op,cin,resOut);  




$finish;
end
endmodule
