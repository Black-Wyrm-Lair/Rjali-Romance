
// This is Fade's expansion dialogue file.

APPEND E3FAD25P

IF WEIGHT #-99 ~G("RJParkFA",0)
                G("RJXPFA01",1)
                !G("E3FADERomanceActive",2)
                G("RJXPN",1)~ pfa8
SAY @4
++ @5 DO ~SetGlobal("RJXPFA01","GLOBAL",2)
               EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkFA",0)
                G("RJXPFA01",1)
                G("E3FADERomanceActive",2)
                G("RJXPN",1)~ pfa9
SAY @2
++ @3 DO ~SetGlobal("RJParkFA","GLOBAL",1)
          SetGlobal("RJXPFA01","GLOBAL",2)
          SetGlobal("KickedOut","LOCALS",1)
          SetGlobal("RJJoin","LOCALS",1)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1305",2543,418,0)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkFA",1)~ pfa
SAY @0
++ @1 EXIT
++ @6 + pfa1
++ @7 + pfa2
END

IF ~~ pfa1
SAY @100 = @101
++ @102 + pfa1.1
END

IF ~~ pfa1.1
SAY @103 = @104
++ @105 EXIT
END

IF ~~ pfa2
SAY @120 = @121 = @122 = @123 = @124
++ @125 + pfa2.1
END

IF ~~ pfa2.1
SAY @126 = @127
++ @128 EXIT
END

END
