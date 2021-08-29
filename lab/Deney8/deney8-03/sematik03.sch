VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_73
        SIGNAL XLXN_74
        SIGNAL XLXN_79
        SIGNAL XLXN_87
        SIGNAL XLXN_88
        SIGNAL Q(2:0)
        SIGNAL mclk
        SIGNAL XLXN_89
        SIGNAL Q(0)
        SIGNAL Q(1)
        SIGNAL XLXN_92
        SIGNAL XLXN_93
        SIGNAL Q(2)
        SIGNAL XLXN_95
        SIGNAL XLXN_96
        SIGNAL XLXN_98
        SIGNAL XLXN_99
        SIGNAL XLXN_100
        SIGNAL XLXN_102
        SIGNAL XLXN_105
        SIGNAL XLXN_106
        PORT Output Q(2:0)
        PORT Input mclk
        BEGIN BLOCKDEF fjkc
            TIMESTAMP 2001 2 2 12 52 25
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -320 64 -320 
            LINE N 384 -256 320 -256 
            LINE N 0 -256 64 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 64 -384 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF pulldown
            TIMESTAMP 2002 3 20 16 43 42
            LINE N 64 -160 64 -128 
            LINE N 68 0 60 0 
            LINE N 76 -16 52 -16 
            LINE N 88 -32 40 -32 
            LINE N 64 -108 64 -128 
            LINE N 80 -104 64 -108 
            LINE N 48 -88 80 -104 
            LINE N 80 -72 48 -88 
            LINE N 48 -56 80 -72 
            LINE N 64 -48 48 -56 
            LINE N 64 -32 64 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF pullup
            TIMESTAMP 2002 3 20 16 41 31
            LINE N 64 -108 64 -128 
            LINE N 80 -104 64 -108 
            LINE N 48 -88 80 -104 
            LINE N 80 -72 48 -88 
            LINE N 48 -56 80 -72 
            LINE N 64 -48 48 -56 
            LINE N 64 -32 64 -48 
            LINE N 48 -56 64 -48 
            LINE N 80 -72 48 -56 
            LINE N 48 -88 80 -72 
            LINE N 80 -104 48 -88 
            LINE N 64 -108 80 -104 
            LINE N 64 0 64 -32 
            LINE N 96 -128 32 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_24 pulldown
            PIN O XLXN_105
        END BLOCK
        BEGIN BLOCK XLXI_22 fjkc
            PIN C XLXN_92
            PIN CLR XLXN_105
            PIN J XLXN_102
            PIN K XLXN_102
            PIN Q XLXN_93
        END BLOCK
        BEGIN BLOCK XLXI_21 fjkc
            PIN C XLXN_89
            PIN CLR XLXN_105
            PIN J XLXN_102
            PIN K XLXN_102
            PIN Q XLXN_92
        END BLOCK
        BEGIN BLOCK XLXI_20 fjkc
            PIN C mclk
            PIN CLR XLXN_105
            PIN J XLXN_102
            PIN K XLXN_102
            PIN Q XLXN_89
        END BLOCK
        BEGIN BLOCK XLXI_28 pullup
            PIN O XLXN_102
        END BLOCK
        BEGIN BLOCK XLXI_29 inv
            PIN I XLXN_89
            PIN O Q(0)
        END BLOCK
        BEGIN BLOCK XLXI_30 inv
            PIN I XLXN_92
            PIN O Q(1)
        END BLOCK
        BEGIN BLOCK XLXI_31 inv
            PIN I XLXN_93
            PIN O Q(2)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        IOMARKER 288 1264 mclk R180 28
        IOMARKER 592 2192 Q(2:0) R180 28
        BEGIN BRANCH Q(2:0)
            WIRE 592 2192 1136 2192
            WIRE 1136 2192 2240 2192
            WIRE 2240 2192 3120 2192
            WIRE 1136 1952 1136 2192
            WIRE 2240 1952 2240 2192
            WIRE 3120 1952 3120 2192
        END BRANCH
        INSTANCE XLXI_24 224 1840 R0
        BEGIN BRANCH mclk
            WIRE 288 1264 288 1280
            WIRE 288 1280 544 1280
        END BRANCH
        BUSTAP 3120 1952 3120 1856
        BUSTAP 2240 1952 2240 1856
        BUSTAP 1136 1952 1136 1856
        INSTANCE XLXI_22 2544 1408 R0
        INSTANCE XLXI_21 1552 1408 R0
        INSTANCE XLXI_20 544 1408 R0
        INSTANCE XLXI_28 256 656 R0
        INSTANCE XLXI_29 1104 1472 R90
        INSTANCE XLXI_30 2208 1488 R90
        INSTANCE XLXI_31 3088 1488 R90
        BEGIN BRANCH XLXN_89
            WIRE 928 1152 1136 1152
            WIRE 1136 1152 1136 1280
            WIRE 1136 1280 1136 1472
            WIRE 1136 1280 1552 1280
        END BRANCH
        BEGIN BRANCH Q(0)
            WIRE 1136 1696 1136 1792
            WIRE 1136 1792 1136 1856
            BEGIN DISPLAY 1136 1797 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(1)
            WIRE 2240 1712 2240 1808
            WIRE 2240 1808 2240 1856
            BEGIN DISPLAY 2240 1811 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_92
            WIRE 1936 1152 2240 1152
            WIRE 2240 1152 2240 1280
            WIRE 2240 1280 2240 1488
            WIRE 2240 1280 2544 1280
        END BRANCH
        BEGIN BRANCH XLXN_93
            WIRE 2928 1152 3120 1152
            WIRE 3120 1152 3120 1488
        END BRANCH
        BEGIN BRANCH Q(2)
            WIRE 3120 1712 3120 1776
            WIRE 3120 1776 3120 1856
            BEGIN DISPLAY 3120 1783 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_102
            WIRE 320 656 320 768
            WIRE 320 768 320 1088
            WIRE 320 1088 544 1088
            WIRE 320 1088 320 1152
            WIRE 320 1152 544 1152
            WIRE 320 768 1408 768
            WIRE 1408 768 1408 1088
            WIRE 1408 1088 1552 1088
            WIRE 1408 1088 1408 1152
            WIRE 1408 1152 1552 1152
            WIRE 1408 768 1968 768
            WIRE 1968 768 1968 1088
            WIRE 1968 1088 2432 1088
            WIRE 2432 1088 2544 1088
            WIRE 2432 1088 2432 1152
            WIRE 2432 1152 2544 1152
        END BRANCH
        BEGIN BRANCH XLXN_105
            WIRE 288 1600 288 1680
            WIRE 288 1600 384 1600
            WIRE 384 1600 384 1760
            WIRE 384 1760 544 1760
            WIRE 544 1760 1552 1760
            WIRE 1552 1760 2432 1760
            WIRE 2432 1760 2544 1760
            WIRE 544 1376 544 1760
            WIRE 1552 1376 1552 1760
            WIRE 2544 1376 2544 1760
        END BRANCH
    END SHEET
END SCHEMATIC
