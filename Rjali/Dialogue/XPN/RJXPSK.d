
// This is Skie's expansion dialogue file.

APPEND 1XSKI25P

IF WEIGHT #-99 ~G("RJParkSK",0)
                !G("SkieRomanceActive",2)
                G("RJXPN",1)~ psk8
SAY @4
++ @5 DO ~EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkSK",0)
                G("SkieRomanceActive",2)
                G("RJXPN",1)~ psk9
SAY @2
++ @3 DO ~SetGlobal("RJParkSK","GLOBAL",1)
          SetGlobal("KickedOut","LOCALS",1)
          SetGlobal("RJJoin","LOCALS",1)
          SetGlobal("RJXPSK01","GLOBAL",2)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1307",305,919,12)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkSK",1)~ psk
SAY @0
++ @1 EXIT
++ @6 GOTO psk0
END

IF ~~ psk0
SAY @100
++ @101 + psk1
++ @102 + psk2
END

IF ~~ psk1
SAY @103 = @104 = @105
++ @106 + psk1.1
END

IF ~~ psk1.1
SAY @107
++ @108 EXIT
END

IF ~~ psk2
SAY @110
++ @111 + psk2.1
END

IF ~~ psk2.1
SAY @112 = @113 = @114 = @115
++ @116 EXIT
END

END
