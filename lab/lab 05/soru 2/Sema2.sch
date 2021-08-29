VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL SW1
        SIGNAL SW0
        SIGNAL SW3
        SIGNAL SW2
        SIGNAL XLXN_5
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_13
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL LD2
        SIGNAL XLXN_26
        SIGNAL XLXN_28
        SIGNAL LD0
        SIGNAL LD1
        PORT Input SW1
        PORT Input SW0
        PORT Input SW3
        PORT Input SW2
        PORT Output LD2
        PORT Output LD0
        PORT Output LD1
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
        BEGIN BLOCKDEF and3
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -176 144 -176 
            LINE N 144 -80 64 -80 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 64 -64 64 -192 
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
        BEGIN BLOCK XLXI_1 inv
            PIN I SW1
            PIN O XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_2 inv
            PIN I SW0
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_3 inv
            PIN I SW3
            PIN O XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I SW2
            PIN O XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_5 and2
            PIN I0 SW3
            PIN I1 XLXN_5
            PIN O XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_6 and3
            PIN I0 SW2
            PIN I1 XLXN_5
            PIN I2 XLXN_13
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_7 and3
            PIN I0 SW2
            PIN I1 SW3
            PIN I2 XLXN_13
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_8 or3
            PIN I0 XLXN_9
            PIN I1 XLXN_8
            PIN I2 XLXN_7
            PIN O LD0
        END BLOCK
        BEGIN BLOCK XLXI_9 or3
            PIN I0 XLXN_19
            PIN I1 XLXN_18
            PIN I2 XLXN_17
            PIN O LD2
        END BLOCK
        BEGIN BLOCK XLXI_10 or2
            PIN I0 LD2
            PIN I1 LD0
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_11 and2
            PIN I0 SW1
            PIN I1 XLXN_28
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_12 and3
            PIN I0 SW0
            PIN I1 SW1
            PIN I2 XLXN_26
            PIN O XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_13 and3
            PIN I0 SW0
            PIN I1 XLXN_28
            PIN I2 XLXN_26
            PIN O XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_14 inv
            PIN I XLXN_16
            PIN O LD1
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 672 656 R0
        INSTANCE XLXI_2 704 992 R0
        INSTANCE XLXI_3 720 1312 R0
        INSTANCE XLXI_4 720 1632 R0
        BEGIN BRANCH SW1
            WIRE 304 624 448 624
            WIRE 448 624 672 624
            WIRE 448 624 448 1824
            WIRE 448 1824 1472 1824
            WIRE 448 1824 448 2128
            WIRE 448 2128 1520 2128
        END BRANCH
        BEGIN BRANCH SW0
            WIRE 288 960 368 960
            WIRE 368 960 704 960
            WIRE 368 960 368 2192
            WIRE 368 2192 1520 2192
            WIRE 368 2192 368 2512
            WIRE 368 2512 1520 2512
        END BRANCH
        BEGIN BRANCH SW3
            WIRE 304 1280 544 1280
            WIRE 544 1280 720 1280
            WIRE 544 1280 544 1424
            WIRE 544 1424 1088 1424
            WIRE 544 704 1616 704
            WIRE 544 704 544 1280
            WIRE 1088 1328 1088 1424
            WIRE 1088 1328 1648 1328
        END BRANCH
        BEGIN BRANCH SW2
            WIRE 320 1600 560 1600
            WIRE 560 1600 720 1600
            WIRE 560 1504 560 1600
            WIRE 560 1504 1472 1504
            WIRE 1472 1504 1648 1504
            WIRE 1472 1040 1648 1040
            WIRE 1472 1040 1472 1504
            WIRE 1648 1392 1648 1504
        END BRANCH
        INSTANCE XLXI_5 1616 768 R0
        BEGIN BRANCH XLXN_5
            WIRE 896 624 1248 624
            WIRE 1248 624 1248 640
            WIRE 1248 640 1616 640
            WIRE 1248 624 1440 624
            WIRE 1440 624 1440 976
            WIRE 1440 976 1648 976
        END BRANCH
        INSTANCE XLXI_6 1648 1104 R0
        INSTANCE XLXI_7 1648 1456 R0
        INSTANCE XLXI_8 2112 1152 R0
        IOMARKER 304 624 SW1 R180 28
        IOMARKER 288 960 SW0 R180 28
        IOMARKER 304 1280 SW3 R180 28
        IOMARKER 320 1600 SW2 R180 28
        BEGIN BRANCH XLXN_7
            WIRE 1872 672 2112 672
            WIRE 2112 672 2112 960
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1904 976 2000 976
            WIRE 2000 976 2000 1024
            WIRE 2000 1024 2112 1024
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 1904 1328 2112 1328
            WIRE 2112 1088 2112 1328
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 928 960 1280 960
            WIRE 1280 960 1280 1264
            WIRE 1280 1264 1648 1264
            WIRE 1280 912 1648 912
            WIRE 1280 912 1280 960
        END BRANCH
        INSTANCE XLXI_9 2160 2304 R0
        INSTANCE XLXI_10 2704 1680 R0
        INSTANCE XLXI_11 1472 1888 R0
        INSTANCE XLXI_12 1520 2256 R0
        INSTANCE XLXI_13 1520 2576 R0
        INSTANCE XLXI_14 3104 1616 R0
        BEGIN BRANCH XLXN_16
            WIRE 2960 1584 3104 1584
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1728 1792 2160 1792
            WIRE 2160 1792 2160 2112
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1776 2128 1968 2128
            WIRE 1968 2128 1968 2176
            WIRE 1968 2176 2160 2176
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1776 2448 2160 2448
            WIRE 2160 2240 2160 2448
        END BRANCH
        BEGIN BRANCH LD2
            WIRE 2416 2176 2560 2176
            WIRE 2560 2176 2832 2176
            WIRE 2560 1616 2560 2176
            WIRE 2560 1616 2704 1616
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 944 1600 1232 1600
            WIRE 1232 1600 1232 2064
            WIRE 1232 2064 1520 2064
            WIRE 1232 2064 1232 2384
            WIRE 1232 2384 1520 2384
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 944 1280 1024 1280
            WIRE 1024 1280 1200 1280
            WIRE 1200 1280 1200 1760
            WIRE 1200 1760 1472 1760
            WIRE 1024 1280 1024 2448
            WIRE 1024 2448 1520 2448
        END BRANCH
        BEGIN BRANCH LD0
            WIRE 2368 1024 2400 1024
            WIRE 2400 1024 2400 1552
            WIRE 2400 1552 2704 1552
            WIRE 2400 1024 2704 1024
            BEGIN DISPLAY 2400 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2704 1024 LD0 R0 28
        IOMARKER 2832 2176 LD2 R0 28
        BEGIN BRANCH LD1
            WIRE 3328 1584 3360 1584
        END BRANCH
        IOMARKER 3360 1584 LD1 R0 28
    END SHEET
END SCHEMATIC
