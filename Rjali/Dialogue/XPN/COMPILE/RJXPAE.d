
// This is Aerie's expansion dialogue file.

APPEND AERIE25P

IF WEIGHT #-99 ~G("RJParkAE",0)
                G("RJXPAE01",1)
                !G("AerieRomanceActive",2)
                G("RJXPN",1)~ pae8
SAY @4
++ @5 DO ~SetGlobal("RJXPAE01","GLOBAL",2)
               EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkAE",0)
                G("RJXPAE01",1)
                G("AerieRomanceActive",2)
                G("RJXPN",1)~ pae9
SAY @2
++ @3 DO ~SetGlobal("RJXPAE01","GLOBAL",2)
          SetGlobal("RJParkAE","GLOBAL",1)
          SetGlobal("RJJoin","LOCALS",1)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1306",1732,542,4)~ EXIT
END

IF WEIGHT #-99 ~G("RJXPN",1)
                IsGabber(Player1)
                G("RJParkAE",1)~ pae
SAY @0
++ @1 EXIT
++ @6 + pae1
++ @7 + pae2
END

IF ~~ pae1
SAY @10 = @11 = @12
++ @13 + pae1.1
END

IF ~~ pae1.1
SAY @14 = @15
++ @16 EXIT
END

IF ~~ pae2
SAY @30 = @31 = @32
++ @33 + pae2.1
END

IF ~~ pae2.1
SAY @34 = @35 = @36 = @37 = @38 = @39
++ @40 EXIT
END

END
