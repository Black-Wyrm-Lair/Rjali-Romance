
// This is Tyris's expansion dialogue file.

APPEND G#TRS25P

IF WEIGHT #-99 ~G("RJParkTY",0)
                !G("G#TF.TyrisRomanceActive",2)
                G("RJXPN",1)~ pty8
SAY @4
++ @5 DO ~EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkTY",0)
                G("G#TF.TyrisRomanceActive",2)
                G("RJXPN",1)~ pty9
SAY @2
++ @3 DO ~SetGlobal("RJParkTY","GLOBAL",1)
          SetGlobal("RJJoin","LOCALS",1)
          SetGlobal("RJXPTY01","GLOBAL",2)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1306",922,1280,8)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkTY",1)~ pty
SAY @0
++ @1 EXIT
++ @6 + pty1
++ @7 + pty2
END

IF ~~ pty1
SAY @100 = @101 = @102
++ @103 + pty1.1
END

IF ~~ pty1.1
SAY @104 = @105 = @106
++ @107 EXIT
END

IF ~~ pty2
SAY @120 = @121
++ @122 + pty2.1
END

IF ~~ pty2.1
SAY @123 = @124 = @125
++ @126 EXIT
END

END
