`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:23:11 12/06/2021 
// Design Name: 
// Module Name:    main_module 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module main_module(
    input clock,data,reset,
	 output [6:0]dataaa,
	 output [7:0] outdata,
	 output [3:0] control
	 );
	 wire [6:0] Seg;
serial_data_in sd1(data,clock,reset,outdata);
Scancode_to_7segment sc1(outdata,Seg);
assign control = 4'b1110;
assign dataaa = Seg;


endmodule
