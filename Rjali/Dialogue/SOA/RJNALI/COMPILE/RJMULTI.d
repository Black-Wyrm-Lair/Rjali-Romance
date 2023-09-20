
//  Contribution to SOA1 group chat

EXTEND_BOTTOM RJPLAY0 0
IF ~InParty("Nalia") G("RJSOA1NA",0)~ THEN DO ~SetGlobal("RJSOA1NA","GLOBAL",1)~ EXTERN NALIAJ RjaliGroupSOA1.NA
IF ~G("RJParkNA",2)~ THEN DO ~SetGlobal("RJParkNA","GLOBAL",1)~ EXTERN NALIAJ RjaliGroupSOA1.NA
END

CHAIN NALIAJ RjaliGroupSOA1.NA
@500 = @501 DO ~IncrementGlobal("RJGather","GLOBAL",-1)~
== RJPLAY4 IF ~G("RJRosCnt",5) !G("RJPlay4",206)~ THEN @502 = @503
== RJPLAY3 IF ~G("RJRosCnt",4) !G("RJPlay3",206)~ THEN @502 = @503
== RJPLAY0 IF ~G("RJRosCnt",3) !G("RJPlay0",206)~ THEN @502 = @503
== RJPLAY1 IF ~G("RJRosCnt",3) G("RJPlay0",206)~ THEN @502 = @503
== NALIAJ @504
== RJPLAY1 IF ~!G("RJPlay1",206)~ THEN @505 = @506
== RJPLAY2 IF ~G("RJPlay1",206)~ THEN @505 = @506
== RJPLAY4 IF ~G("RJRosCnt",5) !G("RJPlay4",206)~ THEN @507
== RJPLAY3 IF ~G("RJRosCnt",4) !G("RJPlay3",206)~ THEN @507
== RJPLAY0 IF ~G("RJRosCnt",3) !G("RJPlay0",206)~ THEN @507
== RJPLAY1 IF ~G("RJRosCnt",3) G("RJPlay0",206)~ THEN @507
== NALIAJ @508
== RJPLAY0 IF ~!G("RJPlay0",206)~ THEN @509 = @510
== RJPLAY1 IF ~G("RJPlay0",206)~ THEN @509 = @510
== AERIEJ IF ~InMyArea("Aerie")~ THEN @600
== O#BRANJ IF ~InParty("O#Bran")~ THEN @512
== RJPLAY3 IF ~GGT("RJRosCnt",3) !G("RJPlay3",206)~ THEN @512
== RJPLAY4 IF ~G("RJRosCnt",5) !G("RJPlay4",206)~ THEN @513
END
IF ~~ THEN EXTERN RJPLAY0 0

//  Scout

CHAIN
IF WEIGHT #-7 ~G("RjaliNaliaScout",1)~ THEN PLAYER1 RjaliNaliaScout
@49
== RJALIJ @0
== NALIAJ @360
== RJALIJ @361
== NALIAJ @362
== RJALIJ @363
== NALIAJ @364
== RJALIJ @365 = @366
== NALIAJ @367
== RJALIJ @368
== NALIAJ IF ~GGT("RjaliOrphanCount",0)~ THEN @390
== NALIAJ @369
== RJALIJ @370
== NALIAJ @371
== RJALIJ @372 = @373
== NALIAJ @374 = @375 = @376
== RJALIJ @377
== NALIAJ @378 = @379
== RJALIJ @380 = @381 = @382 = @383 = @384
== PLAYER1 @385
== RJALIJ @387 = @388
== PLAYER1 @389 DO ~AddJournalEntry(@9022,INFO) SetGlobal("RjaliNaliaScout","GLOBAL",2) SetGlobal("RjaliScouts","GLOBAL",1)~
EXIT
