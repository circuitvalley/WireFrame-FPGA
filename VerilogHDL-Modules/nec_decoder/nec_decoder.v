`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  www.circuitvalley.com
// Engineer: gauravsingh 
// 
// Create Date:    20:21:42 10/05/2015 
// Design Name: 
// Module Name:    nec_decoder 
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
module nec_decoder (
    IR,
    clk,
	 address,
	 data,
	 dataready,
	 repeat_code
    );
	
parameter [15:0]TICKS11ms= 11000;
parameter [15:0]TICKS8ms = 8000;
parameter [15:0]TICKS5o5ms = 5500;
parameter [15:0]TICKS3ms = 3000;
parameter [15:0]TICKS1o9ms = 1900;
parameter [15:0]TICKS2o7ms = 2700;
parameter [15:0]TICKS2o3ms = 2300;
parameter [15:0]TICKS0o2ms = 200;
	 
	input IR;
   input clk;
	output [7:0]address;
	output [7:0]data;
	output dataready;
	output repeat_code;
reg dataready;
reg repeat_code;
wire [15:0]count;
reg [15:0]tdiff;
reg [7:0]address;
reg [7:0]data;

reg [15:0]PREPULSE=TICKS8ms;
reg [15:0]TIMEOUT=TICKS11ms;
reg  [31:0]rxbuffer;
reg [7:0]necpoj=0;
reg [4:0]prescale=0;
reg [23:0]outtimer;
reg clear;
reg [1:0]last;
timer t0(clear,clk,count);
always @(posedge clk  )
begin 
			prescale = prescale +1'b1;				
			if(prescale=='d10)
				begin
				clear=1'b0;
			   prescale = 0;
				end
				
				outtimer=outtimer + 1'b1;
				if(outtimer=='d5500000 )
				begin
				dataready=1'b0;
				repeat_code=1'b0;
				outtimer =0;
				end
				else if(outtimer=='d2500000)
				begin
				repeat_code=1'b0;
				end
			
if( last[0] ^ last[1] )
begin
tdiff =count;


if ((tdiff>PREPULSE) && (tdiff<TIMEOUT) )
begin
		if((necpoj=='d1) || (necpoj=='d2))					// when we are hear it means 9ms leding pulse has ended and now we are necpoj=1 or necpoj=2
		begin
		
			if((IR) && (necpoj=='d1))
			begin

			necpoj=necpoj+1'b1;
			TIMEOUT 	= TICKS5o5ms;  			// timeout for 3rd pulse 5.5ms	
			PREPULSE = TICKS1o9ms;				// PREPULSE for 3rd pulse 3ms
			end
			else if((!IR)&& (necpoj =='d2))
			begin
				if((tdiff>TICKS1o9ms)&&(tdiff<TICKS2o7ms) )		//check if it is a repeat code 
				begin
				if(dataready)
				begin
				dataready=1'b1;
				repeat_code=1'b1;
				outtimer =0; 
				end
				necpoj=0;				
				TIMEOUT 	= TICKS11ms;  			// yes it is 
				PREPULSE   	= TICKS8ms; 	
				end
				else
				begin
				necpoj    =necpoj+1'b1;
				TIMEOUT 	= TICKS2o3ms;  			// now data starts so timeout is 2.3ms
				PREPULSE = TICKS0o2ms; 
				end
			end
			else								// this block handle the conditon if any error occur after the completing the pre pulses 
			begin
			
			necpoj = 0;							//reset the state machine 
			TIMEOUT 	=  	TICKS11ms;
			PREPULSE = 	TICKS8ms;
			end
	end
	else if(necpoj>'d2 && necpoj< 'd70)							//now we are picking the data 	
	begin		
		
			necpoj=necpoj+1'b1;					 		//necpoj sill inrement on every edge 	

				if(necpoj[0])					// here we check the if necpoj is an odd number because when necpoj goes greater then 3 then 
									    		//necpoj will always be and odd value when a single bit tranmission is over  
				begin
					rxbuffer=rxbuffer<<1;		//shift the buffer 
					
					if(tdiff>1150)				//we are here means we just recevied the edge of finished tranmission of a bit 
												// so if last edge was more than 1.24 ms then the bit which is just over is one else it is zero 
					begin
					rxbuffer[0] = 1'h1;
					end
					else
					begin
					rxbuffer[0] =  1'h0;
					end
			
				end
		
			if(necpoj >66)						// we have reached (Leading pulse 2 +address 16+~address16+ command 16+ ~command 16+ last final burst first edge 1)=67th edge of the message frame means the date tranmission is now over 
			begin
			
			if((!(rxbuffer[31:24] & rxbuffer[23:16])) & (!(rxbuffer[15:8] & rxbuffer[7:0])))		// check weather the received data is vaild or not
					begin
					data 		= 	rxbuffer[15:8];
					address = rxbuffer[31:24];
					outtimer =0;
					dataready =1;
					end
					else
					begin
					data =8'b00;
					dataready=0;
					end
			rxbuffer=0;									//clear the buffer	
			TIMEOUT 	=  	TICKS11ms;					// weather we received the vaild data or not we have to reset the state machine 
			PREPULSE = 	TICKS8ms;
			necpoj=0;
			end

	end
	
	else 
	begin	
	necpoj=0;
	TIMEOUT 	=	TICKS11ms;							// some error occured reset state machine 
	PREPULSE =	TICKS8ms;
	end
end
else
begin
	if(IR)				//we are here means that after a longtimeout or PREPULSE we just detect a pulse which may be the start of 9ms pulse 
	necpoj = 0;				// no it's not start of 9ms pulse 
	else 
	necpoj = 'd1;				// yes it could be the start of 9ms pulse
	TIMEOUT =  TICKS11ms;		//default timing  
	PREPULSE = TICKS8ms;
end
prescale=0;
clear=1'b1; 
//clear the timer

end
last= {last[0],IR};

end

endmodule