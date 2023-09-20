
// This is Saerileth's expansion dialogue file.

APPEND SAERI25P

IF WEIGHT #-99 ~G("RJParkSA",0)
                G("RJXPSA01",1)
                G("RJXPN",1)~ psa9
SAY @2
++ @3 DO ~SetGlobal("RJParkSA","GLOBAL",1)
          SetGlobal("RJXPSA01","GLOBAL",2)
          SetGlobal("SaerilethJoined","LOCALS",0)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1306",330,1044,12)~ EXIT
END

IF WEIGHT #-99 ~G("RJXPN",1)
                IsGabber(Player1)
                G("RJParkSA",1)~ psa
SAY @0
++ @1 EXIT
++ @4 + psa1
++ @5 + psa2
END

IF ~~ psa1
SAY @100 = @101 = @102
++ @103 + psa1.1
END

IF ~~ psa1.1
SAY @104 = @105 = @106
++ @107 EXIT
END

IF ~~ psa2
SAY @120 = @121 = @122 = @123 = @124
++ @125 EXIT
END

END
