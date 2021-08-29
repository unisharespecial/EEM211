`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    14:29:51 11/01/06
// Design Name:    
// Module Name:    forbitadder1
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
module fadder(s,co,c,a,b);
	input c,a,b;
	output s,co;
	assign co=(~c&a&b)|(c&~a&b)|(c&a&~b)|(a&b&c);
	assign s=(~c&~a&b)|(~c&a&~b)|(c&~a&~b)|(c&a&b);
endmodule




module fourbitadder1(ld0,ld1,ld2,ld3,ld4,btn0,sw0,sw4,sw1,sw5,sw2,sw6,sw3,sw7);
	input btn0,sw0,sw4,sw1,sw5,sw2,sw6,sw3,sw7;
	output ld0,ld1,ld2,ld3,ld4;
	wire w1,w2,w3;
	fadder f0(ld0,w1,sw0,sw4,btn0);
	fadder f1(ld1,w2,sw1,sw5,w1);
	fadder f2(ld2,w3,sw2,sw6,w2);
	fadder f3(ld3,ld4,sw3,sw7,w3);
endmodule




