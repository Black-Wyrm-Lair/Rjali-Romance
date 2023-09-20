
// This is Annah's expansion dialogue file. (romanced)

APPEND RJAN25P

IF WEIGHT #-99 ~G("RJParkAN",0)
                G("RJXPN",1)~ pan9
SAY @2
++ @3 DO ~SetGlobal("RJParkAN","GLOBAL",1)
          SetGlobal("RJJoin","LOCALS",1)
          SetGlobal("RJXPAN01","GLOBAL",2)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1307",2003,1172,0)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkAN",1)~ pan
SAY @0
++ @1 EXIT
++ @30 GOTO pan1
++ @40 GOTO pan2
END

IF ~~ pan1
SAY @31 = @32 = @33
++ @34 + pan1.1
END

IF ~~ pan1.1
SAY @35 = @36
++ @37 EXIT
END

IF ~~ pan2
SAY @41 = @42
++ @43 EXIT
END

END

// This is Annah's expansion dialogue file. (unromanced)

APPEND RJPSTAN

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ panu
SAY @10
++ @11 EXIT
++ @12 + panu1
END

IF ~~ panu1
SAY @13 = @14 = @15 = @16
++ @17 EXIT
END

END
