VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL mclk
        SIGNAL XLXN_3
        SIGNAL Q(0)
        SIGNAL Q(2)
        SIGNAL Q(3)
        SIGNAL Q(1)
        SIGNAL Q(3:0)
        SIGNAL XLXN_19
        PORT Input mclk
        PORT Output Q(3:0)
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
        BEGIN BLOCK XLXI_2 fjkc
            PIN C mclk
            PIN CLR XLXN_3
            PIN J XLXN_19
            PIN K XLXN_19
            PIN Q Q(0)
        END BLOCK
        BEGIN BLOCK XLXI_3 fjkc
            PIN C Q(0)
            PIN CLR XLXN_3
            PIN J XLXN_19
            PIN K XLXN_19
            PIN Q Q(1)
        END BLOCK
        BEGIN BLOCK XLXI_4 fjkc
            PIN C Q(1)
            PIN CLR XLXN_3
            PIN J XLXN_19
            PIN K XLXN_19
            PIN Q Q(2)
        END BLOCK
        BEGIN BLOCK XLXI_5 fjkc
            PIN C Q(2)
            PIN CLR XLXN_3
            PIN J XLXN_19
            PIN K XLXN_19
            PIN Q Q(3)
        END BLOCK
        BEGIN BLOCK XLXI_6 pulldown
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_7 pullup
            PIN O XLXN_19
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_2 544 1392 R0
        INSTANCE XLXI_3 1280 1376 R0
        INSTANCE XLXI_4 1968 1360 R0
        INSTANCE XLXI_5 2640 1328 R0
        INSTANCE XLXI_6 320 1712 R0
        BEGIN BRANCH mclk
            WIRE 256 1264 544 1264
        END BRANCH
        IOMARKER 256 1264 mclk R180 28
        BEGIN BRANCH XLXN_3
            WIRE 384 1440 384 1552
            WIRE 384 1440 544 1440
            WIRE 544 1440 1264 1440
            WIRE 1264 1440 1968 1440
            WIRE 1968 1440 2640 1440
            WIRE 544 1360 544 1440
            WIRE 1264 1344 1280 1344
            WIRE 1264 1344 1264 1440
            WIRE 1968 1328 1968 1440
            WIRE 2640 1296 2640 1440
        END BRANCH
        BUSTAP 2416 1808 2416 1712
        BUSTAP 1040 1808 1040 1712
        BEGIN BRANCH Q(0)
            WIRE 928 1136 1040 1136
            WIRE 1040 1136 1040 1248
            WIRE 1040 1248 1040 1712
            WIRE 1040 1248 1280 1248
        END BRANCH
        BEGIN BRANCH Q(2)
            WIRE 2352 1104 2416 1104
            WIRE 2416 1104 2416 1200
            WIRE 2416 1200 2416 1712
            WIRE 2416 1200 2640 1200
        END BRANCH
        BUSTAP 3040 1792 3040 1696
        BEGIN BRANCH Q(3)
            WIRE 3024 1072 3040 1072
            WIRE 3040 1072 3040 1696
        END BRANCH
        BUSTAP 1776 1808 1776 1712
        BEGIN BRANCH Q(1)
            WIRE 1664 1120 1776 1120
            WIRE 1776 1120 1776 1232
            WIRE 1776 1232 1776 1712
            WIRE 1776 1232 1968 1232
        END BRANCH
        BEGIN BRANCH Q(3:0)
            WIRE 560 1936 560 1952
            WIRE 560 1952 1040 1952
            WIRE 1040 1808 1040 1936
            WIRE 1040 1936 1776 1936
            WIRE 1776 1936 2416 1936
            WIRE 2416 1936 3040 1936
            WIRE 1040 1936 1040 1952
            WIRE 1776 1808 1776 1936
            WIRE 2416 1808 2416 1936
            WIRE 3040 1792 3040 1936
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 336 736 336 800
            WIRE 336 800 336 1072
            WIRE 336 1072 336 1136
            WIRE 336 1136 544 1136
            WIRE 336 1072 544 1072
            WIRE 336 800 1104 800
            WIRE 1104 800 1104 816
            WIRE 1104 816 1808 816
            WIRE 1808 816 2496 816
            WIRE 2496 816 2496 1008
            WIRE 2496 1008 2640 1008
            WIRE 2496 1008 2496 1072
            WIRE 2496 1072 2640 1072
            WIRE 1808 816 1808 880
            WIRE 1808 880 1808 1040
            WIRE 1808 1040 1920 1040
            WIRE 1920 1040 1968 1040
            WIRE 1808 1040 1808 1104
            WIRE 1808 1104 1968 1104
            WIRE 1104 816 1104 928
            WIRE 1104 928 1104 1056
            WIRE 1104 1056 1104 1120
            WIRE 1104 1120 1280 1120
            WIRE 1104 1056 1280 1056
        END BRANCH
        INSTANCE XLXI_7 272 736 R0
        IOMARKER 560 1936 Q(3:0) R270 28
    END SHEET
END SCHEMATIC
