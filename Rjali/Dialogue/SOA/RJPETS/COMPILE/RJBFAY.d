
//  Petsy #1 - SoA - Directions

CHAIN IF ~Global("RJFAPEB1","LOCALS",0)
          InParty("L3Petsy")
          See("L3Petsy")
          !StateCheck("L3Petsy",CD_STATE_NOTVALID)~ THEN BRJFAY RJFAPEB1
@500 DO ~SetGlobal("RJFAPEB1","LOCALS",1)~
== L3PETSYB @501
== BRJFAY @502
== L3PETSYB @503
== BRJFAY @504
== L3PETSYB @505 = @506
== BRJFAY @507 = @508
== L3PETSYB @509 = @510
== BRJFAY @511 = @512 = @513 = @514
== L3PETSYB @515
END
IF ~~ THEN EXIT

//  Petsy #1 - ToB - x

CHAIN IF ~Global("RJFAPEB5","LOCALS",0)
          InParty("L3Petsy")
          See("L3Petsy")
          !StateCheck("L3Petsy",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFAPEB5
@1500 DO ~SetGlobal("RJFAPEB5","LOCALS",1)~
== L3PET25B @1501 = @1502 = @1503
== BRJFAY25 @1504
== L3PET25B @1505 = @1506 = @1507
== BRJFAY25 @1508
== L3PET25B @1509 = @1510
== BRJFAY25 @1511
== L3PET25B @1512
END
IF ~~ THEN EXIT
