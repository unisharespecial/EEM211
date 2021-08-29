`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    00:16:29 11/08/06
// Design Name:    
// Module Name:    fourbitadder2
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
module andgate (y,a,b,c);
	output y;
	input a,b,c;
	assign  y=a & b & c;
endmodule

module orgate (y,a,b,c);
	output y;
	input a,b,c;
	assign y=a | b | c;
endmodule

module invgate (y,a);
	output y;
	input a;
	assign y=~a;
endmodule

module fadderStr(s,co,a,b,c);
output s,co; 
input a,b,c;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17;
not g1(w1,c);
not g2(w2,a);
not g3(w3,b);
and g4(w4,a,b,w1);
and g5(w5,w2,b,c);
and g6(w6,a,w3,c);
and g7(w7,a,b,c);
or g8(co,w4,w5,w6,w7);
not g9(w8,a);
not g10(w9,c);
not g11(w10,b);
not g12(w11,c);
not g13(w12,a);
not g14(w13,b);
and g16(w14,w8,b,w9);
and g17(w15,a,w10,w11);
and g18(w16,w12,w13,c);
and g15(w17,a,b,c);
or g19(s,w14,w15,w16,w17);
endmodule 

module fourbitadder2 (LD0,LD1,LD2,LD3,LD4,SW0,SW1,SW2,SW3,SW4,SW5,SW6,SW7,BTN0);
	 output LD0,LD1,LD2,LD3,LD4;
	 input  SW0,SW1,SW2,SW3,SW4,SW5,SW6,SW7,BTN0;
	 wire W1,W2,W3,W4,W5,W6,W7,W8,W9;
	 fadderStr a1(LD0,W1,BTN0,SW0,SW4);
	 fadderStr a2(LD1,W2,W1,SW1,SW5);
	 fadderStr a3(LD2,W3,W2,SW2,SW6);
	 fadderStr a4(LD3,LD4,W3,SW3,SW7);
endmodule