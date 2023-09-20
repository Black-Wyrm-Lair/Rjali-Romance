
// This is Tashia's expansion dialogue file.

APPEND TASHI25P

IF WEIGHT #-99 ~G("RJParkTA",0)
                !G("TashiaRomanceActive",2)
                G("RJXPN",1)~ pta8
SAY @4
++ @5 DO ~EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkTA",0)
                G("TashiaRomanceActive",2)
                G("RJXPN",1)~ pta9
SAY @2
++ @3 DO ~SetGlobal("RJParkTA","GLOBAL",1)
          SetGlobal("RJJoin","LOCALS",1)
          SetGlobal("RJXPTA01","GLOBAL",2)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1307",1784,814,12)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkTA",1)~ pta
SAY @0
++ @1 EXIT
++ @6 + pta1
++ @7 + pta2
END

IF ~~ pta1
SAY @100 = @101
++ @102 + pta1.1
END

IF ~~ pta1.1
SAY @103 = @104
++ @105 EXIT
END

IF ~~ pta2
SAY @120 = @121 = @122 = @123
++ @124 + pta2.1
END

IF ~~ pta2.1
SAY @125 = @126
++ @127 EXIT
END

END
