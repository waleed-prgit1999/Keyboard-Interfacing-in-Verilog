`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:30:11 10/24/2021 
// Design Name: 
// Module Name:    bcd_to_7seg_converter 
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
module bcd_to_7seg_converter(
input [3:0]bcd,
output reg [6:0]segreg   
	);
always@(bcd)
begin
case (bcd)		//Common anode combinations
				0 : segreg = 7'b0000001;
            1 : segreg = 7'b1001111;
            2 : segreg = 7'b0010010;
            3 : segreg = 7'b0000110;
            4 : segreg = 7'b1001100;
            5 : segreg = 7'b0100100;
            6 : segreg = 7'b0100000;
            7 : segreg = 7'b0001111;
            8 : segreg = 7'b0000000;
            9 : segreg = 7'b0000100;
            default : segreg = 7'b1111111; 
endcase
end

endmodule
