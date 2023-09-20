
//  Amber #1 - SoA - Prophecy

CHAIN IF ~Global("RJFAAMB1","LOCALS",0)
          InParty("M#AMBER")
          See("M#AMBER")
          !StateCheck("M#AMBER",CD_STATE_NOTVALID)~ THEN BRJFAY RJFAAMB1
@480 DO ~SetGlobal("RJFAAMB1","LOCALS",1)~
== BM#AMBER @481 = @482 = @483
== BRJFAY @484
== BM#AMBER @485 = @486 = @487 = @488
== BRJFAY @489 = @490 = @491
END
IF ~~ THEN EXIT

//  Amber #1 - ToB - Heat

CHAIN IF ~Global("RJFAAMB5","LOCALS",0)
          InParty("M#AMBER")
          See("M#AMBER")
          !StateCheck("M#AMBER",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFAAMB5
@1480 DO ~SetGlobal("RJFAAMB5","LOCALS",1)~
== BM#AMB25 @1481
== BRJFAY25 @1482
== BRJFAY25 IF ~G("RJAnnahRomanceActive",2)~ THEN @1483
== BRJFAY25 @1484 = @1485
== BM#AMB25 @1486
== BRJFAY25 @1487
== BM#AMB25 @1488 = @1489 = @1490
== BRJFAY25 @1491
END
IF ~~ THEN EXIT
