
// This is Imoen's expansion dialogue file.

APPEND IMOEN25P

IF WEIGHT #-99 ~G("RJXPIM01",1)
                G("RJParkIM",0)
                !G("ImoenRomanceActive",2)
                G("RJXPN",1)~ pim8
SAY @4
++ @5 DO ~SetGlobal("RJXPIM01","GLOBAL",2)
          EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJXPIM01",1)
                G("RJParkIM",0)
                G("ImoenRomanceActive",2)
                G("RJXPN",1)~ pim9
SAY @2
++ @3 DO ~SetGlobal("RJParkIM","GLOBAL",1)
          SetGlobal("RJXPIM01","GLOBAL",2)
          SetGlobal("RJJoin","LOCALS",1)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1306",771,823,14)~ EXIT
END

IF WEIGHT #-99 ~G("RJXPN",1)
                IsGabber(Player1)
                G("RJParkIM",1)~ pim
SAY @0
++ @1 EXIT
++ @6 + pim1
++ @7 + pim2
END

IF ~~ pim1
SAY @10 = @11 = @12
++ @13 +pim1.1
END

IF ~~ pim1.1
SAY @14 = @15 = @16
++ @17 EXIT
END

IF ~~ pim2
SAY @30 = @31 = @32
++ @33 +pim2.1
END

IF ~~ pim2.1
SAY @34 = @35 = @36
++ @37 EXIT
END

END
