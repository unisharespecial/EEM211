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
        SIGNAL a
        SIGNAL b
        SIGNAL c
        SIGNAL F
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
            PIN I0 b
            PIN I1 a
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 c
            PIN I1 XLXN_2
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_3 or2
            PIN I0 XLXN_3
            PIN I1 XLXN_1
            PIN O F
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I b
            PIN O XLXN_2
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1632 1200 R0
        INSTANCE XLXI_2 1632 1504 R0
        BEGIN BRANCH XLXN_1
            WIRE 1888 1104 1936 1104
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1536 1376 1632 1376
        END BRANCH
        BEGIN BRANCH a
            WIRE 1200 1072 1632 1072
        END BRANCH
        BEGIN BRANCH b
            WIRE 1200 1136 1312 1136
            WIRE 1312 1136 1632 1136
            WIRE 1312 1136 1312 1376
        END BRANCH
        BEGIN BRANCH c
            WIRE 1200 1440 1616 1440
            WIRE 1616 1440 1632 1440
        END BRANCH
        INSTANCE XLXI_4 1312 1408 R0
        BEGIN BRANCH F
            WIRE 2192 1136 2208 1136
            WIRE 2208 1136 2288 1136
        END BRANCH
        IOMARKER 1200 1072 a R180 28
        IOMARKER 1200 1136 b R180 28
        IOMARKER 1200 1440 c R180 28
        INSTANCE XLXI_3 1936 1232 R0
        BEGIN BRANCH XLXN_3
            WIRE 1888 1408 1904 1408
            WIRE 1904 1168 1936 1168
            WIRE 1904 1168 1904 1408
        END BRANCH
        IOMARKER 2288 1136 F R0 28
    END SHEET
END SCHEMATIC
