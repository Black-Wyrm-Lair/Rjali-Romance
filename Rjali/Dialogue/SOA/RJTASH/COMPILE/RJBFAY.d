
//  Tashia #1 - SoA - Riddles

CHAIN IF ~Global("RJFATAB1","LOCALS",0)
          InParty("Tashia")
          See("Tashia")
          !StateCheck("Tashia",CD_STATE_NOTVALID)~ THEN BRJFAY RJFATAB1
@360 DO ~SetGlobal("RJFATAB1","LOCALS",1)~
== BTASHIA @361
== BRJFAY @362
== BTASHIA @363
== BRJFAY @364
== BTASHIA @365
== BRJFAY @366
== BTASHIA @367 = @368 = @369
== BRJFAY @370
== BTASHIA @371
== BRJFAY @372
END
IF ~~ THEN EXIT

//  Tashia #1 - ToB - Koan

CHAIN IF ~Global("RJFATAB5","LOCALS",0)
          InParty("Tashia")
          See("Tashia")
          !StateCheck("Tashia",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFATAB5
@1360 DO ~SetGlobal("RJFATAB5","LOCALS",1)~
== BTASHI25 @1361
== BRJFAY25 @1362 = @1363 = @1364
== BTASHI25 @1365 = @1366
== BRJFAY25 IF ~InParty("Rasaad")~ THEN @1367
== BRJFAY25 IF ~!InParty("Rasaad")~ THEN @1368
== BTASHI25 @1369
== BRJFAY25 @1370
== BTASHI25 @1371
END
IF ~~ THEN EXIT
