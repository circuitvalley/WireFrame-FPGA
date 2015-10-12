`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:57:59 10/12/2015 
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
module counter(rst, clk, count);
// TITLE 'Divide-by-20 Counter with enables'
// enable CEP is a clock enable only
// enable CET is a clock enable and
// enables the TC output
// a counter using the Verilog language
 
parameter size = 33;

 
input rst; // These inputs/outputs represent
input clk; // connections to the module.
 
output [size-1:0] count;
 
reg [size-1:0] count=0; // Signals assigned
                      // within an always
                      // (or initial)block
                      // must be of type reg
 

 
// The always statement below is a parallel
// execution statement that
// executes any time the signals
// rst or clk transition from low to high 
always @ (posedge clk or negedge rst )
    begin
      if (!rst) // This causes reset of the cntr
		count = 0;
     else if(count<32'hFFFFFFFF)
	  begin
				count = count + 1'b1;
			
	  end
	  
	
end
	 
	

endmodule