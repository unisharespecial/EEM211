VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a
        SIGNAL b
        SIGNAL d
        SIGNAL c
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL F
        PORT Input a
        PORT Input b
        PORT Input d
        PORT Input c
        PORT Output F
        BEGIN BLOCKDEF d2_4e
            TIMESTAMP 2001 2 2 12 52 1
            RECTANGLE N 64 -384 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 0 -320 64 -320 
            LINE N 384 -128 320 -128 
            LINE N 384 -192 320 -192 
            LINE N 384 -256 320 -256 
            LINE N 384 -320 320 -320 
        END BLOCKDEF
        BEGIN BLOCKDEF m4_1e
            TIMESTAMP 2001 2 2 12 54 40
            LINE N 0 -416 96 -416 
            LINE N 0 -352 96 -352 
            LINE N 0 -288 96 -288 
            LINE N 0 -224 96 -224 
            LINE N 0 -32 96 -32 
            LINE N 320 -320 256 -320 
            LINE N 0 -160 96 -160 
            LINE N 0 -96 96 -96 
            LINE N 176 -96 96 -96 
            LINE N 176 -208 176 -96 
            LINE N 224 -32 96 -32 
            LINE N 224 -216 224 -32 
            LINE N 256 -224 96 -192 
            LINE N 256 -416 256 -224 
            LINE N 96 -448 256 -416 
            LINE N 96 -192 96 -448 
            LINE N 128 -160 96 -160 
            LINE N 128 -200 128 -160 
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
        BEGIN BLOCK XLXI_1 d2_4e
            PIN A0 b
            PIN A1 a
            PIN E XLXN_6
            PIN D0 XLXN_7
            PIN D1 XLXN_8
            PIN D2 XLXN_9
            PIN D3 XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_2 m4_1e
            PIN D0 XLXN_7
            PIN D1 XLXN_8
            PIN D2 XLXN_9
            PIN D3 XLXN_10
            PIN E XLXN_6
            PIN S0 d
            PIN S1 c
            PIN O F
        END BLOCK
        BEGIN BLOCK XLXI_3 pullup
            PIN O XLXN_6
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 800 1424 R0
        BEGIN BRANCH a
            WIRE 224 1168 800 1168
        END BRANCH
        BEGIN BRANCH b
            WIRE 224 1104 800 1104
        END BRANCH
        INSTANCE XLXI_2 1952 1616 R0
        BEGIN BRANCH d
            WIRE 224 1456 1952 1456
        END BRANCH
        BEGIN BRANCH c
            WIRE 224 1520 1952 1520
        END BRANCH
        INSTANCE XLXI_3 464 896 R0
        BEGIN BRANCH XLXN_6
            WIRE 528 896 528 1296
            WIRE 528 1296 528 1600
            WIRE 528 1600 1952 1600
            WIRE 528 1296 800 1296
            WIRE 1952 1584 1952 1600
        END BRANCH
        IOMARKER 224 1104 b R180 28
        IOMARKER 224 1168 a R180 28
        IOMARKER 224 1456 d R180 28
        IOMARKER 224 1520 c R180 28
        BEGIN BRANCH XLXN_7
            WIRE 1184 1104 1568 1104
            WIRE 1568 1104 1568 1200
            WIRE 1568 1200 1952 1200
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1184 1168 1552 1168
            WIRE 1552 1168 1552 1264
            WIRE 1552 1264 1952 1264
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 1184 1232 1536 1232
            WIRE 1536 1232 1536 1328
            WIRE 1536 1328 1952 1328
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1184 1296 1520 1296
            WIRE 1520 1296 1520 1392
            WIRE 1520 1392 1952 1392
        END BRANCH
        BEGIN BRANCH F
            WIRE 2272 1296 2304 1296
        END BRANCH
        IOMARKER 2304 1296 F R0 28
    END SHEET
END SCHEMATIC
