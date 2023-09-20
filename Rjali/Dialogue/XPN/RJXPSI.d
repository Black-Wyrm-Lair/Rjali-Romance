
// This is Sirene's expansion dialogue file.

APPEND C0SIR25P

IF WEIGHT #-99 ~G("RJParkSI",0)
                !G("C0SireneRomanceActive",2)
                G("RJXPN",1)~ psi8
SAY @4
++ @5 DO ~EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkSI",0)
                G("C0SireneRomanceActive",2)
                G("RJXPN",1)~ psi9
SAY @2
++ @3 DO ~SetGlobal("RJParkSI","GLOBAL",1)
          SetGlobal("KickedOut","LOCALS",1)
          SetGlobal("RJJoin","LOCALS",1)
          SetGlobal("RJXPSI01","GLOBAL",2)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1307",1626,1460,8)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkSI",1)~ psi
SAY @0
++ @1 EXIT
++ @6 + psi1
++ @7 + psi2
END

IF ~~ psi1
SAY @100 = @101 = @102
++ @103 + psi1.1
END

IF ~~ psi1.1
SAY @104 = @105 = @106
++ @107 EXIT
END

IF ~~ psi2
SAY @120 = @121 = @122
++ @123 + psi2.1
END

IF ~~ psi2.1
SAY @124 = @125 = @126
++ @127 EXIT
END

END
