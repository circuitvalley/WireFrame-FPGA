`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:23:10 10/05/2015 
// Design Name: 
// Module Name:    timer 
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
module timer(rst, clk, count);
// a counter 

parameter size = 33;

 
input rst; // These inputs/outputs represent
input clk; // connections to the module.
 
output [size-1:0] count;
 
reg [size-1:0] count; // Signals assigned
                      // within an always
                      // (or initial)block
                      // must be of type reg
 

 
// The always statement below is a parallel
// execution statement that
// executes any time the signals
// rst or clk transition from low to high
reg [7:0] prescale; 
always @ (posedge clk or posedge rst )
    begin
      if (rst) // This causes reset of the cntr
		count = 0;
     else if(count<32'h000FFFF)
	  begin
			prescale = prescale +1'b1;
			if(prescale=='d50)
				begin
				count = count + 1'b1;
				prescale = 0;
				end
	  end
	  
	
end

endmodule