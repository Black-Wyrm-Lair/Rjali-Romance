
//  Contribution to SOA1 group chat

EXTEND_BOTTOM RJPLAY0 0
IF ~InParty("Imoen2") G("RJSOA1IM",0)~ THEN DO ~SetGlobal("RJSOA1IM","GLOBAL",1)~ EXTERN IMOEN2J RjaliGroupSOA1.IM
IF ~G("RJParkIM",2)~ THEN DO ~SetGlobal("RJParkIM","GLOBAL",1)~ EXTERN IMOEN2J RjaliGroupSOA1.IM
END

CHAIN IMOEN2J RjaliGroupSOA1.IM
@433 DO ~IncrementGlobal("RJGather","GLOBAL",-1)~
== RJPLAY0 @432
== IMOEN2J @434 = @435
== RJPLAY2 @436
== IMOEN2J @437 = @438 = @439
== RJPLAY4 IF ~G("RJRosCnt",5)~ THEN @440
== RJPLAY3 IF ~G("RJRosCnt",4)~ THEN @440
== RJPLAY0 IF ~G("RJRosCnt",3)~ THEN @440
== IMOEN2J @441
== RJPLAY2 @442
== IMOEN2J @443 = @444
== RJPLAY0 @445
END
IF ~~ THEN EXTERN RJPLAY0 0

//  Scout

CHAIN
IF WEIGHT #-5 ~G("RjaliImoenScout",1)~ THEN PLAYER1 RjaliImoenScout
@49
== RJALIJ @0
== IMOEN2J @290
== RJALIJ @291
== IMOEN2J @292 = @293
== RJALIJ @294 = @295
== IMOEN2J @296 = @297
== RJALIJ @298 = @299 = @313
== IMOEN2J @300 = @301 = @302
== RJALIJ @303 = @304 = @305
== PLAYER1 @306
== RJALIJ @307
== IMOEN2J @308 = @309
== RJALIJ @310
== IMOEN2J @311
== RJALIJ @312 DO ~AddJournalEntry(@9011,INFO)
                   SetGlobal("RjaliImoenScout","GLOBAL",2)
                   GiveItemCreate("RJRNGIM","Imoen2",0,0,0)
                   SetGlobal("RJWedded","LOCALS",1)
                   IncrementGlobal("RJCntWedded","GLOBAL",1)
                   SetGlobal("RjaliScouts","GLOBAL",1)~
EXIT
