
// Yves trades tales with Dace

EXTEND_BOTTOM RJPSTYV 0
IF ~InParty("T#Dace") G("RJYVDA",0)~ THEN REPLY @400 DO ~SetGlobal("RJYVDA","GLOBAL",1)~ EXTERN T#DACEJ RJYVDA
END

CHAIN IF ~~ THEN T#DACEJ RJYVDA
@401 = @402 = @403 = @404 = @405 = @406 = @407 = @408
== RJPSTYV @409 = @410 = @411 = @412
== T#DACEJ @413
== RJPSTYV @414
== T#DACEJ @415
END
IF ~~ THEN EXTERN RJPSTYV 0

EXTEND_BOTTOM RJPSTYV 1
IF ~InParty("T#Dace") G("RJYVDA",0)~ THEN REPLY @400 DO ~SetGlobal("RJYVDA","GLOBAL",1)~ EXTERN T#DAC25J RJYVDAT
END

CHAIN IF ~~ THEN T#DAC25J RJYVDAT
@401 = @402 = @403 = @404 = @405 = @406 = @407 = @408
== RJPSTYV @409 = @410 = @411 = @412
== T#DAC25J @413
== RJPSTYV @414
== T#DAC25J @415
END
IF ~~ THEN EXTERN RJPSTYV 1