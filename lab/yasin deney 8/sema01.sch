VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL F
        SIGNAL XLXN_3
        SIGNAL mclk
        PORT Output F
        PORT Input mclk
        BEGIN BLOCKDEF fd
            TIMESTAMP 2001 2 2 12 52 25
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
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
        BEGIN BLOCK XLXI_1 fd
            PIN C mclk
            PIN D F
            PIN Q XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 inv
            PIN I XLXN_1
            PIN O F
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_2 2400 880 R0
        BEGIN BRANCH XLXN_1
            WIRE 2144 848 2400 848
        END BRANCH
        BEGIN BRANCH F
            WIRE 1744 464 1760 464
            WIRE 1760 464 2848 464
            WIRE 2848 464 2848 848
            WIRE 2848 848 3040 848
            WIRE 1744 464 1744 848
            WIRE 1744 848 1760 848
            WIRE 2624 848 2640 848
            WIRE 2640 848 2848 848
        END BRANCH
        INSTANCE XLXI_1 1760 1104 R0
        IOMARKER 3040 848 F R0 28
        BEGIN BRANCH mclk
            WIRE 1728 976 1760 976
        END BRANCH
        IOMARKER 1728 976 mclk R180 28
    END SHEET
END SCHEMATIC
