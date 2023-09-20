
// This is Viconia's expansion dialogue file.

APPEND VICON25P

IF WEIGHT #-99 ~G("RJParkVI",0)
                !G("ViconiaRomanceActive",2)
                G("RJXPN",1)~ pvi8
SAY @4
++ @5 DO ~EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkVI",0)
                G("ViconiaRomanceActive",2)
                G("RJXPN",1)~ pvi9
SAY @2
++ @3 DO ~SetGlobal("RJParkVI","GLOBAL",1)
          SetGlobal("RJXPVI01","GLOBAL",2)
          SetGlobal("RJJoin","LOCALS",1)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1306",880,259,2)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkVI",1)~ pvi
SAY @0
++ @1 EXIT
++ @6 + pvi1
++ @7 + pvi2
END

IF ~~ pvi1
SAY @100 = @101 = @102
++ @103 + pvi1.1
END

IF ~~ pvi1.1
SAY @104 = @105
++ @106 EXIT
END

IF ~~ pvi2
SAY @120 = @121 = @122 = @123
++ @124 + pvi2.1
END

IF ~~ pvi2.1
SAY @125 = @126
++ @127 + pvi2.2
END

IF ~~ pvi2.2
SAY @128 = @129 = @130
++ @131 EXIT
END

END
