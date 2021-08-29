VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a
        SIGNAL d
        SIGNAL c
        SIGNAL b
        SIGNAL XLXN_6
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL F
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        PORT Input a
        PORT Input d
        PORT Input c
        PORT Input b
        PORT Output F
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
        BEGIN BLOCKDEF or3
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
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
        BEGIN BLOCK XLXI_1 m2_1
            PIN D0 a
            PIN D1 XLXN_6
            PIN S0 b
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_2 m2_1
            PIN D0 XLXN_12
            PIN D1 XLXN_6
            PIN S0 c
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_3 m2_1
            PIN D0 XLXN_6
            PIN D1 XLXN_13
            PIN S0 d
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_4 or3
            PIN I0 XLXN_11
            PIN I1 XLXN_10
            PIN I2 XLXN_9
            PIN O F
        END BLOCK
        BEGIN BLOCK XLXI_6 pulldown
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_7 inv
            PIN I b
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_8 inv
            PIN I c
            PIN O XLXN_13
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 944 1056 R0
        INSTANCE XLXI_2 944 1408 R0
        INSTANCE XLXI_3 960 1808 R0
        INSTANCE XLXI_4 1840 1408 R0
        BEGIN BRANCH a
            WIRE 160 896 256 896
            WIRE 256 896 944 896
        END BRANCH
        BEGIN BRANCH d
            WIRE 160 1776 272 1776
            WIRE 272 1776 960 1776
        END BRANCH
        BEGIN BRANCH c
            WIRE 160 1376 256 1376
            WIRE 256 1376 624 1376
            WIRE 624 1376 944 1376
            WIRE 624 1376 624 1392
            WIRE 544 1392 624 1392
            WIRE 544 1392 544 1712
            WIRE 544 1712 624 1712
        END BRANCH
        BEGIN BRANCH b
            WIRE 160 1248 240 1248
            WIRE 240 1248 464 1248
            WIRE 464 1248 512 1248
            WIRE 464 1024 944 1024
            WIRE 464 1024 464 1248
        END BRANCH
        INSTANCE XLXI_6 288 2112 R0
        BEGIN BRANCH XLXN_6
            WIRE 352 960 944 960
            WIRE 352 960 352 1312
            WIRE 352 1312 944 1312
            WIRE 352 1312 352 1648
            WIRE 352 1648 352 1952
            WIRE 352 1648 960 1648
        END BRANCH
        IOMARKER 160 896 a R180 28
        IOMARKER 160 1248 b R180 28
        IOMARKER 160 1376 c R180 28
        IOMARKER 160 1776 d R180 28
        BEGIN BRANCH XLXN_9
            WIRE 1264 928 1840 928
            WIRE 1840 928 1840 1216
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1264 1280 1840 1280
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1280 1680 1840 1680
            WIRE 1840 1344 1840 1680
        END BRANCH
        BEGIN BRANCH F
            WIRE 2096 1280 2128 1280
        END BRANCH
        IOMARKER 2128 1280 F R0 28
        INSTANCE XLXI_7 512 1280 R0
        BEGIN BRANCH XLXN_12
            WIRE 736 1248 944 1248
        END BRANCH
        INSTANCE XLXI_8 624 1744 R0
        BEGIN BRANCH XLXN_13
            WIRE 848 1712 960 1712
        END BRANCH
    END SHEET
END SCHEMATIC
