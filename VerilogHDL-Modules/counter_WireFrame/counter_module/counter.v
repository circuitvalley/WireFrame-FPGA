//////////////////////////////////////////////////////////////////////////////////
// Company: 		www.CircuitValley.com	
// Engineer: 		 Gaurav Singh , gauravsingh@circuitvalley.com
// 
// Create Date:    22:37:55 07/29/2013 
// Design Name: 	 WireFrame_first tst
// Module Name:    counter 
// Project Name: 	 counter_wireframe
// Target Devices: XC3S250E (WireFrame board)
// Tool versions:  Xilinx ISE 14.2
// Description:    the module implement basic binary counter , 
//						 with 25Mhz input clock, only counter output bit 23,24,25 are routed to pins
//						 For wire frame board IO27 --> count23, IO29 --> count24, IO30--> count25 
// Dependencies: 	 none
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counter(
     rst,
     clk, 
     count 
    );

parameter size = 33;

 
input rst; // reset the counter 
input clk; // connected to WireFrame on board 25Mhz crystal.

 
output [size-1:0] count;
 
reg [size-1:0] count; // Signals assigned
                      // within an always
                      // (or initial)block
                      // must be of type reg
  

// The always statement below is a parallel
// execution statement that
// executes any time the signals
// rst or clk transition from low to high
 
always @ (posedge clk)
    begin
      if (!rst) // This causes reset of the cntr
		count = 0;
		 else
        count = count + 1'b1;
    end
	 
endmodule
