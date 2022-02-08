`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:41:46 12/06/2021 
// Design Name: 
// Module Name:    serial_data_in 
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
module serial_data_in(
   input data,clock,reset,
	output reg [7:0]outdata
	);
reg [9:0] temp;
integer i;
always@(posedge reset,negedge clock)
begin
		if (reset)
			i = 0;
		else
			begin
				if (i <= 9)
					begin
						temp[i] = data;
						i= i+1;
					end
				else 
					begin
						if(temp [8:1] == 8'b11110000)
								begin
									outdata = outdata;
									i=0;
								end
						else
								begin
									outdata = temp[8:1];
									i=0;
								end
					end
			end
end
endmodule
