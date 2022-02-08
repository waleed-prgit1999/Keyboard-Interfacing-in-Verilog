`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:30:56 12/06/2021 
// Design Name: 
// Module Name:    Scancode_to_7segment 
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
module Scancode_to_7segment(
		input [7:0] scan,
		output reg [6:0] seg
		
	);
always@(*)
begin
	case(scan)
			8'b00010110: seg = 7'b1111001;
			8'b00011110: seg = 7'b0100100;
			8'b00100110: seg = 7'b0110000;
			8'b00100101: seg = 7'b0011001;
			8'b00101110: seg = 7'b0010010;
			8'b00110110: seg = 7'b0000010;
			8'b00111101: seg = 7'b1111000;
			8'b00111110: seg = 7'b0000000;
			8'b01000110: seg = 7'b0010000;
			8'b01000101: seg = 7'b1000000;
			default: seg = 7'b0000110;
			
	endcase
end

endmodule
