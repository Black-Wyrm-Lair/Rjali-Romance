
// This is orphans' expansion dialogue file.

// Jan, Billy, and Annie

APPEND RJJAN

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPPCJN",0)
                G("RJXPN",1)~ pjn
SAY @8
IF ~~ THEN DO ~SetGlobal("RJXPPCJN","GLOBAL",1)~ EXIT
END

END

APPEND RJBILLY

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPPCJN",0)
                G("RJXPN",1)~ pbi
SAY @2
IF ~~ THEN DO ~SetGlobal("RJXPPCJN","GLOBAL",1)~ EXIT
END

END

APPEND RJANNIE

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPPCJN",0)
                G("RJXPN",1)~ pnn
SAY @2
IF ~~ THEN DO ~SetGlobal("RJXPPCJN","GLOBAL",1)~ EXIT
END

END

// Bjorn, Sean, and Suzy

APPEND RJGUARD

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpgd
SAY @0
IF ~G("RJXPPCGD",0)~ THEN DO ~SetGlobal("RJXPPCGD","GLOBAL",1)~ EXIT
IF ~!G("RJXPPCGD",0)~ THEN REPLY @1 EXIT
END

END

APPEND RJSEAN

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpse
SAY @2
IF ~G("RJXPPCGD",0)~ THEN DO ~SetGlobal("RJXPPCGD","GLOBAL",1)~ EXIT
IF ~!G("RJXPPCGD",0)~ THEN REPLY @3 EXIT
END

END

APPEND RJSUZY

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpsu
SAY @2
IF ~G("RJXPPCGD",0)~ THEN DO ~SetGlobal("RJXPPCGD","GLOBAL",1)~ EXIT
IF ~!G("RJXPPCGD",0)~ THEN REPLY @3 EXIT
END

END

// Olma, Megan, and Chen

APPEND KPCOOK01

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpck
SAY @0
IF ~G("RJXPPCCK",0)~ THEN DO ~SetGlobal("RJXPPCCK","GLOBAL",1)~ EXIT
IF ~!G("RJXPPCCK",0)~ THEN REPLY @4 EXIT
IF ~!G("RJXPPCCK",0)~ THEN REPLY @10 GOTO xpck1
IF ~!G("RJXPPCCK",0)~ THEN REPLY @20 GOTO xpck2
END

IF ~~ xpck1
SAY @11
IF ~~ THEN REPLY @12 EXIT
END

IF ~~ xpck2
SAY @21 = @22
IF ~~ THEN REPLY @23 GOTO xpck2.1
END

IF ~~ xpck2.1
SAY @24
IF ~~ THEN REPLY @25 EXIT
END

END

APPEND RJMEGAN

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpme
SAY @2
IF ~G("RJXPPCCK",0)~ THEN DO ~SetGlobal("RJXPPCCK","GLOBAL",1)~ EXIT
IF ~!G("RJXPPCCK",0)~ THEN REPLY @5 EXIT
IF ~!G("RJXPPCCK",0)~ THEN REPLY @30 GOTO xpme1
IF ~!G("RJXPPCCK",0)~ THEN REPLY @40 GOTO xpme2
END

IF ~~ xpme1
SAY @31
IF ~~ THEN REPLY @32 EXIT
END

IF ~~ xpme2
SAY @41
IF ~~ THEN REPLY @42 GOTO xpme2.1
END

IF ~~ xpme2.1
SAY @43
IF ~~ THEN REPLY @44 EXIT
END

END

APPEND RJCHEN

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpch
SAY @2
IF ~G("RJXPPCCK",0)~ THEN DO ~SetGlobal("RJXPPCCK","GLOBAL",1)~ EXIT
IF ~!G("RJXPPCCK",0)~ THEN REPLY @6 EXIT
IF ~!G("RJXPPCCK",0)~ THEN REPLY @50 GOTO xpch1
IF ~!G("RJXPPCCK",0)~ THEN REPLY @60 GOTO xpch2
END

IF ~~ xpch1
SAY @51 = @52
IF ~~ THEN REPLY @53 EXIT
END

IF ~~ xpch2
SAY @61
IF ~~ THEN REPLY @62 EXIT
END

END

// Bobby

APPEND RJBOBBY

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpbo
SAY @2
IF ~~ THEN REPLY @7 EXIT
IF ~G("RJParkNE",1)~ THEN REPLY @70 GOTO xpbo1
IF ~!G("RJParkNE",1)~ THEN REPLY @70 GOTO xpbo2
IF ~~ THEN REPLY @80 GOTO xpbo3
END

IF ~~ xpbo1
SAY @71 = @72
IF ~~ THEN REPLY @73 GOTO xpbo1.1
END

IF ~~ xpbo1.1
SAY @74
IF ~~ THEN REPLY @75 EXIT
END

IF ~~ xpbo2
SAY @76 = @72
IF ~~ THEN REPLY @73 GOTO xpbo1.1
END

IF ~~ xpbo3
SAY @81 = @82 = @83
IF ~~ THEN REPLY @84 EXIT
END

END
