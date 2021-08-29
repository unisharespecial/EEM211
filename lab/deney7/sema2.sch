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
        SIGNAL XLXN_8
        SIGNAL XLXN_10
        SIGNAL XLXN_12
        SIGNAL a
        SIGNAL d
        SIGNAL c
        SIGNAL b
        SIGNAL XLXN_11
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL F
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
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
        BEGIN BLOCK XLXI_1 m2_1
            PIN D0 XLXN_11
            PIN D1 XLXN_13
            PIN S0 c
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_2 m2_1
            PIN D0 XLXN_13
            PIN D1 XLXN_19
            PIN S0 d
            PIN O XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_3 m2_1
            PIN D0 a
            PIN D1 XLXN_13
            PIN S0 b
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_6 inv
            PIN I b
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_8 or3
            PIN I0 XLXN_16
            PIN I1 XLXN_15
            PIN I2 XLXN_14
            PIN O F
        END BLOCK
        BEGIN BLOCK XLXI_4 pulldown
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_9 inv
            PIN I c
            PIN O XLXN_19
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1024 656 R0
        INSTANCE XLXI_2 1024 992 R0
        INSTANCE XLXI_3 1024 1312 R0
        BEGIN BRANCH a
            WIRE 320 480 400 480
            WIRE 400 480 400 1152
            WIRE 400 1152 1024 1152
        END BRANCH
        BEGIN BRANCH d
            WIRE 320 960 1024 960
        END BRANCH
        BEGIN BRANCH c
            WIRE 320 800 672 800
            WIRE 672 800 672 896
            WIRE 672 896 768 896
            WIRE 672 624 672 800
            WIRE 672 624 1024 624
        END BRANCH
        IOMARKER 320 480 a R180 28
        IOMARKER 320 592 b R180 28
        IOMARKER 320 800 c R180 28
        IOMARKER 320 960 d R180 28
        BEGIN BRANCH b
            WIRE 320 592 576 592
            WIRE 576 592 576 1280
            WIRE 576 1280 1024 1280
            WIRE 576 496 688 496
            WIRE 576 496 576 592
        END BRANCH
        INSTANCE XLXI_6 688 528 R0
        BEGIN BRANCH XLXN_11
            WIRE 912 496 1024 496
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 480 560 1024 560
            WIRE 480 560 480 1088
            WIRE 480 1088 976 1088
            WIRE 480 1088 480 1216
            WIRE 480 1216 480 1440
            WIRE 480 1216 1024 1216
            WIRE 976 832 1024 832
            WIRE 976 832 976 1088
        END BRANCH
        INSTANCE XLXI_8 1664 992 R0
        BEGIN BRANCH XLXN_14
            WIRE 1344 528 1664 528
            WIRE 1664 528 1664 800
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1344 864 1664 864
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 1344 1184 1664 1184
            WIRE 1664 928 1664 1184
        END BRANCH
        BEGIN BRANCH F
            WIRE 1920 864 1952 864
        END BRANCH
        IOMARKER 1952 864 F R0 28
        INSTANCE XLXI_4 416 1600 R0
        INSTANCE XLXI_9 768 928 R0
        BEGIN BRANCH XLXN_19
            WIRE 992 896 1024 896
        END BRANCH
    END SHEET
END SCHEMATIC
