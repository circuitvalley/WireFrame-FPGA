//////////////////////////////////////////////////////////////////////////////////
// Company: 		www.CircuitValley.com	
// Engineer: 		 Gaurav Singh , gauravsingh@circuitvalley.com
// 
// Create Date:    20:21:42 10/05/2015 
// Design Name: 	 WireFrame_first tst
// Module Name:    nec_decoder  
// Project Name: 	 nec_decoder 
// Target Devices: XC3S250E (WireFrame board)
// Tool versions:  Xilinx ISE 14.2
// Description:    the module implement IR nec protocol decoder, 
//						 with 25Mhz input clock, 
//						 
// Dependencies: 	 16bit timer module with reset, which give gives ouput 1us/count
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
	 dataready
    );
parameter CLOCK_INPUT=25000000; // in Hz
parameter OUT_TIME50ms=  1250000;  //for 25Mhz input
parameter OUT_TIME200ms= 5000000;

parameter [15:0]TICKS11ms= 11000;
parameter [15:0]TICKS8ms = 8000;
parameter [15:0]TICKS5o5ms = 5500;
parameter [15:0]TICKS3ms = 3000;
parameter [15:0]TICKS1o9ms = 1900;
parameter [15:0]TICKS2o7ms = 2700;
parameter [15:0]TICKS2o3ms = 2300;
parameter [15:0]TICKS1o2ms = 1200;
parameter [15:0]TICKS0o2ms = 200;

	input IR;
   input clk;
	output [7:0]address;
	output [7:0]data;
	output dataready;

reg dataready=0;

wire [15:0]elapsed_time;

reg [7:0]address=0;
reg [7:0]data=0;

reg [15:0]PREPULSE=TICKS8ms;
reg [15:0]TIMEOUT=TICKS11ms;
reg [31:0]rxbuffer=0;
reg [6:0]necpoj=0;

reg [1:0]cleaer_timer_prescale=0;
reg [23:0]outtimer=0;
reg clear=0;
reg [1:0]last=0;
timer t0(clear,clk,elapsed_time);
always @(posedge clk  )
begin 

	
	
				if(clear)
				begin
				clear=1'b0; // release the timer reset 
				end
		
		
		
		
				outtimer=outtimer + 1'b1;		//this code will maintain the data read pin high for a while after receiving the valid data 
				if(outtimer==OUT_TIME200ms )		// pin goes low automaically after 
				begin
				dataready=1'b0;
				outtimer =OUT_TIME50ms;
				end
				else if( outtimer==OUT_TIME50ms)  // this time is for repeate codes 
				begin
				dataready=1'b1;      
				end
		
		
		
if( last[0] ^ last[1] )
begin

		if ((elapsed_time>PREPULSE) && (elapsed_time<TIMEOUT) )
		begin

				if((necpoj=='d1) || (necpoj=='d2))									// when we are hear it means 9ms leding pulse has ended and now we are necpoj=1 or necpoj=2
				begin
				
						if((IR) && (necpoj=='d1))
							begin

							necpoj=necpoj+1'b1;
							TIMEOUT 	= TICKS5o5ms;  									// timeout for 3rd pulse 5.5ms	
							PREPULSE = TICKS1o9ms;										// PREPULSE for 3rd pulse 3ms
							end
					else if((!IR)&& (necpoj =='d2))
					begin
						if((elapsed_time>TICKS1o9ms)&&(elapsed_time<TICKS2o7ms) )		//check if it is a repeat code 
							begin
								if(dataready)
									begin
									dataready=1'b0;
									outtimer =0; 
									end
							necpoj=0;				
							TIMEOUT 	= TICKS11ms;  			// yes it is a repeat code  so expect new transmission or a repeat code
							PREPULSE   	= TICKS8ms; 	
							end
						else
							begin
							necpoj    =necpoj+1'b1;
							TIMEOUT 	= TICKS2o3ms;  									// now data starts so timeout is 2.3ms
							PREPULSE = TICKS0o2ms; 
							end
					end
					else																	// this block handle the conditon if any error occur after the completing the pre pulses 
					begin
					
					necpoj = 0;															//reset the state machine 
					TIMEOUT 	=  	TICKS11ms;
					PREPULSE = 	TICKS8ms;
					end
			end
			else if(necpoj>'d2 && necpoj< 'd70)									//now we are picking the data 	
			begin		
				
							necpoj=necpoj+1'b1;					 					//necpoj sill inrement on every edge 	

								if(necpoj[0])											// here we check the if necpoj is an odd number because when necpoj goes greater then 3 then 
																							//necpoj will always be and odd value when a single bit tranmission is over  
								begin
										rxbuffer=rxbuffer<<1;						//shift the buffer 
								
										if(elapsed_time>TICKS1o2ms)				//we are here means we just recevied the edge of finished tranmission of a bit 
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
cleaer_timer_prescale=0;
clear=1'b1; 
//clear the timer

end
last= {last[0],IR};

end

endmodule