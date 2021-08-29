VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL a
        SIGNAL b
        SIGNAL c
        SIGNAL d
        SIGNAL F
        PORT Input a
        PORT Input b
        PORT Input c
        PORT Input d
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
            PIN A0 a
            PIN A1 b
            PIN E XLXN_5
            PIN D0 XLXN_1
            PIN D1 XLXN_2
            PIN D2 XLXN_3
            PIN D3 XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_2 m4_1e
            PIN D0 XLXN_1
            PIN D1 XLXN_2
            PIN D2 XLXN_3
            PIN D3 XLXN_4
            PIN E XLXN_5
            PIN S0 c
            PIN S1 d
            PIN O F
        END BLOCK
        BEGIN BLOCK XLXI_3 pullup
            PIN O XLXN_5
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 720 1184 R0
        INSTANCE XLXI_2 1488 1280 R0
        BEGIN BRANCH XLXN_1
            WIRE 1104 864 1488 864
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1104 928 1488 928
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1104 992 1488 992
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1104 1056 1488 1056
        END BRANCH
        INSTANCE XLXI_3 544 1440 R180
        BEGIN BRANCH XLXN_5
            WIRE 480 1056 720 1056
            WIRE 480 1056 480 1248
            WIRE 480 1248 480 1440
            WIRE 480 1248 1488 1248
        END BRANCH
        BEGIN BRANCH a
            WIRE 240 864 720 864
        END BRANCH
        BEGIN BRANCH b
            WIRE 240 928 720 928
        END BRANCH
        BEGIN BRANCH c
            WIRE 240 1152 1488 1152
            WIRE 1488 1120 1488 1152
        END BRANCH
        BEGIN BRANCH d
            WIRE 240 1280 1248 1280
            WIRE 1248 1184 1248 1280
            WIRE 1248 1184 1488 1184
        END BRANCH
        IOMARKER 240 864 a R180 28
        IOMARKER 240 928 b R180 28
        IOMARKER 240 1152 c R180 28
        IOMARKER 240 1280 d R180 28
        BEGIN BRANCH F
            WIRE 1808 960 1840 960
        END BRANCH
        IOMARKER 1840 960 F R0 28
    END SHEET
END SCHEMATIC
