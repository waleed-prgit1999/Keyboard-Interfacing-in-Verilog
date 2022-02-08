`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:15 10/03/2021 
// Design Name: 
// Module Name:    my_BCD_converter 
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
module my_BCD_converter #(parameter n=14)(
    input [n-1:0]In,
    output reg [3:0]O0,
    output reg [3:0]O1,
	 output reg [3:0]O2,
	 output reg [3:0]O3
    );
	 reg [n+15:0]Cont;
always @ (In)
begin
Cont[n-1:0] = In;
Cont[n+15:n] = 0;

repeat(n)
begin

if(Cont[n+3:n] >= 5 )
	begin 
			Cont[n+3:n] = Cont[n+3:n] + 3; 
	end

if(Cont[n+7:n+4] >= 5 )
	begin 
			Cont[n+7:n+4] = Cont[n+7:n+4] + 3; 
	end
if(Cont[n+11:n+8] >= 5 )
	begin 
			Cont[n+11:n+8] = Cont[n+11:n+8]+ 3; 
	end
if(Cont[n+15:n+12] >= 5 )
	begin 
			Cont[n+15:n+12]= Cont[n+15:n+12]+ 3; 
	end
Cont = Cont<<1;
end

O0 = Cont[n+3:n];
O1 = Cont[n+7:n+4];
O2 = Cont[n+11:n+8];
O3 = Cont[n+15:n+12];
end

endmodule
