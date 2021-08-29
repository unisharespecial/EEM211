`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:		 Adnan Karaosmanoglu
//
// Create Date:    19:05:42 11/10/06
// Design Name:    
// Module Name:    fourbitadder
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module halfadder (S,C,a,b);
	input a,b;
	output S,C;
	xor #(17)(S,a,b);
	and #(14)(C,a,b);
endmodule

module tamtoplayici(S,C,a,b,cin);
	input a,b,cin;
	output S,C;
	wire S1,D1,D2;
	halfadder HA1 (S1,D1,a,b),
				 HA2 (S,D2,S1,cin);
	or #(15) g1(C,D2,D1);
endmodule

module fourbitadder (S,C,A,B,cin);
	input [3:0] A,B;
	input cin;
	output [3:0] S;
	output C;
	wire C1,C2,C3;
	tamtoplayici FA0(S[0],C1,A[0],B[0],cin),
				    FA1(S[1],C2,A[1],B[1],C1),
				    FA2(S[2],C3,A[2],B[2],C2),
				    FA3(S[3],C,A[3],B[3],C3);
endmodule
