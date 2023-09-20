
//  Sirene #1 - SoA - Knickers

CHAIN IF ~Global("RJFASIB1","LOCALS",0)
          InParty("C0Sirene")
          See("C0Sirene")
          !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN BRJFAY RJFASIB1
@520 DO ~SetGlobal("RJFASIB1","LOCALS",1)~
== BC0SIRE2 @521 = @522 = @523 = @524
== BRJFAY @525 = @526 = @527 = @528
== BC0SIRE2 @529
END
IF ~~ THEN EXIT

//  Sirene #1 - ToB - Knickers Part 2

CHAIN IF ~Global("RJFASIB5","LOCALS",0)
          InParty("C0Sirene")
          See("C0Sirene")
          !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFASIB5
@1520 DO ~SetGlobal("RJFASIB5","LOCALS",1)~
== BC0SIR25 @1521
== BRJFAY25 @1522
== BC0SIR25 @1523 = @1524
== BRJFAY25 @1525 = @1526
== BC0SIR25 @1527
== BRJFAY25 @1528 = @1529
== BC0SIR25 @1530
== BRJFAY25 @1531 = @1532 = @1533
== BC0SIR25 @1534
== BRJFAY25 @1535
END
IF ~~ THEN EXIT
