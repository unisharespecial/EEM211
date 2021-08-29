`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    19:25:07 11/10/06
// Design Name:    
// Module Name:    fourbitscarrylookahead
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
module PGgen(Pi,Gi,A,B);

output Pi,Gi;
input A,B;
xor #(17)(Pi,A,B);
and #(14) (Gi,A,B);

endmodule

module carrygen (S,ea,Pi,Gi,cout);

output S,ea;
input Pi,Gi,cout;
wire w;

xor # (17) (S,Pi,cout);
and # (14) (w,Pi,cout);
or  # (15) (ea,Gi,w);

endmodule


module fourbitscarrylookahead (S,cout,A,B,cin);

output [3:0] S;
output cout;
input [3:0] A,B;
input cin;

wire P0,P1,P2,P3,G0,G1,G2,G3,C0,C1,C2,C3;

PGgen pg1 (P0,G0,A[0],B[0]);
PGgen pg2 (P1,G1,A[1],B[1]);
PGgen pg3 (P2,G2,A[2],B[2]);
PGgen pg4 (P3,G3,A[3],B[3]);

carrygen C6 (S[0],C1,P0,G0,cin);
carrygen C7 (S[1],C2,P1,G1,C1);
carrygen C8 (S[2],C3,P2,G2,C2);
carrygen C9 (S[3],cout,P3,G3,C3);

endmodule
