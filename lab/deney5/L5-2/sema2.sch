VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_21
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_26
        SIGNAL XLXN_28
        SIGNAL SW0
        SIGNAL XLXN_42
        SIGNAL SW1
        SIGNAL SW2
        SIGNAL XLXN_45
        SIGNAL XLXN_46
        SIGNAL SW3
        SIGNAL XLXN_48
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_22
        SIGNAL XLXN_52
        SIGNAL XLXN_20
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL XLXN_61
        SIGNAL XLXN_63
        SIGNAL LD2
        SIGNAL XLXN_65
        SIGNAL LD0
        SIGNAL LD1
        PORT Input SW0
        PORT Input SW1
        PORT Input SW2
        PORT Input SW3
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
            PIN I SW0
            PIN O XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_2 inv
            PIN I SW1
            PIN O XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_3 inv
            PIN I SW2
            PIN O XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I SW3
            PIN O XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_5 and3
            PIN I0 XLXN_22
            PIN I1 SW3
            PIN I2 XLXN_19
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_6 and3
            PIN I0 XLXN_18
            PIN I1 SW1
            PIN I2 SW0
            PIN O XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_9 and2
            PIN I0 XLXN_20
            PIN I1 XLXN_19
            PIN O XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_7 and3
            PIN I0 XLXN_18
            PIN I1 XLXN_20
            PIN I2 SW1
            PIN O XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_8 and3
            PIN I0 SW3
            PIN I1 SW2
            PIN I2 XLXN_22
            PIN O XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_11 or3
            PIN I0 XLXN_31
            PIN I1 XLXN_30
            PIN I2 XLXN_29
            PIN O LD2
        END BLOCK
        BEGIN BLOCK XLXI_10 and2
            PIN I0 SW0
            PIN I1 XLXN_20
            PIN O XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_12 or3
            PIN I0 XLXN_34
            PIN I1 XLXN_33
            PIN I2 XLXN_32
            PIN O LD0
        END BLOCK
        BEGIN BLOCK XLXI_27 inv
            PIN I XLXN_63
            PIN O LD1
        END BLOCK
        BEGIN BLOCK XLXI_28 or2
            PIN I0 LD0
            PIN I1 LD2
            PIN O XLXN_63
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH SW0
            WIRE 192 320 304 320
            WIRE 304 320 672 320
            WIRE 672 320 720 320
            WIRE 672 320 672 560
            WIRE 672 560 2000 560
            WIRE 304 320 304 1504
            WIRE 304 1504 2128 1504
        END BRANCH
        BEGIN BRANCH SW1
            WIRE 192 800 464 800
            WIRE 464 800 672 800
            WIRE 672 800 752 800
            WIRE 464 800 464 944
            WIRE 464 944 2128 944
            WIRE 672 624 2000 624
            WIRE 672 624 672 800
        END BRANCH
        BEGIN BRANCH SW2
            WIRE 192 1280 640 1280
            WIRE 640 1280 752 1280
            WIRE 640 1280 640 1648
            WIRE 640 1648 1024 1648
        END BRANCH
        INSTANCE XLXI_1 720 352 R0
        INSTANCE XLXI_2 752 832 R0
        INSTANCE XLXI_3 752 1312 R0
        INSTANCE XLXI_4 752 1792 R0
        BEGIN BRANCH SW3
            WIRE 192 1760 256 1760
            WIRE 256 1760 640 1760
            WIRE 640 1760 752 1760
            WIRE 256 384 1456 384
            WIRE 256 384 256 1760
            WIRE 640 1712 1024 1712
            WIRE 640 1712 640 1760
        END BRANCH
        INSTANCE XLXI_5 1456 512 R0
        INSTANCE XLXI_6 2000 752 R0
        INSTANCE XLXI_9 1248 1344 R0
        INSTANCE XLXI_7 2128 1136 R0
        BEGIN BRANCH XLXN_18
            WIRE 976 1760 1728 1760
            WIRE 1728 1760 2000 1760
            WIRE 1728 1072 2128 1072
            WIRE 1728 1072 1728 1760
            WIRE 2000 688 2000 1760
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 944 320 1168 320
            WIRE 1168 320 1456 320
            WIRE 1168 320 1168 1216
            WIRE 1168 1216 1248 1216
        END BRANCH
        INSTANCE XLXI_8 1024 1776 R0
        BEGIN BRANCH XLXN_22
            WIRE 976 800 1008 800
            WIRE 1008 800 1456 800
            WIRE 1008 800 1008 1584
            WIRE 1008 1584 1024 1584
            WIRE 1456 448 1456 800
        END BRANCH
        INSTANCE XLXI_11 2464 1136 R0
        INSTANCE XLXI_10 2128 1568 R0
        BEGIN BRANCH XLXN_20
            WIRE 976 1280 1120 1280
            WIRE 1120 1280 1168 1280
            WIRE 1168 1280 1248 1280
            WIRE 1168 1280 1168 1440
            WIRE 1168 1440 2128 1440
            WIRE 1120 1008 2128 1008
            WIRE 1120 1008 1120 1280
        END BRANCH
        INSTANCE XLXI_12 2464 1776 R0
        BEGIN BRANCH XLXN_29
            WIRE 2256 624 2464 624
            WIRE 2464 624 2464 944
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 2384 1008 2464 1008
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 2384 1472 2464 1472
            WIRE 2464 1072 2464 1472
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 1504 1248 1872 1248
            WIRE 1872 1248 1872 1584
            WIRE 1872 1584 2464 1584
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1712 384 1808 384
            WIRE 1808 384 1808 1648
            WIRE 1808 1648 2464 1648
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 1280 1648 1488 1648
            WIRE 1488 1648 1488 1712
            WIRE 1488 1712 2464 1712
        END BRANCH
        IOMARKER 192 320 SW0 R180 28
        IOMARKER 192 800 SW1 R180 28
        IOMARKER 192 1280 SW2 R180 28
        IOMARKER 192 1760 SW3 R180 28
        INSTANCE XLXI_27 3056 1328 R0
        BEGIN BRANCH XLXN_63
            WIRE 2992 1296 3040 1296
            WIRE 3040 1296 3056 1296
        END BRANCH
        BEGIN BRANCH LD2
            WIRE 2720 1008 2736 1008
            WIRE 2736 1008 3280 1008
            WIRE 2736 1008 2736 1264
        END BRANCH
        INSTANCE XLXI_28 2736 1392 R0
        BEGIN BRANCH LD0
            WIRE 2720 1648 2736 1648
            WIRE 2736 1648 3296 1648
            WIRE 2736 1328 2736 1648
        END BRANCH
        IOMARKER 3296 1648 LD0 R0 28
        BEGIN BRANCH LD1
            WIRE 3280 1296 3312 1296
        END BRANCH
        IOMARKER 3312 1296 LD1 R0 28
        IOMARKER 3280 1008 LD2 R0 28
    END SHEET
END SCHEMATIC
