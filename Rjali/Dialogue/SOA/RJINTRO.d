
//  Insertion point for Imoen introductions

REPLACE RJALIJ

IF ~~ 0
SAY @52
IF ~~ THEN EXTERN PLAYER1 RJIntro99
END

END

CHAIN PLAYER1 RJIntro99
@53
EXIT

//  Introduce Imoen to party members

CHAIN IF ~G("RJIMIntro",1)~ THEN PLAYER1 RJIntroductions
@50 DO ~SetGlobal("RJIMIntro","GLOBAL",2)~
== IMOEN2J @51
END
IF ~~ THEN EXTERN RJALIJ 0
