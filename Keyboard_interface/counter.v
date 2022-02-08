`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:22 10/25/2021 
// Design Name: 
// Module Name:    counter 
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
module counter #(parameter n=26, M=12500000)(
    input reset,clock,ud,
    output reg tc,
    output reg [n:0]count
     );
always @(posedge clock,posedge reset)
begin 
if(reset)
    begin
        count = 0;
        tc = 0;
    end 

else
    begin
        if(count != M)
        begin
            if(ud)
                    count = count + 1;
            
            else
                count = count - 1;
        end
        
        else
            begin
                tc = ~tc;
                count = 0;
            end
    end
end

endmodule

