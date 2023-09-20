
// This is Jaheira's expansion dialogue file.

APPEND JAHEI25P

IF WEIGHT #-99 ~G("RJParkJA",0)
                !G("JaheiraRomanceActive",2)
                G("RJXPN",1)~ pja8
SAY @4
++ @5 DO ~EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkJA",0)
                G("JaheiraRomanceActive",2)
                G("RJXPN",1)~ pja9
SAY @2
++ @3 DO ~SetGlobal("RJParkJA","GLOBAL",1)
          SetGlobal("RJXPJA01","GLOBAL",2)
          SetGlobal("RJJoin","LOCALS",1)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1306",694,1775,6)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkJA",1)~ pja
SAY @0
++ @1 EXIT
++ @6 + pja1
++ @7 + pja2
END

IF ~~ pja1
SAY @100 = @101 = @102
++ @103 + pja1.1
END

IF ~~ pja1.1
SAY @104 = @105
++ @106 EXIT
END

IF ~~ pja2
SAY @120 = @121
++ @122 + pja2.1
END

IF ~~ pja2.1
SAY @123 = @124 = @125
++ @126 EXIT
END

END
