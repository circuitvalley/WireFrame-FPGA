
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:35 10/12/2015 
// Design Name: 
// Module Name:    bcd_to_seg 
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
module bcd_to_seg (
    bcd,
	 segment
    );
	
output [6:0]segment;
input [3:0]bcd;
reg [6:0]segment;
always @(bcd)
begin
case(bcd) 
4'b0000:begin				//0
segment[0] = 1'b1; //a
segment[1] = 1'b1; //b
segment[2] = 1'b1; //c
segment[3] = 1'b1; //d
segment[4] = 1'b1; //e
segment[5] = 1'b1; //f
segment[6] = 1'b0; //g
end
4'b0001:begin				//1
segment[0] = 1'b0; //a
segment[1] = 1'b1; //b
segment[2] = 1'b1; //c
segment[3] = 1'b0; //d
segment[4] = 1'b0; //e
segment[5] = 1'b0; //f
segment[6] = 1'b0; //g
end
4'b0010:begin				//2
segment[0] = 1'b1; //a
segment[1] = 1'b1; //b
segment[2] = 1'b0; //c
segment[3] = 1'b1; //d
segment[4] = 1'b1; //e
segment[5] = 1'b0; //f
segment[6] = 1'b1; //g
end
4'b0011:begin				//3
segment[0] = 1'b1; //a
segment[1] = 1'b1; //b
segment[2] = 1'b1; //c
segment[3] = 1'b1; //d
segment[4] = 1'b0; //e
segment[5] = 1'b0; //f
segment[6] = 1'b1; //g
end
4'b0100:begin				//4
segment[0] = 1'b0; //a
segment[1] = 1'b1; //b
segment[2] = 1'b1; //c
segment[3] = 1'b0; //d
segment[4] = 1'b0; //e
segment[5] = 1'b1; //f
segment[6] = 1'b1; //g
end
4'b0101:begin				//5
segment[0] = 1'b1; //a
segment[1] = 1'b0; //b
segment[2] = 1'b1; //c
segment[3] = 1'b1; //d
segment[4] = 1'b0; //e
segment[5] = 1'b1; //f
segment[6] = 1'b1; //g
end
4'b0110:begin				//6
segment[0] = 1'b1; //a
segment[1] = 1'b0; //b
segment[2] = 1'b1; //c
segment[3] = 1'b1; //d
segment[4] = 1'b1; //e
segment[5] = 1'b1; //f
segment[6] = 1'b1; //g
end
4'b0111:begin				//7
segment[0] = 1'b1; //a
segment[1] = 1'b1; //b
segment[2] = 1'b1; //c
segment[3] = 1'b0; //d
segment[4] = 1'b0; //e
segment[5] = 1'b0; //f
segment[6] = 1'b0; //g
end
4'b1000:begin				//8
segment[0] = 1'b1; //a
segment[1] = 1'b1; //b
segment[2] = 1'b1; //c
segment[3] = 1'b1; //d
segment[4] = 1'b1; //e
segment[5] = 1'b1; //f
segment[6] = 1'b1; //g
end
4'b1001:begin				//9
segment[0] = 1'b1; //a
segment[1] = 1'b1; //b
segment[2] = 1'b1; //c
segment[3] = 1'b1; //d
segment[4] = 1'b0; //e
segment[5] = 1'b1; //f
segment[6] = 1'b1; //g
end
4'b1010:begin				//A
segment[0] = 1'b1; //a
segment[1] = 1'b1; //b
segment[2] = 1'b1; //c
segment[3] = 1'b0; //d
segment[4] = 1'b1; //e
segment[5] = 1'b1; //f
segment[6] = 1'b1; //g
end
4'b1011:begin				//B
segment[0] = 1'b0; //a
segment[1] = 1'b0; //b
segment[2] = 1'b1; //c
segment[3] = 1'b1; //d
segment[4] = 1'b1; //e
segment[5] = 1'b1; //f
segment[6] = 1'b1; //g
end
4'b1100:begin				//C
segment[0] = 1'b1; //a
segment[1] = 1'b0; //b
segment[2] = 1'b0; //c
segment[3] = 1'b1; //d
segment[4] = 1'b1; //e
segment[5] = 1'b1; //f
segment[6] = 1'b0; //g
end
4'b1101:begin				//D
segment[0] = 1'b0; //a
segment[1] = 1'b1; //b
segment[2] = 1'b1; //c
segment[3] = 1'b1; //d
segment[4] = 1'b1; //e
segment[5] = 1'b0; //f
segment[6] = 1'b1; //g
end
4'b1110:begin				//E
segment[0] = 1'b1; //a
segment[1] = 1'b0; //b
segment[2] = 1'b0; //c
segment[3] = 1'b1; //d
segment[4] = 1'b1; //e
segment[5] = 1'b1; //f
segment[6] = 1'b1; //g
end
4'b1111:begin				//F
segment[0] = 1'b1; //a
segment[1] = 1'b0; //b
segment[2] = 1'b0; //c
segment[3] = 1'b0; //d
segment[4] = 1'b1; //e
segment[5] = 1'b1; //f
segment[6] = 1'b1; //g
end


endcase

end
//assign segment[0]=  ((!bcd[0]) && (!bcd[2]))  || (bcd[0] && bcd[2]) || bcd[1] || bcd[3];
//assign segment[1]=  (!bcd[2])  || (bcd[0] && bcd[1]) || ((!bcd[0]) && (!bcd[1]));
//assign segment[2]=  (bcd[0])  || (!bcd[1]) ||  (bcd[2]);

//assign segment[3]=  ((!bcd[0]) && (!bcd[2])) || ((bcd[1]) && (!bcd[2]))   || (bcd[3]) ||  ((!bcd[0]) && (bcd[1])) || ((bcd[0]) && (!bcd[1]) && (bcd[2]));
//assign segment[4]=  ((!bcd[0]) && (!bcd[2]))   || ((!bcd[0]) && (bcd[1]));
//assign segment[5]=  (bcd[3])||((!bcd[0]) && (bcd[2]))   || ((!bcd[0]) && (!bcd[1])) ||((!bcd[1]) && (bcd[2])) ;
//assign segment[6]=  ((!bcd[0]) && (bcd[2])) || ((!bcd[1]) && (bcd[2])) || (bcd[3]) || ((bcd[1]) && (!bcd[2]))  ;
/*
 f(a) = !A!C + AC + B + D
f(b) = !C + AB + !A!B
f(c) = A + !B + C
f(d) = !A!C + B!C + D + !AB + A!BC
f(e) = !A!C + !AB

f(f) = D +!AC + !A!B + !BC
f(g) = !AC + !BC + D + B!C
*/

endmodule
