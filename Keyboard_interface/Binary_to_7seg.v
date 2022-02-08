`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:21:10 10/25/2021 
// Design Name: 
// Module Name:    Binary_to_7seg 
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
module Binary_to_7seg #(parameter bits=14)(
    input [bits-1:0]In,
	 output [6:0]S0,S1,S2,S3
	 );
	 wire [3:0] O0,O1,O2,O3;
my_BCD_converter #(.n(bits)) u(In,O0,O1,O2,O3);
bcd_to_7seg_converter v0(O0,S0);
bcd_to_7seg_converter v1(O1,S1);
bcd_to_7seg_converter v2(O2,S2);
bcd_to_7seg_converter v3(O3,S3);
endmodule
