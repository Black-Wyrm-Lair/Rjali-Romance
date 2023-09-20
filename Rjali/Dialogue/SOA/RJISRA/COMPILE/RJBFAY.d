
//  Isra #1 - SoA - Charity

CHAIN IF ~Global("RJFAISB1","LOCALS",0)
          InParty("rh#Isra2")
          See("rh#Isra2")
          !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN BRJFAY RJFAISB1
@460 DO ~SetGlobal("RJFAISB1","LOCALS",1)~
== BRJFAY @461
== BRH#ISR @462 = @463 = @464 = @465
== BRJFAY @466
== BRH#ISR @467 = @468
== BRJFAY @469 = @470
== BRH#ISR @471
END
IF ~~ THEN EXIT

//  Isra #1 - ToB - Mystery

CHAIN IF ~Global("RJFAISB5","LOCALS",0)
          InParty("rh#Isra2")
          See("rh#Isra2")
          !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFAISB5
@1460 DO ~SetGlobal("RJFAISB5","LOCALS",1)~
== BRJFAY25 @1461 = @1462
== BRH#IS25 @1463 = @1464
== BRJFAY25 @1465
== BRH#IS25 @1466
== BRJFAY25 @1467
== BRH#IS25 @1468
== BRJFAY25 @1469 = @1470
== BRH#IS25 @1471
END
IF ~~ THEN EXIT
