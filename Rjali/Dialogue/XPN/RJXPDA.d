
// This is Dace's expansion dialogue file.

APPEND T#DAC25P

IF WEIGHT #-99 ~G("RJParkDA",0)
                !G("T#DaceRomanceActive",2)
                G("RJXPN",1)~ pda8
SAY @4
++ @5 DO ~EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkDA",0)
                G("T#DaceRomanceActive",2)
                G("RJXPN",1)~ pda9
SAY @2
++ @3 DO ~SetGlobal("RJParkDA","GLOBAL",1)
          SetGlobal("T#DaceJoined","GLOBAL",0)
          SetGlobal("RJJoin","LOCALS",1)
          SetGlobal("RJXPDA01","GLOBAL",2)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1304",744,3294,0)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkDA",1)~ pda
SAY @0
IF ~~ THEN REPLY @1 EXIT
IF ~G("RJXPDA1",0)~ THEN REPLY @100 GOTO pda1
IF ~~ THEN REPLY @101 GOTO pda2
END

IF ~~ pda1
SAY @110 = @111 = @112
++ @113 + pda1.1
END

IF ~~ pda1.1
SAY @114
++ @115 + pda1.2
END

IF ~~ pda1.2
SAY @116 = @117 = @123 = @124
++ @125 + pda1.3
END

IF ~~ pda1.3
SAY @126 = @118
++ @119 + pda1.4
END

IF ~~ pda1.4
SAY @120 = @121
IF ~~ THEN REPLY @122 DO ~SetGlobal("RJXPDA1","GLOBAL",1)~ EXIT
END

IF ~~ pda2
SAY @102 = @103
++ @104 + pda2.1
END

IF ~~ pda2.1
SAY @105 = @106
++ @107 EXIT
END

END
