
// Fay's Interjections

// Crazy Celvan

CHAIN IF WEIGHT #-1
~G("RJFayBig",1)
G("RJParkFY",0)
See("RJFay")
Global("RJFayReactionCelvan","AR0300",0)~ THEN CELVAN rjfyc1
@230
== RJFAY @231 DO ~SetGlobal("RJFayReactionCelvan","AR0300",1)~
END CELVAN 1

// Imoen introduction

I_C_T3 RJALIJ 0 RJIMINFY
== PLAYER1 IF ~G("RJParkFY",0)~ THEN @270
== IMOEN2J IF ~G("RJParkFY",0)~ THEN @271
== RJFAY IF ~G("RJParkFY",0)~ THEN @272
END

// The Underdark - Drow Avatars

I_C_T UDSILVER 35 RJFayUDSILVER35
== RJFAY IF ~G("RJFayBig",1) G("RJParkFY",0)~ THEN @234
END

// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #2
+ ~G("RJFayBig",1) G("RJParkFY",0)~ + @235 + RJFayVoloBio2
END

CHAIN SARVOLO RJFayVoloBio2
@236
== RJFAY IF ~G("RJFayBig",1) G("RJParkFY",0)~ THEN @237
EXTERN SARVOLO 9

// Fay and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~G("RJFayBig",1) G("RJParkFY",0) G("RJFaySolarPers",0)~ DO ~SetGlobal("RJFaySolarPers","GLOBAL",1)~ EXTERN RJFAY RJFaySolarPers
END

CHAIN RJFAY RJFaySolarPers
@280
END
++ @281 EXTERN RJFAY RJFaySolarPers1.1
++ @282 EXTERN RJFAY RJFaySolarPers1.1

CHAIN RJFAY RJFaySolarPers1.1
@283 = @284 = @285
END
COPY_TRANS FINSOL01 27

// PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~G("RJFayBig",1) G("RJParkFY",0) G("RJFaySolarLeave",0)~ DO ~SetGlobal("RJFaySolarLeave","GLOBAL",1)~ EXTERN RJFAY RJFaySolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~G("RJFayBig",1) G("RJParkFY",0) G("RJFaySolarLeave",0)~ DO ~SetGlobal("RJFaySolarLeave","GLOBAL",1)~ EXTERN RJFAY RJFaySolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~G("RJFayBig",1) G("RJParkFY",0) G("RJFaySolarLeave",0)~ DO ~SetGlobal("RJFaySolarLeave","GLOBAL",1)~ EXTERN RJFAY RJFaySolarLeave
END

CHAIN RJFAY RJFaySolarLeave
@286
END
COPY_TRANS FINSOL01 29

// PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~G("RJFayBig",1) G("RJParkFY",0) G("RJFaySolarStay",0)~ DO ~SetGlobal("RJFaySolarStay","GLOBAL",1)~ EXTERN RJFAY RJFaySolarStay
END

CHAIN RJFAY RJFaySolarStay
@287
END
++ @288 EXTERN RJFAY RJFaySolarStay1.1

CHAIN RJFAY RJFaySolarStay1.1
@289
COPY_TRANS FINSOL01 32

// Before going down the rabbit hole

EXTEND_BOTTOM PLAYER1 33
IF ~G("RJFayBig",1) G("RJParkFY",0)~
EXTERN PLAYER1 RJFayPlayer1SOA3
END

CHAIN PLAYER1 RJFayPlayer1SOA3
@70
DO ~SetGlobal("RJFayTreeOfLife","GLOBAL",1)~
END
++ @71 EXTERN RJFAY RJFayPlayer1SOA3.1

CHAIN RJFAY RJFayPlayer1SOA3.1
@72 = @73 = @74
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 RJFayIrenicusIsDead1
== RJFAY IF ~G("RJFayBig",1) G("RJParkFY",0)~ THEN @232
END

// Entering Hell with the rest of the party.

I_C_T PLAYER1 25 RJFayEnteringHell1
== RJFAY IF ~G("RJFayBig",1) G("RJParkFY",0)~ THEN @233
END

// Battling Irenicus. There are four identical interjections for four dialogue states.

I_C_T HELLJON 7 RJFayThirdBattleWithIrenicus1
== RJFAY IF ~G("RJFayBig",1) G("RJParkFY",0) !StateCheck("RJFay",CD_STATE_NOTVALID)~ THEN @75
END

I_C_T HELLJON 8 RJFayThirdBattleWithIrenicus1
== RJFAY IF ~G("RJFayBig",1) G("RJParkFY",0) !StateCheck("RJFay",CD_STATE_NOTVALID)~ THEN @75
END

I_C_T HELLJON 9 RJFayThirdBattleWithIrenicus1
== RJFAY IF ~G("RJFayBig",1) G("RJParkFY",0) !StateCheck("RJFay",CD_STATE_NOTVALID)~ THEN @75
END

I_C_T HELLJON 10 RJFayThirdBattleWithIrenicus1
== RJFAY IF ~G("RJFayBig",1) G("RJParkFY",0) !StateCheck("RJFay",CD_STATE_NOTVALID)~ THEN @75
END
