`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Adnan Karaosmanoglu
//
// Create Date:    15:32:52 11/01/06
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
module andgate(y,a,b,c);
	input c,b,a ;
	output y ;
	assign y=(a&b&c);
endmodule

 module orgate(y,a,b,c,d);
	input a,b,c,d;
	output y ;
	assign y=(a|b|c|d);
endmodule

 module invgate(y,a);
	input a;
	output y;
	assign y=(~a);
endmodule


 module fadderstr(s,co,a,b,c);
	input a,b,c;
	output s,co;
	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;
	invgate i1(w1,a);
	invgate i2(w2,b);
	invgate i3(w3,c);
	andgate a0(w4,w3,a,b);
	andgate a1(w5,c,w1,b);
	andgate a2(w6,c,a,w2);
	andgate a3(w7,a,b,c);
	orgate o0(co,w4,w5,w6,w7);
	andgate a7(w8,w3,w1,b);
	andgate a4(w9,w3,a,w2);
	andgate a5(w10,c,w1,w2);
	andgate a6(w11,c,a,b);
	orgate o2(s,w8,w9,w10,w11);
endmodule

module fourbitadder2(ld0,ld1,ld2,ld3,ld4,btn0,sw0,sw4,sw1,sw5,sw2,sw6,sw3,sw7);
	input btn0,sw0,sw4,sw1,sw5,sw2,sw6,sw3,sw7;
	output ld0,ld1,ld2,ld3,ld4;
	wire w1,w2,w3;
	fadderstr f0(ld0,w1,sw0,sw4,btn0);
	fadderstr f1(ld1,w2,sw1,sw5,w1);
	fadderstr f2(ld2,w3,sw2,sw6,w2);
	fadderstr f3(ld3,ld4,sw3,sw7,w3);



endmodule
