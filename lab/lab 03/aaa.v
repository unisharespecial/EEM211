////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2003 Xilinx, Inc.
// All Right Reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 7.1i
//  \   \         Application : sch2verilog
//  /   /         Filename : aaa.vf
// /___/   /\     Timestamp : 10/18/2006 15:22:52
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:/Xilinx/bin/nt/sch2verilog.exe -intstyle ise -family spartan2 -w aaa.sch aaa.vf
//Design Name: aaa
//Device: spartan2
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module aaa(A, 
           B, 
           C, 
           F);

    input A;
    input B;
    input C;
   output F;
   
   wire XLXN_4;
   wire XLXN_6;
   wire XLXN_8;
   
   AND2 XLXI_1 (.I0(B), 
                .I1(A), 
                .O(XLXN_4));
   AND2 XLXI_2 (.I0(C), 
                .I1(XLXN_8), 
                .O(XLXN_6));
   INV XLXI_4 (.I(B), 
               .O(XLXN_8));
   OR2 XLXI_5 (.I0(XLXN_6), 
               .I1(XLXN_4), 
               .O(F));
endmodule
