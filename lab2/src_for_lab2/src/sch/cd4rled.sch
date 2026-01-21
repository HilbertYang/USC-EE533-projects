VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL D3
        SIGNAL D2
        SIGNAL D1
        SIGNAL D0
        SIGNAL R
        SIGNAL L
        SIGNAL C
        SIGNAL OR_CE_L
        SIGNAL T2_DN
        SIGNAL T2
        SIGNAL Q3
        SIGNAL Q2
        SIGNAL T3_UP
        SIGNAL T3_DN
        SIGNAL T3
        SIGNAL TC_DN
        SIGNAL TC_UP
        SIGNAL T1
        SIGNAL UP
        SIGNAL Q0
        SIGNAL T2_UP
        SIGNAL Q1
        SIGNAL CEO
        SIGNAL TC
        SIGNAL CE
        SIGNAL rst
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL XLXN_38
        SIGNAL XLXN_39
        PORT Input D3
        PORT Input D2
        PORT Input D1
        PORT Input D0
        PORT Input R
        PORT Input L
        PORT Input C
        PORT Output Q3
        PORT Output Q2
        PORT Input UP
        PORT Output Q0
        PORT Output Q1
        PORT Output CEO
        PORT Output TC
        PORT Input CE
        BEGIN BLOCKDEF or2
            TIMESTAMP 2001 5 4 10 10 51
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2001 5 4 10 10 51
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b2
            TIMESTAMP 2001 5 4 10 10 51
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 64 -48 64 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2001 5 4 10 10 51
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
        BEGIN BLOCKDEF and4b4
            TIMESTAMP 2001 5 4 10 10 51
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 40 -192 
            CIRCLE N 40 -204 64 -180 
            LINE N 0 -256 40 -256 
            CIRCLE N 40 -268 64 -244 
            LINE N 256 -160 192 -160 
            LINE N 64 -208 144 -208 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 144 -112 64 -112 
        END BLOCKDEF
        BEGIN BLOCKDEF and3
            TIMESTAMP 2001 5 4 10 10 51
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -176 144 -176 
            LINE N 144 -80 64 -80 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 64 -64 64 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b3
            TIMESTAMP 2001 5 4 10 10 51
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 40 -192 
            CIRCLE N 40 -204 64 -180 
            LINE N 256 -128 192 -128 
            LINE N 64 -176 144 -176 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF m2_1b1
            TIMESTAMP 2001 5 4 10 10 51
            CIRCLE N 56 -180 96 -140 
            LINE N 0 -160 56 -160 
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2001 5 4 10 10 51
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF title
            TIMESTAMP 2001 5 4 10 10 51
            LINE N -764 -288 -796 -256 
            LINE N -732 -256 -764 -288 
            LINE N -776 -256 -732 -256 
            LINE N -788 -264 -776 -256 
            LINE N -840 -256 -796 -256 
            LINE N -804 -256 -836 -288 
            LINE N -800 -256 -832 -288 
            LINE N -796 -256 -828 -288 
            LINE N -832 -288 -800 -320 
            LINE N -828 -288 -796 -320 
            LINE N -828 -352 -796 -384 
            LINE N -840 -384 -796 -384 
            LINE N -796 -384 -764 -352 
            LINE N -800 -320 -832 -352 
            LINE N -796 -320 -828 -352 
            LINE N -804 -320 -836 -352 
            LINE N -832 -352 -800 -384 
            LINE N -836 -352 -804 -384 
            LINE N -872 -352 -840 -384 
            LINE N -868 -352 -836 -384 
            LINE N -732 -384 -764 -352 
            LINE N -776 -384 -732 -384 
            LINE N -788 -376 -776 -384 
            LINE N -764 -356 -736 -384 
            LINE N -768 -360 -740 -384 
            LINE N -768 -356 -740 -384 
            LINE N -772 -360 -744 -384 
            LINE N -772 -360 -748 -384 
            LINE N -772 -360 -752 -384 
            LINE N -840 -352 -808 -384 
            LINE N -844 -352 -812 -384 
            LINE N -848 -352 -816 -384 
            LINE N -852 -352 -820 -384 
            LINE N -816 -256 -848 -288 
            LINE N -820 -256 -852 -288 
            LINE N -872 -352 -828 -352 
            LINE N -836 -320 -868 -352 
            LINE N -832 -320 -864 -352 
            LINE N -828 -320 -860 -352 
            LINE N -824 -320 -856 -352 
            LINE N -872 -288 -840 -320 
            LINE N -872 -288 -828 -288 
            LINE N -860 -352 -828 -384 
            LINE N -864 -352 -832 -384 
            LINE N -856 -352 -824 -384 
            LINE N -856 -288 -824 -320 
            LINE N -852 -288 -820 -320 
            LINE N -848 -288 -816 -320 
            LINE N -844 -288 -812 -320 
            LINE N -840 -288 -808 -320 
            LINE N -836 -288 -804 -320 
            LINE N -868 -288 -836 -320 
            LINE N -864 -288 -832 -320 
            LINE N -860 -288 -828 -320 
            LINE N -840 -320 -872 -352 
            LINE N -820 -320 -852 -352 
            LINE N -816 -320 -848 -352 
            LINE N -812 -320 -844 -352 
            LINE N -808 -320 -840 -352 
            LINE N -808 -256 -840 -288 
            LINE N -812 -256 -844 -288 
            LINE N -836 -256 -868 -288 
            LINE N -840 -256 -872 -288 
            LINE N -824 -256 -856 -288 
            LINE N -828 -256 -860 -288 
            LINE N -832 -256 -864 -288 
            LINE N -772 -364 -756 -384 
            LINE N -776 -364 -756 -384 
            LINE N -776 -368 -760 -384 
            LINE N -780 -368 -764 -384 
            LINE N -780 -372 -768 -384 
            LINE N -784 -372 -772 -384 
            LINE N -784 -376 -772 -384 
            LINE N -612 -272 -612 -368 
            LINE N -616 -272 -616 -368 
            LINE N -620 -272 -620 -368 
            LINE N -564 -276 -612 -276 
            LINE N -456 -272 -456 -368 
            LINE N -460 -272 -460 -368 
            LINE N -640 -272 -640 -368 
            LINE N -392 -272 -444 -368 
            LINE N -392 -368 -444 -272 
            LINE N -660 -272 -712 -368 
            LINE N -660 -368 -716 -272 
            LINE N -544 -272 -544 -368 
            LINE N -644 -272 -644 -368 
            LINE N -636 -272 -636 -368 
            LINE N -656 -272 -708 -368 
            LINE N -468 -272 -520 -368 
            LINE N -660 -272 -716 -368 
            LINE N -664 -272 -720 -368 
            LINE N -524 -272 -524 -368 
            LINE N -528 -272 -528 -368 
            LINE N -632 -272 -632 -368 
            LINE N -468 -272 -524 -368 
            LINE N -540 -272 -540 -368 
            LINE N -464 -272 -516 -368 
            LINE N -460 -272 -516 -368 
            LINE N -548 -272 -548 -368 
            LINE N -388 -272 -440 -368 
            LINE N -564 -272 -612 -272 
            LINE N -664 -368 -720 -272 
            LINE N -772 -256 -784 -264 
            LINE N -784 -268 -772 -256 
            LINE N -768 -256 -780 -268 
            LINE N -780 -272 -764 -256 
            LINE N -760 -256 -776 -272 
            LINE N -776 -276 -756 -256 
            LINE N -756 -256 -772 -276 
            LINE N -772 -280 -752 -256 
            LINE N -748 -256 -772 -280 
            LINE N -772 -280 -744 -256 
            LINE N -740 -256 -768 -280 
            LINE N -768 -284 -740 -256 
            LINE N -736 -256 -764 -284 
            LINE N -388 -272 -436 -368 
            LINE N -384 -272 -436 -368 
            LINE N -388 -368 -440 -272 
            LINE N -112 -176 -1140 -176 
            BEGIN LINE W -1136 -416 -1136 -212 
            END LINE
            BEGIN LINE W -80 -416 -80 -220 
            END LINE
            BEGIN LINE W -1136 -416 -80 -416 
            END LINE
            LINE N -1136 -128 -80 -128 
            LINE N -1132 -220 -80 -220 
            BEGIN LINE W -80 -80 -352 -80 
            END LINE
            BEGIN LINE W -1136 -80 -352 -80 
            END LINE
            BEGIN LINE W -1136 -224 -1136 -80 
            END LINE
            BEGIN LINE W -144 -80 -152 -80 
            END LINE
            BEGIN LINE W -80 -224 -80 -80 
            END LINE
            LINE N -112 -176 -80 -176 
            LINE N -176 -128 -144 -128 
            LINE N -296 -128 -296 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF and4b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 64 -208 144 -208 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 144 -112 64 -112 
        END BLOCKDEF
        BEGIN BLOCKDEF ftrsle
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            LINE N 0 -480 64 -480 
            LINE N 0 -256 64 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 192 -480 64 -480 
            LINE N 192 -448 192 -480 
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK I_36_60 or2
            PIN I0 CE
            PIN I1 L
            PIN O OR_CE_L
        END BLOCK
        BEGIN BLOCK I_36_1 vcc
            PIN P XLXN_1
        END BLOCK
        BEGIN BLOCK I_36_3 and2b2
            PIN I0 Q1
            PIN I1 Q0
            PIN O T2_DN
        END BLOCK
        BEGIN BLOCK I_T2 m2_1
            PIN D0 T2_DN
            PIN D1 T2_UP
            PIN S0 UP
            PIN O T2
        END BLOCK
        BEGIN BLOCK I_T3 m2_1
            PIN D0 T3_DN
            PIN D1 T3_UP
            PIN S0 UP
            PIN O T3
        END BLOCK
        BEGIN BLOCK I_TC m2_1
            PIN D0 TC_DN
            PIN D1 TC_UP
            PIN S0 UP
            PIN O TC
        END BLOCK
        BEGIN BLOCK I_36_11 and4b4
            PIN I0 Q3
            PIN I1 Q2
            PIN I2 Q1
            PIN I3 Q0
            PIN O TC_DN
        END BLOCK
        BEGIN BLOCK I_36_15 and3
            PIN I0 Q2
            PIN I1 Q1
            PIN I2 Q0
            PIN O T3_UP
        END BLOCK
        BEGIN BLOCK I_36_16 and3b3
            PIN I0 Q2
            PIN I1 Q1
            PIN I2 Q0
            PIN O T3_DN
        END BLOCK
        BEGIN BLOCK I_T1 m2_1b1
            PIN D0 Q0
            PIN D1 Q0
            PIN S0 UP
            PIN O T1
        END BLOCK
        BEGIN BLOCK I_36_37 and2
            PIN I0 Q1
            PIN I1 Q0
            PIN O T2_UP
        END BLOCK
        BEGIN BLOCK I_36_50 and2
            PIN I0 CE
            PIN I1 TC
            PIN O CEO
        END BLOCK
        BLOCK I1 title
        BLOCK I2 title
        BEGIN BLOCK XLXI_1 and4b2
            PIN I0 Q1
            PIN I1 Q2
            PIN I2 Q0
            PIN I3 Q3
            PIN O TC_UP
        END BLOCK
        BEGIN BLOCK XLXI_4 ftrsle
            PIN C C
            PIN CE OR_CE_L
            PIN D D3
            PIN L L
            PIN R rst
            PIN S XLXN_38
            PIN T T3
            PIN Q Q3
        END BLOCK
        BEGIN BLOCK XLXI_5 ftrsle
            PIN C C
            PIN CE OR_CE_L
            PIN D D2
            PIN L L
            PIN R XLXN_39
            PIN S XLXN_37
            PIN T T2
            PIN Q Q2
        END BLOCK
        BEGIN BLOCK XLXI_6 ftrsle
            PIN C C
            PIN CE OR_CE_L
            PIN D D1
            PIN L L
            PIN R XLXN_39
            PIN S XLXN_37
            PIN T T1
            PIN Q Q1
        END BLOCK
        BEGIN BLOCK XLXI_7 ftrsle
            PIN C C
            PIN CE OR_CE_L
            PIN D D0
            PIN L L
            PIN R rst
            PIN S XLXN_38
            PIN T XLXN_1
            PIN Q Q0
        END BLOCK
        BEGIN BLOCK XLXI_9 or2
            PIN I0 XLXN_36
            PIN I1 R
            PIN O rst
        END BLOCK
        BEGIN BLOCK XLXI_11 and2b1
            PIN I0 UP
            PIN I1 CEO
            PIN O XLXN_38
        END BLOCK
        BEGIN BLOCK XLXI_12 and2
            PIN I0 UP
            PIN I1 CEO
            PIN O XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_13 gnd
            PIN G XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_14 or2
            PIN I0 XLXN_38
            PIN I1 rst
            PIN O XLXN_39
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5760 7360
        INSTANCE I_36_60 1760 4640 R0
        INSTANCE I_36_1 1920 1824 R0
        INSTANCE I_36_3 3264 2624 R0
        INSTANCE I_T2 3840 2784 R0
        INSTANCE I_T3 3840 3616 R0
        INSTANCE I_TC 3840 4576 R0
        INSTANCE I_36_15 3264 3776 R0
        INSTANCE I_36_16 3264 3456 R0
        INSTANCE I_T1 3840 2112 R0
        INSTANCE I_36_37 3264 2880 R0
        INSTANCE I_36_50 3904 4992 R0
        BEGIN INSTANCE I1 5760 7360 R0
        END INSTANCE
        BEGIN INSTANCE I2 5760 7360 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1984 1824 2368 1824
        END BRANCH
        BEGIN BRANCH D3
            WIRE 560 4032 1408 4032
            WIRE 1408 4032 2368 4032
            BEGIN DISPLAY 1408 4032 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2
            WIRE 560 3072 1408 3072
            WIRE 1408 3072 2368 3072
            BEGIN DISPLAY 1408 3072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1
            WIRE 560 2304 1408 2304
            WIRE 1408 2304 2368 2304
            BEGIN DISPLAY 1408 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0
            WIRE 560 1696 1408 1696
            WIRE 1408 1696 2368 1696
            BEGIN DISPLAY 1408 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH L
            WIRE 560 4096 1408 4096
            WIRE 1408 4096 1600 4096
            WIRE 1600 4096 1600 4512
            WIRE 1600 4512 1760 4512
            WIRE 1600 4096 2176 4096
            WIRE 2176 4096 2368 4096
            WIRE 2176 1760 2176 2368
            WIRE 2176 2368 2176 3136
            WIRE 2176 3136 2368 3136
            WIRE 2176 3136 2176 4096
            WIRE 2176 2368 2368 2368
            WIRE 2176 1760 2368 1760
            BEGIN DISPLAY 1408 4096 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C
            WIRE 560 4256 1408 4256
            WIRE 1408 4256 2048 4256
            WIRE 2048 4256 2048 4288
            WIRE 2048 4288 2368 4288
            WIRE 2048 1952 2048 2560
            WIRE 2048 2560 2048 3328
            WIRE 2048 3328 2048 4256
            WIRE 2048 3328 2368 3328
            WIRE 2048 2560 2368 2560
            WIRE 2048 1952 2368 1952
            BEGIN DISPLAY 1408 4256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OR_CE_L
            WIRE 2016 4544 2112 4544
            WIRE 2112 1888 2112 2496
            WIRE 2112 2496 2112 3264
            WIRE 2112 3264 2368 3264
            WIRE 2112 3264 2112 4224
            WIRE 2112 4224 2112 4544
            WIRE 2112 4224 2368 4224
            WIRE 2112 2496 2368 2496
            WIRE 2112 1888 2368 1888
            BEGIN DISPLAY 2112 4544 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T2_DN
            WIRE 3520 2528 3536 2528
            WIRE 3536 2528 3680 2528
            WIRE 3680 2528 3680 2624
            WIRE 3680 2624 3840 2624
            BEGIN DISPLAY 3536 2528 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T2
            WIRE 2224 2912 2224 3200
            WIRE 2224 3200 2368 3200
            WIRE 2224 2912 4256 2912
            WIRE 4160 2656 4192 2656
            WIRE 4192 2656 4256 2656
            WIRE 4256 2656 4256 2912
            BEGIN DISPLAY 4192 2656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 4448 4128 Q3 R0 28
        IOMARKER 4448 3200 Q2 R0 28
        BEGIN BRANCH T3_UP
            WIRE 3520 3648 3536 3648
            WIRE 3536 3648 3680 3648
            WIRE 3680 3520 3680 3648
            WIRE 3680 3520 3840 3520
            BEGIN DISPLAY 3536 3648 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T3_DN
            WIRE 3520 3328 3536 3328
            WIRE 3536 3328 3680 3328
            WIRE 3680 3328 3680 3456
            WIRE 3680 3456 3840 3456
            BEGIN DISPLAY 3536 3328 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T3
            WIRE 2320 3872 4192 3872
            WIRE 2320 3872 2320 4160
            WIRE 2320 4160 2368 4160
            WIRE 4160 3488 4192 3488
            WIRE 4192 3488 4192 3872
            BEGIN DISPLAY 4192 3488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH TC_UP
            WIRE 3456 4640 3536 4640
            WIRE 3536 4640 3680 4640
            WIRE 3680 4480 3680 4640
            WIRE 3680 4480 3840 4480
            BEGIN DISPLAY 3536 4640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH T1
            WIRE 2224 2144 2224 2432
            WIRE 2224 2432 2368 2432
            WIRE 2224 2144 4256 2144
            WIRE 4160 1984 4192 1984
            WIRE 4192 1984 4256 1984
            WIRE 4256 1984 4256 2144
            BEGIN DISPLAY 4192 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH UP
            WIRE 560 4832 832 4832
            WIRE 832 4832 1408 4832
            WIRE 1408 4832 1904 4832
            WIRE 1904 4832 3744 4832
            WIRE 832 4448 896 4448
            WIRE 832 4448 832 4832
            WIRE 1904 4688 1904 4832
            WIRE 1904 4688 2016 4688
            WIRE 3744 2080 3744 2752
            WIRE 3744 2752 3744 3584
            WIRE 3744 3584 3744 4544
            WIRE 3744 4544 3744 4832
            WIRE 3744 4544 3840 4544
            WIRE 3744 3584 3840 3584
            WIRE 3744 2752 3840 2752
            WIRE 3744 2080 3840 2080
            BEGIN DISPLAY 1408 4832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 4448 1824 Q0 R0 28
        BEGIN BRANCH T2_UP
            WIRE 3520 2784 3536 2784
            WIRE 3536 2784 3680 2784
            WIRE 3680 2688 3680 2784
            WIRE 3680 2688 3840 2688
            BEGIN DISPLAY 3536 2784 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 4448 2432 Q1 R0 28
        BEGIN BRANCH CEO
            WIRE 784 4384 784 5040
            WIRE 784 5040 1936 5040
            WIRE 1936 5040 4224 5040
            WIRE 784 4384 896 4384
            WIRE 1936 4752 2016 4752
            WIRE 1936 4752 1936 5040
            WIRE 4160 4896 4224 4896
            WIRE 4224 4896 4320 4896
            WIRE 4320 4896 4448 4896
            WIRE 4224 4896 4224 5040
            BEGIN DISPLAY 4320 4896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 4448 4896 CEO R0 28
        IOMARKER 4448 4448 TC R0 28
        BEGIN BRANCH CE
            WIRE 560 4192 1408 4192
            WIRE 1408 4192 1536 4192
            WIRE 1536 4192 1536 4576
            WIRE 1536 4576 1536 4928
            WIRE 1536 4928 3904 4928
            WIRE 1536 4576 1760 4576
            BEGIN DISPLAY 1408 4192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_5 2368 3456 R0
        INSTANCE XLXI_6 2368 2688 R0
        INSTANCE XLXI_7 2368 2080 R0
        BEGIN BRANCH R
            WIRE 560 4352 1200 4352
            WIRE 1200 4352 1216 4352
        END BRANCH
        INSTANCE I_36_11 3248 4384 R0
        BEGIN BRANCH Q0
            WIRE 2752 1824 2976 1824
            WIRE 2976 1824 2976 1952
            WIRE 2976 1952 2976 2016
            WIRE 2976 2016 2976 2496
            WIRE 2976 2496 2976 2752
            WIRE 2976 2752 2976 3264
            WIRE 2976 3264 2976 3584
            WIRE 2976 3584 3264 3584
            WIRE 2976 3584 2976 4128
            WIRE 2976 4128 3248 4128
            WIRE 2976 4128 2976 4608
            WIRE 2976 4608 3200 4608
            WIRE 2976 3264 3264 3264
            WIRE 2976 2752 3264 2752
            WIRE 2976 2496 3264 2496
            WIRE 2976 2016 3840 2016
            WIRE 2976 1952 3840 1952
            WIRE 2976 1824 4352 1824
            WIRE 4352 1824 4448 1824
            BEGIN DISPLAY 4352 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q1
            WIRE 2752 2432 3040 2432
            WIRE 3040 2432 3040 2560
            WIRE 3040 2560 3040 2816
            WIRE 3040 2816 3040 3328
            WIRE 3040 3328 3040 3648
            WIRE 3040 3648 3264 3648
            WIRE 3040 3648 3040 4192
            WIRE 3040 4192 3248 4192
            WIRE 3040 4192 3040 4736
            WIRE 3040 4736 3200 4736
            WIRE 3040 3328 3264 3328
            WIRE 3040 2816 3264 2816
            WIRE 3040 2560 3264 2560
            WIRE 3040 2432 4352 2432
            WIRE 4352 2432 4448 2432
            BEGIN DISPLAY 4352 2432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q2
            WIRE 2752 3200 3104 3200
            WIRE 3104 3200 4352 3200
            WIRE 4352 3200 4448 3200
            WIRE 3104 3200 3104 3392
            WIRE 3104 3392 3264 3392
            WIRE 3104 3392 3104 3712
            WIRE 3104 3712 3264 3712
            WIRE 3104 3712 3104 4256
            WIRE 3104 4256 3248 4256
            WIRE 3104 4256 3104 4672
            WIRE 3104 4672 3200 4672
            BEGIN DISPLAY 4352 3200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_9 1216 4480 R0
        BEGIN BRANCH Q3
            WIRE 2752 4160 2896 4160
            WIRE 2896 4160 2896 4416
            WIRE 2896 4416 3152 4416
            WIRE 3152 4416 3152 4544
            WIRE 3152 4544 3200 4544
            WIRE 2896 4080 3584 4080
            WIRE 3584 4080 3584 4128
            WIRE 3584 4128 4448 4128
            WIRE 2896 4080 2896 4160
            WIRE 3152 4320 3152 4416
            WIRE 3152 4320 3248 4320
        END BRANCH
        INSTANCE XLXI_1 3200 4800 R0
        INSTANCE XLXI_4 2368 4416 R0
        INSTANCE XLXI_11 2016 4624 M180
        BEGIN BRANCH TC_DN
            WIRE 3504 4224 3536 4224
            WIRE 3536 4224 3536 4288
            WIRE 3536 4288 3680 4288
            WIRE 3680 4288 3680 4416
            WIRE 3680 4416 3840 4416
            BEGIN DISPLAY 3536 4288 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 1152 4416 1216 4416
        END BRANCH
        INSTANCE XLXI_13 2288 3728 R0
        BEGIN BRANCH XLXN_37
            WIRE 2352 2208 2368 2208
            WIRE 2352 2208 2352 2976
            WIRE 2352 2976 2368 2976
            WIRE 2352 2976 2352 3600
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1472 4384 1696 4384
            WIRE 1696 4384 1984 4384
            WIRE 1984 4384 2368 4384
            WIRE 1504 2576 1504 2624
            WIRE 1504 2624 1584 2624
            WIRE 1504 2576 1984 2576
            WIRE 1984 2576 1984 4384
            WIRE 1984 2048 2368 2048
            WIRE 1984 2048 1984 2576
            BEGIN DISPLAY 1696 4384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_39
            WIRE 1840 2656 1904 2656
            WIRE 1904 2656 2368 2656
            WIRE 1904 2656 1904 3424
            WIRE 1904 3424 2368 3424
        END BRANCH
        BEGIN BRANCH TC
            WIRE 3840 4800 4224 4800
            WIRE 3840 4800 3840 4864
            WIRE 3840 4864 3904 4864
            WIRE 4160 4448 4224 4448
            WIRE 4224 4448 4352 4448
            WIRE 4352 4448 4448 4448
            WIRE 4224 4448 4224 4800
            BEGIN DISPLAY 4352 4448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_14 1584 2752 R0
        BEGIN BRANCH XLXN_38
            WIRE 1504 2688 1584 2688
            WIRE 1504 2688 1504 2752
            WIRE 1504 2752 2272 2752
            WIRE 2272 2752 2272 3936
            WIRE 2272 3936 2272 4720
            WIRE 2272 3936 2368 3936
            WIRE 2272 1600 2368 1600
            WIRE 2272 1600 2272 2752
        END BRANCH
        IOMARKER 560 4096 L R180 28
        INSTANCE XLXI_12 896 4512 R0
        IOMARKER 560 4352 R R180 28
        IOMARKER 560 4832 UP R180 28
        IOMARKER 560 4256 C R180 28
        IOMARKER 560 4192 CE R180 28
        IOMARKER 560 3072 D2 R180 28
        IOMARKER 560 2304 D1 R180 28
        IOMARKER 560 1696 D0 R180 28
        IOMARKER 560 4032 D3 R180 28
    END SHEET
END SCHEMATIC
