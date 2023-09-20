
// This is Ninde's expansion dialogue file.

APPEND LK#NI25P

IF WEIGHT #-99 ~G("RJParkNI",0)
                !G("LK#NindeRomanceActive",2)
                G("RJXPN",1)~ pni8
SAY @4
++ @5 DO ~EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkNI",0)
                G("LK#NindeRomanceActive",2)
                G("RJXPN",1)~ pni9
SAY @2
++ @3 DO ~SetGlobal("RJParkNI","GLOBAL",1)
          SetGlobal("KickedOut","LOCALS",1)
          SetGlobal("RJJoin","LOCALS",1)
          SetGlobal("RJXPNI01","GLOBAL",2)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1307",1366,1078,0)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkNI",1)~ pni
SAY @0
++ @1 EXIT
++ @6 + pni1
++ @7 + pni2
END

IF ~~ pni1
SAY @100 = @101 = @102
++ @103 + pni1.1
END

IF ~~ pni1.1
SAY @104 = @105 = @106
++ @107 EXIT
END

IF ~~ pni2
SAY @120 = @121 = @122
++ @123 + pni2.1
END

IF ~~ pni2.1
SAY @124 = @125 = @126 = @127
++ @128 EXIT
END

END
