`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    15:50:52 11/13/06
// Design Name:    
// Module Name:    fourbitscarryahead
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
module PCgen(s,c,x,y);
input x,y;
output s,c;
xor #(17) (s,x,y);
and #(14) (c,x,y);
endmodule

module carrygen(s,c,x,y,z);
input x,y,z;
output s,c;
wire w1,w2,w3;
PCgen pc1(w1,w2,x,y);
PCgen pc2(s,w3,w1,z);
or #(15) g1(c,w2,w3);
endmodule

module fourbitscarrylookahead(LD,BTN0,SW);
input [0:7] SW;
input BTN0;
output [0:4] LD;
wire c1,c2,c3,s0,s1,s2,s3,p0,p1,p2,p3;

carrygen ca1(s0,c1,SW[4],SW[0],BTN0);
carrygen ca2(s1,c2,SW[5],SW[1],c1);
carrygen ca3(s2,c3,SW[6],SW[2],c2);
carrygen ca4(s3,LD[4],SW[7],SW[3],c3);
xor #(17) x1(p0,SW[4],SW[0]);
xor #(17) x2(p1,SW[5],SW[1]);
xor #(17) x3(p2,SW[6],SW[2]);
xor #(17) x4(p3,SW[7],SW[3]);
xor #(17) x5(LD[3],c3,p3);
xor #(17) x6(LD[2],c2,p2);
xor #(17) x7(LD[1],c1,p1);
xor #(17) x8(LD[0],BTN0,p0);
endmodule


