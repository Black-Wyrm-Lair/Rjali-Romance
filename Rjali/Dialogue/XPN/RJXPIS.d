
// This is Isra's expansion dialogue file.

APPEND RH#IS25P

IF WEIGHT #-99 ~G("RJParkIS",0)
                !G("rh#IsraRomanceActive",2)
                G("RJXPN",1)~ pis8
SAY @4
++ @5 DO ~EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkIS",0)
                G("rh#IsraRomanceActive",2)
                G("RJXPN",1)~ pis9
SAY @2
++ @3 DO ~SetGlobal("RJParkIS","GLOBAL",1)
          SetGlobal("RJJoin","LOCALS",1)
          SetGlobal("RJXPIS01","GLOBAL",2)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1304",1286,2889,0)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkIS",1)~ pis
SAY @0
++ @1 EXIT
++ @6 + pis1
IF ~G("RJXPIS1",0)~ THEN REPLY @7 GOTO pis2
END

IF ~~ pis1
SAY @100 = @101
++ @102 + pis1.1
END

IF ~~ pis1.1
SAY @103 = @104 = @105 = @106 = @107
++ @108 EXIT
END

IF ~~ pis2
SAY @120
++ @121 + pis2.1
END

IF ~~ pis2.1
SAY @122 = @123 = @124
IF ~~ THEN REPLY @125 DO ~SetGlobal("RJXPIS1","GLOBAL",1)~ EXIT
END

END
