
// This is Fay's expansion dialogue file.

APPEND RJFAY

// Park Fay

IF WEIGHT #-99 ~G("RJXPN",1)
                G("RJParkFY",0)~ xpfypark
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("RJParkFY","GLOBAL",1)
                        SetGlobal("RJXPFY01","GLOBAL",2)
                        RemoveFamiliar()
                        ChangeEnemyAlly(Myself,NEUTRAL)
                        IncrementGlobal("RJCntParked","GLOBAL",1)
                        EscapeAreaMove("AR1307",1182,1047,12)~ EXIT
END

// Player-initiated dialogue

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkFY",1)~ xpfy
SAY @100
++ @103 EXIT
++ @101 + xpfy1
++ @102 + xpfy2
END

IF ~~ xpfy1
SAY @110 = @111 = @112
++ @113 + xpfy1.1
END

IF ~~ xpfy1.1
SAY @114 = @115 = @116 = @117
++ @118 + xpfy1.2
END

IF ~~ xpfy1.2
SAY @119 = @120
++ @121 EXIT
END

IF ~~ xpfy2
SAY @130 = @131
++ @132 + xpfy2.1
END

IF ~~ xpfy2.1
SAY @133 = @134
++ @135 + xpfy2.2
END

IF ~~ xpfy2.2
SAY @136
++ @137 EXIT
END

END
