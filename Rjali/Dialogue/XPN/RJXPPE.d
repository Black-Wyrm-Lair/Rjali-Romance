
// This is Petsy's expansion dialogue file.

APPEND L3PET25P

IF WEIGHT #-99 ~G("RJParkPE",0)
                !G("L3PetsyRomanceActive",2)
                G("RJXPN",1)~ ppe8
SAY @4
++ @5 DO ~EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkPE",0)
                G("L3PetsyRomanceActive",2)
                G("RJXPN",1)~ ppe9
SAY @2
++ @3 DO ~SetGlobal("RJParkPE","GLOBAL",1)
          SetGlobal("KickedOut","LOCALS",1)
          SetGlobal("RJJoin","LOCALS",1)
          SetGlobal("RJXPPE01","GLOBAL",2)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1307",566,1059,0)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkPE",1)~ ppe
SAY @0
++ @1 EXIT
++ @6 + ppe1
++ @7 + ppe2
END

IF ~~ ppe1
SAY @100 = @101 = @102 = @103
++ @104 +ppe1.1
END

IF ~~ ppe1.1
SAY @105 = @106
++ @107 EXIT
END

IF ~~ ppe2
SAY @126 = @120 = @121
++ @122 +ppe2.1
END

IF ~~ ppe2.1
SAY @123 = @124
++ @125 EXIT
END

END
