
// This is Neera's expansion dialogue file.

APPEND NEERA25P

IF WEIGHT #-99 ~G("RJParkNE",0)
                !G("NeeraRomanceActive",2)
                G("RJXPN",1)~ pne8
SAY @4
++ @5 DO ~EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkNE",0)
                G("NeeraRomanceActive",2)
                G("RJXPN",1)~ pne9
SAY @2
++ @3 DO ~SetGlobal("RJParkNE","GLOBAL",1)
          SetGlobal("RJXPNE01","GLOBAL",2)
          SetGlobal("RJJoin","LOCALS",1)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1306",526,448,12)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkNE",1)~ pne
SAY @0
++ @1 EXIT
++ @6 + pne1
++ @7 + pne2
END

IF ~~ pne1
SAY @100
++ @101 + pne1.1
END

IF ~~ pne1.1
SAY @102 = @103
++ @104 + pne1.2
END

IF ~~ pne1.2
SAY @105 = @106
++ @107 EXIT
END

IF ~~ pne2
SAY @120 = @121
++ @122 + pne2.1
END

IF ~~ pne2.1
SAY @123 = @124 = @125
++ @126 + pne2.2
END

IF ~~ pne2.2
SAY @127 = @128 = @129 = @130
++ @131 DO ~SetGlobal("RJXPNE02","GLOBAL",1)~ EXIT
END

END
