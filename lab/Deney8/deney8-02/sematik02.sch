VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL Q(3:0)
        SIGNAL Q(3)
        SIGNAL Q(2)
        SIGNAL Q(1)
        SIGNAL Q(0)
        SIGNAL XLXN_14
        SIGNAL mclk
        PORT Output Q(3:0)
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
        BEGIN BLOCK XLXI_1 fjkc
            PIN C mclk
            PIN CLR XLXN_14
            PIN J XLXN_3
            PIN K XLXN_3
            PIN Q Q(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 fjkc
            PIN C Q(0)
            PIN CLR XLXN_14
            PIN J XLXN_3
            PIN K XLXN_3
            PIN Q Q(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 fjkc
            PIN C Q(1)
            PIN CLR XLXN_14
            PIN J XLXN_3
            PIN K XLXN_3
            PIN Q Q(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 fjkc
            PIN C Q(2)
            PIN CLR XLXN_14
            PIN J XLXN_3
            PIN K XLXN_3
            PIN Q Q(3)
        END BLOCK
        BEGIN BLOCK XLXI_5 pullup
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_6 pulldown
            PIN O XLXN_14
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 608 1296 R0
        INSTANCE XLXI_2 1264 1296 R0
        INSTANCE XLXI_3 1888 1296 R0
        INSTANCE XLXI_4 2496 1296 R0
        INSTANCE XLXI_5 288 624 R0
        INSTANCE XLXI_6 288 1632 R0
        BEGIN BRANCH XLXN_3
            WIRE 352 624 352 704
            WIRE 352 704 352 976
            WIRE 352 976 608 976
            WIRE 352 976 352 1040
            WIRE 352 1040 608 1040
            WIRE 352 704 1056 704
            WIRE 1056 704 1056 976
            WIRE 1056 976 1264 976
            WIRE 1056 976 1056 1040
            WIRE 1056 1040 1264 1040
            WIRE 1056 704 1712 704
            WIRE 1712 704 1712 976
            WIRE 1712 976 1888 976
            WIRE 1712 976 1712 1040
            WIRE 1712 1040 1888 1040
            WIRE 1712 704 2336 704
            WIRE 2336 704 2336 976
            WIRE 2336 976 2496 976
            WIRE 2336 976 2336 1040
            WIRE 2336 1040 2496 1040
        END BRANCH
        BUSTAP 2880 1632 2880 1536
        BUSTAP 2304 1712 2304 1616
        BUSTAP 1664 1696 1664 1600
        BUSTAP 1008 1680 1008 1584
        BEGIN BRANCH Q(3:0)
            WIRE 608 1760 1008 1760
            WIRE 1008 1760 1680 1760
            WIRE 1680 1760 2304 1760
            WIRE 2304 1760 2880 1760
            WIRE 1008 1680 1008 1760
            WIRE 1664 1696 1664 1728
            WIRE 1664 1728 1680 1728
            WIRE 1680 1728 1680 1760
            WIRE 2304 1712 2304 1760
            WIRE 2880 1632 2880 1760
        END BRANCH
        BEGIN BRANCH Q(3)
            WIRE 2880 1040 2944 1040
            WIRE 2944 1040 2944 1328
            WIRE 2880 1328 2944 1328
            WIRE 2880 1328 2880 1504
            WIRE 2880 1504 2880 1536
            BEGIN DISPLAY 2880 1511 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(2)
            WIRE 2272 1040 2304 1040
            WIRE 2304 1040 2304 1168
            WIRE 2304 1168 2496 1168
            WIRE 2304 1168 2304 1520
            WIRE 2304 1520 2304 1616
            BEGIN DISPLAY 2304 1518 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(1)
            WIRE 1648 1040 1664 1040
            WIRE 1664 1040 1664 1168
            WIRE 1664 1168 1888 1168
            WIRE 1664 1168 1664 1552
            WIRE 1664 1552 1664 1600
            BEGIN DISPLAY 1664 1550 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(0)
            WIRE 992 1040 1008 1040
            WIRE 1008 1040 1008 1168
            WIRE 1008 1168 1264 1168
            WIRE 1008 1168 1008 1536
            WIRE 1008 1536 1008 1584
            BEGIN DISPLAY 1008 1532 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 608 1760 Q(3:0) R180 28
        BEGIN BRANCH XLXN_14
            WIRE 352 1360 352 1472
            WIRE 352 1360 592 1360
            WIRE 592 1360 1264 1360
            WIRE 1264 1360 1888 1360
            WIRE 1888 1360 2496 1360
            WIRE 592 1264 608 1264
            WIRE 592 1264 592 1360
            WIRE 1264 1264 1264 1360
            WIRE 1888 1264 1888 1360
            WIRE 2496 1264 2496 1360
        END BRANCH
        BEGIN BRANCH mclk
            WIRE 576 1168 608 1168
        END BRANCH
        IOMARKER 576 1168 mclk R180 28
    END SHEET
END SCHEMATIC
