VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2
        SIGNAL XLXN_17
        SIGNAL XLXN_1
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_23
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_3
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL SW0
        SIGNAL XLXN_16
        SIGNAL XLXN_34
        SIGNAL XLXN_18
        SIGNAL SW1
        SIGNAL XLXN_37
        SIGNAL SW2
        SIGNAL XLXN_39
        SIGNAL SW3
        SIGNAL XLXN_42
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL XLXN_46
        SIGNAL XLXN_53
        SIGNAL XLXN_54
        PORT Input SW0
        PORT Input SW1
        PORT Input SW2
        PORT Input SW3
        PORT Output XLXN_44
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
        BEGIN BLOCKDEF nand2
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 216 -96 
            CIRCLE N 192 -108 216 -84 
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and3
            PIN I0 SW3
            PIN I1 SW2
            PIN I2 XLXN_37
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_2 and3
            PIN I0 SW2
            PIN I1 XLXN_14
            PIN I2 XLXN_37
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_7 or2
            PIN I0 XLXN_6
            PIN I1 XLXN_4
            PIN O XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_8 or2
            PIN I0 XLXN_8
            PIN I1 XLXN_5
            PIN O XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_9 or2
            PIN I0 XLXN_7
            PIN I1 XLXN_11
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_10 inv
            PIN I XLXN_10
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_11 nand2
            PIN I0 SW3
            PIN I1 XLXN_12
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_3 and3
            PIN I0 SW3
            PIN I1 XLXN_3
            PIN I2 SW1
            PIN O XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_12 inv
            PIN I XLXN_13
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_13 nand2
            PIN I0 SW2
            PIN I1 XLXN_14
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_5 inv
            PIN I SW1
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_6 inv
            PIN I SW2
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I SW0
            PIN O XLXN_37
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1408 848 R0
        INSTANCE XLXI_2 1408 1328 R0
        INSTANCE XLXI_7 2000 848 R0
        INSTANCE XLXI_8 2672 880 R0
        BEGIN BRANCH XLXN_4
            WIRE 1664 720 2000 720
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 2256 752 2672 752
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1664 1200 1824 1200
            WIRE 1824 784 1824 1200
            WIRE 1824 784 2000 784
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 2592 1760 2656 1760
            WIRE 2656 816 2672 816
            WIRE 2656 816 2656 1760
        END BRANCH
        INSTANCE XLXI_3 1408 2048 R0
        BEGIN BRANCH XLXN_3
            WIRE 864 1920 1408 1920
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1920 1648 2048 1648
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1280 1616 1360 1616
        END BRANCH
        INSTANCE XLXI_5 640 1232 R0
        INSTANCE XLXI_6 640 1952 R0
        INSTANCE XLXI_4 624 688 R0
        BEGIN BRANCH SW0
            WIRE 208 656 624 656
        END BRANCH
        BEGIN BRANCH SW1
            WIRE 208 1200 528 1200
            WIRE 528 1200 640 1200
            WIRE 528 1200 528 1856
            WIRE 528 1856 1408 1856
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 848 656 1040 656
            WIRE 1040 656 1408 656
            WIRE 1040 656 1040 1136
            WIRE 1040 1136 1408 1136
        END BRANCH
        BEGIN BRANCH SW2
            WIRE 208 1920 400 1920
            WIRE 400 1920 464 1920
            WIRE 464 1920 592 1920
            WIRE 592 1920 640 1920
            WIRE 400 720 1408 720
            WIRE 400 720 400 1920
            WIRE 464 1264 1408 1264
            WIRE 464 1264 464 1920
            WIRE 592 1648 1024 1648
            WIRE 592 1648 592 1920
        END BRANCH
        BEGIN BRANCH SW3
            WIRE 208 2400 320 2400
            WIRE 320 2400 1280 2400
            WIRE 1280 2400 1344 2400
            WIRE 320 784 1408 784
            WIRE 320 784 320 2400
            WIRE 1280 1680 1664 1680
            WIRE 1280 1680 1280 2400
            WIRE 1344 1984 1344 2400
            WIRE 1344 1984 1408 1984
        END BRANCH
        BEGIN BRANCH XLXN_44
            WIRE 2928 784 2960 784
        END BRANCH
        IOMARKER 2960 784 XLXN_44 R0 28
        IOMARKER 208 2400 SW3 R180 28
        IOMARKER 208 1920 SW2 R180 28
        IOMARKER 208 1200 SW1 R180 28
        IOMARKER 208 656 SW0 R180 28
        BEGIN BRANCH XLXN_12
            WIRE 1584 1616 1664 1616
        END BRANCH
        INSTANCE XLXI_9 2336 1856 R0
        BEGIN BRANCH XLXN_11
            WIRE 2272 1648 2320 1648
            WIRE 2320 1648 2320 1728
            WIRE 2320 1728 2336 1728
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 1664 1920 1680 1920
            WIRE 1680 1792 2336 1792
            WIRE 1680 1792 1680 1920
        END BRANCH
        INSTANCE XLXI_13 1024 1712 R0
        BEGIN BRANCH XLXN_14
            WIRE 864 1200 944 1200
            WIRE 944 1200 1408 1200
            WIRE 944 1200 944 1584
            WIRE 944 1584 1024 1584
        END BRANCH
        INSTANCE XLXI_12 1360 1648 R0
        INSTANCE XLXI_11 1664 1744 R0
        INSTANCE XLXI_10 2048 1680 R0
    END SHEET
END SCHEMATIC
