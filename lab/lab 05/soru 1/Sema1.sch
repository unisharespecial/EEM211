VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL SW0
        SIGNAL SW1
        SIGNAL SW2
        SIGNAL SW3
        SIGNAL XLXN_11
        SIGNAL XLXN_13
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL LD0
        SIGNAL XLXN_23
        PORT Input SW0
        PORT Input SW1
        PORT Input SW2
        PORT Input SW3
        PORT Output LD0
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
        BEGIN BLOCK XLXI_1 inv
            PIN I SW0
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_2 inv
            PIN I SW1
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_3 inv
            PIN I SW2
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_4 and3
            PIN I0 SW2
            PIN I1 XLXN_3
            PIN I2 XLXN_2
            PIN O XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_5 and3
            PIN I0 SW3
            PIN I1 XLXN_13
            PIN I2 SW1
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_6 and3
            PIN I0 SW3
            PIN I1 SW2
            PIN I2 XLXN_2
            PIN O XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_7 or2
            PIN I0 XLXN_23
            PIN I1 XLXN_21
            PIN O XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_8 or2
            PIN I0 XLXN_17
            PIN I1 XLXN_20
            PIN O XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_9 or2
            PIN I0 XLXN_18
            PIN I1 XLXN_19
            PIN O LD0
        END BLOCK
        BEGIN BLOCK XLXI_10 nand2
            PIN I0 SW2
            PIN I1 XLXN_3
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_11 nand2
            PIN I0 SW3
            PIN I1 XLXN_15
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_12 inv
            PIN I XLXN_11
            PIN O XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_13 inv
            PIN I XLXN_16
            PIN O XLXN_17
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 480 512 R0
        INSTANCE XLXI_2 496 992 R0
        INSTANCE XLXI_4 1392 672 R0
        INSTANCE XLXI_5 1360 1120 R0
        INSTANCE XLXI_6 1376 1696 R0
        INSTANCE XLXI_7 2032 848 R0
        INSTANCE XLXI_8 2064 1424 R0
        INSTANCE XLXI_9 2736 1088 R0
        INSTANCE XLXI_10 1360 2064 R0
        INSTANCE XLXI_11 2128 2080 R0
        INSTANCE XLXI_12 1648 2000 R0
        INSTANCE XLXI_13 2480 2016 R0
        BEGIN BRANCH XLXN_2
            WIRE 704 480 976 480
            WIRE 976 480 1392 480
            WIRE 976 480 976 1504
            WIRE 976 1504 1376 1504
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 720 960 1056 960
            WIRE 1056 960 1056 1936
            WIRE 1056 1936 1360 1936
            WIRE 1056 544 1056 960
            WIRE 1056 544 1392 544
        END BRANCH
        BEGIN BRANCH SW0
            WIRE 256 480 480 480
        END BRANCH
        BEGIN BRANCH SW1
            WIRE 192 960 448 960
            WIRE 448 960 496 960
            WIRE 448 816 448 960
            WIRE 448 816 1360 816
            WIRE 1360 816 1360 928
        END BRANCH
        BEGIN BRANCH SW2
            WIRE 208 1600 384 1600
            WIRE 384 1600 384 1696
            WIRE 384 1696 800 1696
            WIRE 384 1696 384 2000
            WIRE 384 2000 1360 2000
            WIRE 384 1600 432 1600
            WIRE 384 608 1392 608
            WIRE 384 608 384 1600
            WIRE 432 1408 432 1600
            WIRE 432 1408 496 1408
            WIRE 800 1568 800 1696
            WIRE 800 1568 1376 1568
        END BRANCH
        BEGIN BRANCH SW3
            WIRE 208 1904 1232 1904
            WIRE 1232 1056 1360 1056
            WIRE 1232 1056 1232 1616
            WIRE 1232 1616 1232 1632
            WIRE 1232 1632 1232 1744
            WIRE 1232 1744 1232 1904
            WIRE 1232 1744 1632 1744
            WIRE 1632 1744 1632 2016
            WIRE 1632 2016 2128 2016
            WIRE 1232 1632 1376 1632
        END BRANCH
        IOMARKER 256 480 SW0 R180 28
        IOMARKER 192 960 SW1 R180 28
        IOMARKER 208 1600 SW2 R180 28
        IOMARKER 208 1904 SW3 R180 28
        BEGIN BRANCH XLXN_11
            WIRE 1616 1968 1648 1968
        END BRANCH
        INSTANCE XLXI_3 496 1440 R0
        BEGIN BRANCH XLXN_13
            WIRE 720 1408 1040 1408
            WIRE 1040 992 1040 1408
            WIRE 1040 992 1360 992
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1872 1968 2000 1968
            WIRE 2000 1952 2000 1968
            WIRE 2000 1952 2128 1952
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 2384 1984 2480 1984
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 2000 1360 2064 1360
            WIRE 2000 1360 2000 1440
            WIRE 2000 1440 2768 1440
            WIRE 2768 1440 2768 1984
            WIRE 2704 1984 2768 1984
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 2320 1328 2528 1328
            WIRE 2528 1024 2528 1328
            WIRE 2528 1024 2736 1024
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 2288 752 2512 752
            WIRE 2512 752 2512 960
            WIRE 2512 960 2736 960
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1632 1568 1840 1568
            WIRE 1840 1296 1840 1568
            WIRE 1840 1296 2064 1296
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 1648 544 1840 544
            WIRE 1840 544 1840 720
            WIRE 1840 720 2032 720
        END BRANCH
        BEGIN BRANCH LD0
            WIRE 2992 992 3024 992
        END BRANCH
        IOMARKER 3024 992 LD0 R0 28
        BEGIN BRANCH XLXN_23
            WIRE 1616 992 2032 992
            WIRE 2016 784 2032 784
            WIRE 2016 784 2016 816
            WIRE 2016 816 2032 816
            WIRE 2032 816 2032 992
        END BRANCH
    END SHEET
END SCHEMATIC
