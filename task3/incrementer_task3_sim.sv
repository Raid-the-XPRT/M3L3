`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 12:52:41 AM
// Design Name: 
// Module Name: incrementer_task3_sim
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


module incrementer_task3_sim;

logic [3:0]in;
logic [3:0]out;

incrementer_task3 it3(.out(out),.in(in));


initial begin
    $display("TIME\t in\t\t\t out");
    in=  4'b0000;
    #5
    $display("%0\t\t %b\t\t %b",$time,in,out);
    in=  4'b0011;
    #5
    $display("%0\t\t %b\t\t %b",$time,in,out);
    in=  4'b0101;
    #5
    $display("%0\t\t %b\t\t %b",$time,in,out);
    in=  4'b1000;
    #5
    $display("%0\t\t %b\t\t %b",$time,in,out);
    in=  4'b1110;
    #5
    $display("%0\t\t %b\t\t %b",$time,in,out);
    in=  4'b1111;
    #5
    $display("%0\t\t %b\t\t %b",$time,in,out);

$finish;
end
endmodule
