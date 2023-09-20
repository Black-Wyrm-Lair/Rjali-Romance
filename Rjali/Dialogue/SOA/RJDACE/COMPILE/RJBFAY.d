
//  Dace #1 - SoA - Broody

CHAIN IF ~Global("RJFADAB1","LOCALS",0)
          InParty("T#Dace")
          See("T#Dace")
          !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN BRJFAY RJFADAB1
@440 DO ~SetGlobal("RJFADAB1","LOCALS",1)~
== BT#DACE @441 = @442 = @443
== BRJFAY @444
== BT#DACE @445 = @446
== BRJFAY @447
== BT#DACE @448
== BRJFAY @449
== BT#DACE @450 = @451
== BRJFAY @452
== BT#DACE @453
END
IF ~~ THEN EXIT

//  Dace #1 - ToB - Nature

CHAIN IF ~Global("RJFADAB5","LOCALS",0)
          InParty("T#Dace")
          See("T#Dace")
          !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFADAB5
@1440 DO ~SetGlobal("RJFADAB5","LOCALS",1)~
== BT#DAC25 @1441 = @1442
== BRJFAY25 @1443
== BT#DAC25 @1444
== BRJFAY25 @1445
== BT#DAC25 @1446
== BRJFAY25 @1447 = @1448 = @1449
== BT#DAC25 @1450 = @1451
== BRJFAY25 @1452 = @1453
== BT#DAC25 @1454
== BRJFAY25 @1455 = @1456 = @1457 = @1458
END
IF ~~ THEN EXIT
