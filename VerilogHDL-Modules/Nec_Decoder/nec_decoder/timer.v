`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		www.CircuitValley.com	
// Engineer: 		 Gaurav Singh , gauravsingh@circuitvalley.com
// 
// Create Date:    20:23:10 10/05/2015 
// Design Name:    nec_decoder
// Module Name:    timer 
// Project Name:    nec_decoder
// Target Devices:  XC3S250E (WireFrame board)
// Tool versions:   Xilinx ISE 14.2
// Description:     the module implement a basic 16 bit timer ,1us /count at 25 Mhz input ,
//							adjust the prescaler to changed the frequency input
// Dependencies: 		none
//
// Revision: 	
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module timer(rst, clk, count);
// a counter 

parameter size = 16;
parameter CLOCK_INPUT=25000000; // in Hz
parameter PRESCALE= CLOCK_INPUT/1000000; // we need 1us count  

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
reg [4:0] prescale;  //5bits
always @ (posedge clk or posedge rst )
    begin
      if (rst) // This causes reset of the cntr
		count = 0;
     else if(count<16'hFFFF)
	  begin
			prescale = prescale +1'b1;
			if(prescale==PRESCALE)
				begin
				count = count + 1'b1;
				prescale = 0;
				end
	  end
	  
	
end

endmodule