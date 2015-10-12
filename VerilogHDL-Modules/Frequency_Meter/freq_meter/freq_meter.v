`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		www.CircuitValley.com	
// Engineer: 		 Gaurav Singh , gauravsingh@circuitvalley.com
// 
// Create Date:    20:23:10 10/05/2015 
// Design Name:    freq_meter
// Module Name:    timer 
// Project Name:    freq_meter
// Target Devices:  XC3S250E (WireFrame board)
// Tool versions:   Xilinx ISE 14.2
// Description:     
//							
// Dependencies: 		none
//
// Revision: 	
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module freq_meter(
    clk,
	 segment,
    digit,
	 sigin
	 
    );
output [7:0]segment;
output [7:0]digit;
input clk;
input sigin;

//reg [7:0]segment=8'b00;
reg [7:0]digit = 8'b01;
reg [31:0]freq;
wire [3:0]dispdata[7:0];
reg [2:0]digit_scan;
reg [23:0]disp_scanner;

reg [31:0]gatecounter;
reg gate;
wire [31:0]count;
bcd_to_seg s1(dispdata[digit_scan],segment);
bin_to_bcd b1(freq,dispdata[0],dispdata[1],dispdata[2],dispdata[3],dispdata[4],dispdata[5],dispdata[6],dispdata[7]);

counter c1(gate,sigin,count);
always @(posedge clk )
begin 

			

				if(!gatecounter)
				begin
				
				gatecounter = 'd25000000;
				gate =0;
				freq = count;
				
				end // if  !gatecounter end
				else
				begin
				gate =1;
				end
			
				gatecounter = gatecounter - 1'b1;
				
				
					disp_scanner = disp_scanner +1'b1;				
				if(disp_scanner=='d50000)
				begin
				digit = {digit[6:0],digit[7]};
				digit_scan=digit_scan+'d1;
			   disp_scanner = 0;
				end

end // always end

endmodule