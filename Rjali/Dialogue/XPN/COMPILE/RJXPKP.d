
// This is the Keep's expansion dialogue file.

// Metigo

APPEND KPBUTL01

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpbu
SAY @100
IF ~~ THEN REPLY @101 EXIT
IF ~~ THEN REPLY @102 GOTO xpbu1
IF ~~ THEN REPLY @107 GOTO xpbu2
END

IF ~~ xpbu1
SAY @103 = @104 = @105
IF ~~ THEN REPLY @106 EXIT
END

IF ~~ xpbu2
SAY @108 = @109
IF ~~ THEN REPLY @110 GOTO xpbu2.1
END

IF ~~ xpbu2.1
SAY @111
IF ~~ THEN REPLY @112 EXIT
END

END

// Captain Cernick


APPEND KPCAPT02

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpca
SAY @80
IF ~~ THEN REPLY @81 EXIT
IF ~~ THEN REPLY @82 GOTO xpca1
IF ~G("RJParkBR",1)~ THEN REPLY @90 GOTO xpca2
IF ~G("RJParkBR",0)~ THEN REPLY @90 GOTO xpca3
END

IF ~~ xpca1
SAY @83 = @84
IF ~~ THEN REPLY @85 GOTO xpca1.1
END

IF ~~ xpca1.1
SAY @86
IF ~~ THEN REPLY @87 GOTO xpca1.2
END

IF ~~ xpca1.2
SAY @88
IF ~~ THEN REPLY @89 EXIT
END

IF ~~ xpca2
SAY @92
IF ~~ THEN REPLY @93 GOTO xpca3
END

IF ~~ xpca3
SAY @94
IF ~~ THEN REPLY @95 EXIT
END

END

// Bolumir

APPEND KPCHAP01

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpch
SAY @60
IF ~~ THEN REPLY @65 EXIT
IF ~G("RJParkBR",0)~ THEN REPLY @61 GOTO xpch0
IF ~G("RJParkBR",1)~ THEN REPLY @61 GOTO xpch1
IF ~~ THEN REPLY @66 GOTO xpch2
END

IF ~~ xpch0
SAY @62
IF ~~ THEN REPLY @64 EXIT
END

IF ~~ xpch1
SAY @63
IF ~~ THEN REPLY @64 EXIT
END

IF ~~ xpch2
SAY @67 = @68
IF ~~ THEN REPLY @69 EXIT
END

END

// Daleson

APPEND KPDOMO01

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpdl
SAY @30
IF ~~ THEN REPLY @52 EXIT
IF ~~ THEN REPLY @31 GOTO xpdl1
IF ~~ THEN REPLY @41 GOTO xpdl2
END

IF ~~ xpdl1
SAY @32 = @33
IF ~~ THEN REPLY @34 GOTO xpdl1.1
END

IF ~~ xpdl1.1
SAY @35 = @36
IF ~~ THEN REPLY @37 DO ~SetGlobal("RJXPDL1","GLOBAL",1)~ GOTO xpdl1.2
END

IF ~~ xpdl1.2
SAY @38 = @39
IF ~~ THEN REPLY @40 EXIT
END

IF ~~ xpdl2
SAY @42
IF ~~ THEN REPLY @43 GOTO xpdl2.1
END

IF ~~ xpdl2.1
SAY @44 = @45 = @46 = @47
IF ~G("RJXPPCJN",0)~ THEN REPLY @48 GOTO xpdl2.2
IF ~!G("RJXPPCJN",0)~ THEN REPLY @49 GOTO xpdl2.2
END

IF ~~ xpdl2.2
SAY @50
IF ~~ THEN REPLY @51 EXIT
END

END

// Chanelle

APPEND KPMAID01

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpm1
SAY @10
IF ~~ THEN REPLY @22 EXIT
IF ~G("RJMAID01",0)~ THEN REPLY @11 GOTO xpm1.1
IF ~!G("RJMAID01",0)~ THEN REPLY @11 GOTO xpm1.2
END

IF ~~ xpm1.1
SAY @12
IF ~~ THEN REPLY @13 EXIT
END

IF ~~ xpm1.2
SAY @14 = @15 = @16 = @17
IF ~~ THEN REPLY @18 GOTO xpm1.2.1
END

IF ~~ xpm1.2.1
SAY @19 = @20
IF ~~ THEN REPLY @21 EXIT
END

END

// Talira

APPEND KPMAID02

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpm2
SAY @0
IF ~~ THEN REPLY @8 EXIT
IF ~~ THEN REPLY @1 GOTO xpm2.1
IF ~~ THEN REPLY @2 GOTO xpm2.2
END

IF ~~ xpm2.1
SAY @3 = @4
IF ~~ THEN REPLY @5 EXIT
END

IF ~~ xpm2.2
SAY @6
IF ~~ THEN REPLY @7 EXIT
END

END
