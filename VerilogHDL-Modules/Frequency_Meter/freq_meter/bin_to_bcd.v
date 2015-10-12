`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:58:46 10/12/2015 
// Design Name: 
// Module Name:    bin_to_bcd 
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
module bin_to_bcd(bin,ONES,TENS,HUNDREDS,TH,TENTH,HUNTH,MIL,TENMIL);

parameter BIN_N_bits=24;

input [26:0] bin;
output [3:0] ONES, TENS ,HUNDREDS ,TH,TENTH,HUNTH,MIL,TENMIL;
reg [3:0] ONES, TENS ,HUNDREDS ,TH,TENTH,HUNTH,MIL,TENMIL,HUNDMIL;
integer i;
always @(bin)
begin
	ONES=0; 
	TENS=0;	
	HUNDREDS=0;
	TH=0;
	TENTH=0;
	HUNTH=0;
	MIL=0; 
	TENMIL=0;
for(i=26;i>=0;i=i-1)  //26 bit binary value
begin
	if(HUNDMIL>=5)
	HUNDMIL =HUNDMIL +3;
	if(TENMIL>=5)
	TENMIL = TENMIL +3;
	if(MIL>=5)
	MIL=MIL+3;
	if(HUNTH>=5)
	HUNTH=HUNTH+3;
	if(TENTH>=5)
	TENTH=TENTH+3;
	if(TH>=5)
	TH=TH+3;
	if(HUNDREDS>=5)
	HUNDREDS=HUNDREDS+3;
	if(TENS>=5)
	TENS=TENS+3;
	if(ONES>=5)
	ONES =ONES+3;
	
	HUNDMIL = HUNDMIL <<1;
	HUNDMIL[0] =TENMIL[3];
	
	TENMIL = TENMIL <<1;
	TENMIL[0] = MIL[3];
	
	MIL = MIL <<1;
	MIL[0] = HUNTH[3];
	
	HUNTH = HUNTH <<1;
	HUNTH[0] = TENTH[3];
	
	TENTH = TENTH<<1;
	TENTH[0] = TH[3];
	
	TH= TH <<1;
	TH[0]= HUNDREDS [3];
	
	HUNDREDS = HUNDREDS<<1;
	HUNDREDS[0] = TENS[3];
	
	TENS = TENS <<1;
	TENS[0] = ONES[3];
	
	ONES = ONES <<1;
	ONES[0] = bin[i];
end //for loop end
end//always end

endmodule