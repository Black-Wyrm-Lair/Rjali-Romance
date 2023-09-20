
// This is Yvette's expansion dialogue file.

APPEND YXYV25P

IF WEIGHT #-99 ~G("RJParkYV",0)
                !G("YvetteRomanceActive",2)
                G("RJXPN",1)~ pyv8
SAY @4
++ @5 DO ~EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkYV",0)
                G("YvetteRomanceActive",2)
                G("RJXPN",1)~ pyv9
SAY @2
++ @3 DO ~SetGlobal("RJParkYV","GLOBAL",1)
          SetGlobal("RJJoin","LOCALS",1)
          SetGlobal("RJXPYV01","GLOBAL",2)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1306",1280,312,13)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkYV",1)~ pyv
SAY @0
++ @1 EXIT
++ @6 + pyv1
++ @7 + pyv2
END

IF ~~ pyv1
SAY @100 = @101 = @102
++ @103 + pyv1.1
END

IF ~~ pyv1.1
SAY @104 = @105
++ @106 EXIT
END

IF ~~ pyv2
SAY @120 = @121 = @122
++ @123 + pyv2.1
END

IF ~~ pyv2.1
SAY @124 = @125
++ @126 EXIT
END

END
