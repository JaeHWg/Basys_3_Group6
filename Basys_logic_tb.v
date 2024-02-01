`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2024 05:36:48 PM
// Design Name: 
// Module Name: Basys_logic_tb
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

module Basys_logic_tb();

reg [2:0] sw_r;
wire led_r;

Basys_logic dut1(
    .sw(sw_r[2:0]),
    .led(led_r)
);

initial
    begin
        #0 sw_r[2:0] =3'b000;
        #10 sw_r[2:0] =3'b001;
        #10 sw_r[2:0] =3'b010;
        #10 sw_r[2:0] =3'b100;
        #10 sw_r[2:0] =3'b011;
        #10 sw_r[2:0] =3'b110;
        #10 sw_r[2:0] =3'b111;
        #10 $stop;
    end     

endmodule
