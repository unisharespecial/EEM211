VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a
        SIGNAL XLXN_7
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL c
        SIGNAL XLXN_15
        SIGNAL b
        SIGNAL XLXN_21
        SIGNAL F
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL d
        PORT Input a
        PORT Input c
        PORT Input b
        PORT Output F
        PORT Input d
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2001 2 2 12 54 40
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
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
        BEGIN BLOCKDEF inv
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 m2_1
            PIN D0 XLXN_23
            PIN D1 XLXN_7
            PIN S0 a
            PIN O XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_2 m2_1
            PIN D0 XLXN_22
            PIN D1 XLXN_9
            PIN S0 a
            PIN O XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_3 m2_1
            PIN D0 XLXN_15
            PIN D1 XLXN_21
            PIN S0 b
            PIN O F
        END BLOCK
        BEGIN BLOCK XLXI_4 pullup
            PIN O XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_5 pulldown
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_6 inv
            PIN I c
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_7 and2
            PIN I0 d
            PIN I1 XLXN_23
            PIN O XLXN_22
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 992 1072 R0
        INSTANCE XLXI_2 1008 1488 R0
        INSTANCE XLXI_3 1584 1296 R0
        INSTANCE XLXI_4 640 560 R0
        INSTANCE XLXI_5 640 1872 R0
        BEGIN BRANCH a
            WIRE 336 736 848 736
            WIRE 848 736 848 1040
            WIRE 848 1040 992 1040
            WIRE 848 1040 848 1456
            WIRE 848 1456 1008 1456
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 704 560 704 976
            WIRE 704 976 992 976
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 704 1392 720 1392
            WIRE 720 1392 1008 1392
            WIRE 704 1392 704 1712
        END BRANCH
        INSTANCE XLXI_6 432 944 R0
        BEGIN BRANCH c
            WIRE 336 912 432 912
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1312 944 1440 944
            WIRE 1440 944 1440 1136
            WIRE 1440 1136 1584 1136
        END BRANCH
        BEGIN BRANCH b
            WIRE 352 1184 1328 1184
            WIRE 1328 1184 1328 1264
            WIRE 1328 1264 1584 1264
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 1328 1360 1456 1360
            WIRE 1456 1200 1456 1360
            WIRE 1456 1200 1584 1200
        END BRANCH
        IOMARKER 336 736 a R180 28
        IOMARKER 336 912 c R180 28
        IOMARKER 352 1184 b R180 28
        BEGIN BRANCH F
            WIRE 1904 1168 1936 1168
        END BRANCH
        IOMARKER 1936 1168 F R0 28
        INSTANCE XLXI_7 608 1424 R0
        BEGIN BRANCH XLXN_22
            WIRE 864 1328 1008 1328
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 528 1216 528 1296
            WIRE 528 1296 608 1296
            WIRE 528 1216 800 1216
            WIRE 656 912 800 912
            WIRE 800 912 992 912
            WIRE 800 912 800 1216
        END BRANCH
        BEGIN BRANCH d
            WIRE 352 1360 608 1360
        END BRANCH
        IOMARKER 352 1360 d R180 28
    END SHEET
END SCHEMATIC
