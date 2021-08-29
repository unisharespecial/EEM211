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
        SIGNAL d
        SIGNAL a
        SIGNAL XLXN_6
        SIGNAL c
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL b
        SIGNAL F
        PORT Input d
        PORT Input a
        PORT Input c
        PORT Input b
        PORT Output F
        BEGIN BLOCKDEF nor3
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 216 -128 
            CIRCLE N 192 -140 216 -116 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            LINE N 112 -176 48 -176 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N 28 -176 204 0 192 -128 112 -176 
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
        BEGIN BLOCKDEF inv
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 nor3
            PIN I0 XLXN_11
            PIN I1 XLXN_9
            PIN I2 XLXN_8
            PIN O F
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 c
            PIN I1 XLXN_1
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 XLXN_3
            PIN I1 b
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 XLXN_3
            PIN I1 a
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_5 inv
            PIN I d
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_6 inv
            PIN I a
            PIN O XLXN_1
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 2592 1472 R0
        INSTANCE XLXI_2 1744 1056 R0
        INSTANCE XLXI_3 1744 1440 R0
        INSTANCE XLXI_4 1744 1824 R0
        INSTANCE XLXI_5 1136 1792 R0
        INSTANCE XLXI_6 1120 960 R0
        BEGIN BRANCH XLXN_1
            WIRE 1344 928 1744 928
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1360 1760 1488 1760
            WIRE 1488 1760 1744 1760
            WIRE 1488 1376 1744 1376
            WIRE 1488 1376 1488 1760
        END BRANCH
        BEGIN BRANCH d
            WIRE 704 1760 1136 1760
        END BRANCH
        BEGIN BRANCH a
            WIRE 704 928 896 928
            WIRE 896 928 1120 928
            WIRE 896 928 896 1696
            WIRE 896 1696 1744 1696
        END BRANCH
        BEGIN BRANCH c
            WIRE 704 1536 1040 1536
            WIRE 1040 992 1744 992
            WIRE 1040 992 1040 1536
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 2000 960 2592 960
            WIRE 2592 960 2592 1280
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 2000 1344 2592 1344
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 2000 1728 2592 1728
            WIRE 2592 1408 2592 1712
            WIRE 2592 1712 2592 1728
        END BRANCH
        BEGIN BRANCH b
            WIRE 688 1312 1744 1312
        END BRANCH
        BEGIN BRANCH F
            WIRE 2848 1344 2880 1344
        END BRANCH
        IOMARKER 704 928 a R180 28
        IOMARKER 688 1312 b R180 28
        IOMARKER 704 1536 c R180 28
        IOMARKER 704 1760 d R180 28
        IOMARKER 2880 1344 F R0 28
    END SHEET
END SCHEMATIC
