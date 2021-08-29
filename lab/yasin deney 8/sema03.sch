VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL mclk
        SIGNAL Q(0)
        SIGNAL XLXN_22
        SIGNAL XLXN_24
        SIGNAL XLXN_31
        SIGNAL Q(2)
        SIGNAL Q(1)
        SIGNAL XLXN_34
        SIGNAL Q(2:0)
        SIGNAL XLXN_39
        PORT Input mclk
        PORT Output Q(2:0)
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
        BEGIN BLOCK XLXI_1 fjkc
            PIN C mclk
            PIN CLR XLXN_39
            PIN J XLXN_24
            PIN K XLXN_24
            PIN Q XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_2 fjkc
            PIN C XLXN_22
            PIN CLR XLXN_39
            PIN J XLXN_24
            PIN K XLXN_24
            PIN Q XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_3 fjkc
            PIN C XLXN_34
            PIN CLR XLXN_39
            PIN J XLXN_24
            PIN K XLXN_24
            PIN Q XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_5 pulldown
            PIN O XLXN_39
        END BLOCK
        BEGIN BLOCK XLXI_7 pullup
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_11 inv
            PIN I XLXN_22
            PIN O Q(0)
        END BLOCK
        BEGIN BLOCK XLXI_12 inv
            PIN I XLXN_34
            PIN O Q(1)
        END BLOCK
        BEGIN BLOCK XLXI_13 inv
            PIN I XLXN_31
            PIN O Q(2)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 672 1328 R0
        INSTANCE XLXI_2 1408 1312 R0
        INSTANCE XLXI_3 2096 1296 R0
        INSTANCE XLXI_5 448 1648 R0
        BEGIN BRANCH mclk
            WIRE 384 1200 672 1200
        END BRANCH
        BUSTAP 2544 1744 2544 1648
        BUSTAP 1168 1744 1168 1648
        BUSTAP 1904 1744 1904 1648
        INSTANCE XLXI_7 400 672 R0
        IOMARKER 384 1200 mclk R180 28
        BEGIN BRANCH XLXN_22
            WIRE 960 1312 1072 1312
            WIRE 960 1312 960 1408
            WIRE 1056 1072 1072 1072
            WIRE 1072 1072 1072 1184
            WIRE 1072 1184 1408 1184
            WIRE 1072 1184 1072 1312
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 464 672 464 752
            WIRE 464 752 464 1008
            WIRE 464 1008 464 1072
            WIRE 464 1072 672 1072
            WIRE 464 1008 672 1008
            WIRE 464 752 1184 752
            WIRE 1184 752 1872 752
            WIRE 1872 752 1872 976
            WIRE 1872 976 1872 1040
            WIRE 1872 1040 2096 1040
            WIRE 1872 976 2096 976
            WIRE 1184 752 1184 992
            WIRE 1184 992 1408 992
            WIRE 1184 992 1184 1056
            WIRE 1184 1056 1408 1056
        END BRANCH
        BEGIN BRANCH Q(0)
            WIRE 960 1632 960 1696
            WIRE 960 1696 1056 1696
            WIRE 1056 1632 1168 1632
            WIRE 1168 1632 1168 1648
            WIRE 1056 1632 1056 1696
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 2448 1312 2448 1392
            WIRE 2448 1312 2560 1312
            WIRE 2480 1040 2560 1040
            WIRE 2560 1040 2560 1312
        END BRANCH
        BEGIN BRANCH Q(2)
            WIRE 2448 1616 2448 1680
            WIRE 2448 1680 2512 1680
            WIRE 2512 1568 2512 1680
            WIRE 2512 1568 2544 1568
            WIRE 2544 1568 2544 1648
        END BRANCH
        BEGIN BRANCH Q(1)
            WIRE 1760 1632 1760 1696
            WIRE 1760 1696 1856 1696
            WIRE 1856 1584 1856 1696
            WIRE 1856 1584 1904 1584
            WIRE 1904 1584 1904 1648
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 1760 1344 1760 1408
            WIRE 1760 1344 1856 1344
            WIRE 1792 1056 1856 1056
            WIRE 1856 1056 1856 1168
            WIRE 1856 1168 1856 1344
            WIRE 1856 1168 2096 1168
        END BRANCH
        BEGIN BRANCH Q(2:0)
            WIRE 608 1936 608 1952
            WIRE 608 1952 1168 1952
            WIRE 1168 1952 1904 1952
            WIRE 1904 1952 2544 1952
            WIRE 1168 1744 1168 1952
            WIRE 1904 1744 1904 1952
            WIRE 2544 1744 2544 1952
        END BRANCH
        BEGIN BRANCH XLXN_39
            WIRE 512 1376 672 1376
            WIRE 672 1376 1408 1376
            WIRE 1408 1376 2096 1376
            WIRE 512 1376 512 1488
            WIRE 672 1296 672 1376
            WIRE 1408 1280 1408 1376
            WIRE 2096 1264 2096 1376
        END BRANCH
        IOMARKER 608 1936 Q(2:0) R270 28
        INSTANCE XLXI_13 2416 1392 R90
        INSTANCE XLXI_12 1728 1408 R90
        INSTANCE XLXI_11 928 1408 R90
    END SHEET
END SCHEMATIC
