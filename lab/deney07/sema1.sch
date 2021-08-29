VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL d
        SIGNAL XLXN_4
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL a
        SIGNAL b
        SIGNAL c
        SIGNAL F
        PORT Input d
        PORT Input a
        PORT Input b
        PORT Input c
        PORT Output F
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
        BEGIN BLOCKDEF or2
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
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
        BEGIN BLOCK XLXI_1 and2
            PIN I0 d
            PIN I1 a
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 XLXN_12
            PIN I1 d
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 XLXN_1
            PIN I1 XLXN_12
            PIN O XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 XLXN_4
            PIN I1 XLXN_7
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_5 or2
            PIN I0 XLXN_11
            PIN I1 XLXN_10
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_6 or2
            PIN I0 XLXN_8
            PIN I1 XLXN_9
            PIN O F
        END BLOCK
        BEGIN BLOCK XLXI_8 inv
            PIN I c
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_9 inv
            PIN I b
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_7 inv
            PIN I a
            PIN O XLXN_4
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1440 768 R0
        INSTANCE XLXI_2 1440 1088 R0
        INSTANCE XLXI_3 1440 1424 R0
        INSTANCE XLXI_4 1920 1456 R0
        INSTANCE XLXI_5 2064 800 R0
        INSTANCE XLXI_6 2528 1088 R0
        INSTANCE XLXI_8 528 1056 R0
        INSTANCE XLXI_9 528 832 R0
        BEGIN BRANCH XLXN_1
            WIRE 752 800 1088 800
            WIRE 1088 800 1088 1360
            WIRE 1088 1360 1440 1360
        END BRANCH
        BEGIN BRANCH d
            WIRE 336 1152 1296 1152
            WIRE 1296 704 1440 704
            WIRE 1296 704 1296 960
            WIRE 1296 960 1296 1152
            WIRE 1296 960 1440 960
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1024 1408 1392 1408
            WIRE 1392 1392 1392 1408
            WIRE 1392 1392 1920 1392
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 1696 1328 1920 1328
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 2176 1360 2352 1360
            WIRE 2352 1024 2352 1360
            WIRE 2352 1024 2528 1024
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 2320 704 2416 704
            WIRE 2416 704 2416 960
            WIRE 2416 960 2528 960
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1696 672 2064 672
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1696 992 1872 992
            WIRE 1872 736 1872 992
            WIRE 1872 736 2064 736
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 752 1024 1360 1024
            WIRE 1360 1024 1440 1024
            WIRE 1360 1024 1360 1296
            WIRE 1360 1296 1440 1296
        END BRANCH
        INSTANCE XLXI_7 800 1440 R0
        BEGIN BRANCH a
            WIRE 320 640 768 640
            WIRE 768 640 768 1408
            WIRE 768 1408 800 1408
            WIRE 768 640 1440 640
        END BRANCH
        IOMARKER 320 640 a R180 28
        BEGIN BRANCH b
            WIRE 496 800 528 800
        END BRANCH
        IOMARKER 496 800 b R180 28
        BEGIN BRANCH c
            WIRE 496 1024 528 1024
        END BRANCH
        IOMARKER 496 1024 c R180 28
        IOMARKER 336 1152 d R180 28
        BEGIN BRANCH F
            WIRE 2784 992 2816 992
        END BRANCH
        IOMARKER 2816 992 F R0 28
    END SHEET
END SCHEMATIC
