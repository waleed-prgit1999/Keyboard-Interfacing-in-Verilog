`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:17:53 10/31/2021 
// Design Name: 
// Module Name:    mux_block 
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
module mux_block(
    input [6:0] S0,S1,S2,S3,
	 input clock,reset,
	 output reg [6:0] data,
	 output reg [3:0] control
	 );
reg [1:0] counter;

always @(posedge clock ,posedge reset)
begin
if(reset)
	begin
		counter = 2'b00;
	end
else
	begin
		case(counter)
			2'b00: begin data = S0; control = 4'b1110; end
			2'b01: begin data = S1; control = 4'b1101; end
			2'b10: begin data = S2; control = 4'b1011; end
			default : begin data = S3; control = 4'b0111; end
		endcase
	counter = counter + 2'b01;
	end
end
endmodule
