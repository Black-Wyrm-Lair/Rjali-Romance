
//  Tyris #1 - SoA - Guldur

CHAIN IF ~Global("RJFATYB1","LOCALS",0)
          InParty("G#Tyris")
          See("G#Tyris")
          !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN BRJFAY RJFATYB1
@380 DO ~SetGlobal("RJFATYB1","LOCALS",1)~
== BRJFAY @381
== BG#TYRIS @382
== BRJFAY @383 = @384 = @385
== BG#TYRIS @386
== BRJFAY @387 = @388 = @389
== BG#TYRIS @390
== BRJFAY @391
END
IF ~~ THEN EXIT

//  Tyris #1 - ToB - Leto

CHAIN IF ~Global("RJFATYB5","LOCALS",0)
          InParty("G#Tyris")
          See("G#Tyris")
          !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFATYB5
@1380 DO ~SetGlobal("RJFATYB5","LOCALS",1)~
== BRJFAY25 @1381
== BG#TRS25 @1382 = @1383 = @1384 = @1385
== BRJFAY25 @1386 = @1387
== BG#TRS25 @1388 = @1389 = @1390 = @1391
== BRJFAY25 @1392 = @1393
END
IF ~~ THEN EXIT
