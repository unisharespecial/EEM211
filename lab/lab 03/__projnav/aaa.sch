VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL F
        SIGNAL XLXN_8
        SIGNAL C
        SIGNAL XLXN_11
        SIGNAL XLXN_13
        SIGNAL B
        PORT Input A
        PORT Output F
        PORT Input C
        PORT Input B
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
        BEGIN BLOCK XLXI_1 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 C
            PIN I1 XLXN_8
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I B
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_5 or2
            PIN I0 XLXN_6
            PIN I1 XLXN_4
            PIN O F
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1072 832 R0
        INSTANCE XLXI_2 1104 1328 R0
        INSTANCE XLXI_4 592 1248 R0
        INSTANCE XLXI_5 1648 1040 R0
        BEGIN BRANCH A
            WIRE 528 704 1072 704
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1328 736 1664 736
            WIRE 1664 736 1664 816
            WIRE 1584 816 1584 912
            WIRE 1584 912 1648 912
            WIRE 1584 816 1664 816
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1360 1232 1664 1232
            WIRE 1584 976 1648 976
            WIRE 1584 976 1584 1008
            WIRE 1584 1008 1664 1008
            WIRE 1664 1008 1664 1216
            WIRE 1664 1216 1664 1232
        END BRANCH
        BEGIN BRANCH F
            WIRE 1904 944 2032 944
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 816 1216 960 1216
            WIRE 960 1200 960 1216
            WIRE 960 1200 1104 1200
        END BRANCH
        BEGIN BRANCH C
            WIRE 416 1264 1104 1264
            WIRE 416 1264 416 1296
        END BRANCH
        BEGIN BRANCH B
            WIRE 256 768 256 784
            WIRE 256 768 544 768
            WIRE 544 768 1072 768
            WIRE 544 768 544 1216
            WIRE 544 1216 592 1216
            BEGIN DISPLAY 256 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 528 704 A R180 28
        IOMARKER 256 784 B R90 28
        IOMARKER 416 1296 C R90 28
        IOMARKER 2032 944 F R0 28
    END SHEET
END SCHEMATIC
