
// This is Nalia's expansion dialogue file. (romanced)

APPEND NALIA25P

IF WEIGHT #-99 ~G("RJParkNA",0)
                !G("NaliaRomanceActive",2)
                G("RJXPN",1)~ pna8
SAY @2
++ @3 DO ~SetGlobal("RJXPNA01","GLOBAL",2)
          SetGlobal("RJJoin","LOCALS",1)
          EscapeAreaMove("AR1306",1276,798,2)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkNA",0)
                G("NaliaRomanceActive",2)
                G("RJXPN",1)~ pna9
SAY @2
++ @3 DO ~SetGlobal("RJParkNA","GLOBAL",1)
          SetGlobal("RJXPNA01","GLOBAL",2)
          SetGlobal("RJJoin","LOCALS",1)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1306",1276,798,2)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkNA",1)~ pna
SAY @4
++ @5 EXIT
++ @120 + pna1
++ @130 + pna2
END

IF ~~ pna1
SAY @121 = @122 = @123 = @124
++ @125 EXIT
END

IF ~~ pna2
SAY @131 = @132 = @133 = @134
++ @135 + pna2.1
END

IF ~~ pna2.1
SAY @136 = @137
++ @138 EXIT
END

END

// This is Nalia's expansion dialogue file. (unromanced)

APPEND NALIA

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkNA",0)~ pnau
SAY @6
++ @7 EXIT
++ @100 + pnau1
END

IF ~~ pnau1
SAY @101 = @102 = @103 = @104 = @105
++ @106 + pnau1.1
END

IF ~~ pnau1.1
SAY @107
++ @108 EXIT
END

END
