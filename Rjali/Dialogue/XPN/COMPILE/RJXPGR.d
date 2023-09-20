
// This is Grace's expansion dialogue file. (romanced)

APPEND RJGR25P

IF WEIGHT #-99 ~G("RJParkGR",0)
                G("RJXPN",1)~ pgr9
SAY @2
++ @3 DO ~SetGlobal("RJParkGR","GLOBAL",1)
          SetGlobal("RJJoin","LOCALS",1)
          SetGlobal("RJXPGR01","GLOBAL",2)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1307",1458,1584,0)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkGR",1)~ pgr
SAY @0
++ @1 EXIT
++ @30 + pgr1
++ @50 + pgr2
END

IF ~~ pgr1
SAY @31 = @32 = @33 = @34
++ @35 + pgr1.1
END

IF ~~ pgr1.1
SAY @36 = @37 = @38
++ @39 EXIT
END

IF ~~ pgr2
SAY @51 = @52 = @53
++ @54 EXIT
END

END

// This is Grace's expansion dialogue file. (unromanced)

APPEND RJPSTGR

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ pgru
SAY @10
++ @11 EXIT
++ @12 + pgru1
END

IF ~~ pgru1
SAY @13 = @14 = @15
++ @16 + pgru1.1
END

IF ~~ pgru1.1
SAY @17 = @18 = @19 = @20 = @21
++ @22 EXIT
END

END
