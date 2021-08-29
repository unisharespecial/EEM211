VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL mclk
        SIGNAL F
        SIGNAL XLXN_3
        PORT Input mclk
        PORT Output F
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
            PIN Q XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_2 inv
            PIN I XLXN_3
            PIN O F
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1376 1280 R0
        BEGIN BRANCH mclk
            WIRE 1152 1152 1376 1152
        END BRANCH
        BEGIN BRANCH F
            WIRE 1232 800 1232 1024
            WIRE 1232 1024 1376 1024
            WIRE 1232 800 2160 800
            WIRE 2160 800 2160 1024
            WIRE 2160 1024 2304 1024
            WIRE 2080 1024 2160 1024
        END BRANCH
        INSTANCE XLXI_2 1856 1056 R0
        BEGIN BRANCH XLXN_3
            WIRE 1760 1024 1856 1024
        END BRANCH
        IOMARKER 1152 1152 mclk R180 28
        IOMARKER 2304 1024 F R0 28
    END SHEET
END SCHEMATIC
