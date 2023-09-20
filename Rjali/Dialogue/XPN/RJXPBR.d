
// This is Branwen's expansion dialogue file.

APPEND O#BRA25P

IF WEIGHT #-99 ~G("RJParkBR",0)
                !G("O#BranRomanceActive",2)
                G("RJXPN",1)~ pbr8
SAY @5 = @4
++ @6 DO ~EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-99 ~G("RJParkBR",0)
                G("O#BranRomanceActive",2)
                G("RJXPN",1)~ pbr9
SAY @2
++ @3 DO ~SetGlobal("RJParkBR","GLOBAL",1)
          SetGlobal("KickedOut","LOCALS",1)
          SetGlobal("RJJoin","LOCALS",1)
          SetGlobal("RJXPBR01","GLOBAL",2)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1307",629,440,0)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkBR",1)~ pbr
SAY @0
++ @1 EXIT
++ @7 + pbr1
+ ~InMyArea("KPCHAP01")~ + @8 + pbr2
+ ~!InMyArea("KPCHAP01")~ + @8 + pbr3
END

IF ~~ pbr1
SAY @100 = @101 = @102
++ @103 + pbr1.1
END

IF ~~ pbr1.1
SAY @104 = @105 = @106
++ @107 EXIT
END

IF ~~ pbr2
SAY @120 = @121 = @122
++ @123 + pbr2.1
END

IF ~~ pbr2.1
SAY @124 = @125
++ @126 EXIT
END

IF ~~ pbr3
SAY @140 = @141 = @142 = @143
++ @144 + pbr3.1
END

IF ~~ pbr3.1
SAY @145 = @146 = @147
++ @148 EXIT
END

END
