
//  Sheena #1 - SoA - T

CHAIN IF ~Global("RJFASHB1","LOCALS",0)
          InParty("K#Sheena")
          See("K#Sheena")
          !StateCheck("K#Sheena",CD_STATE_NOTVALID)~ THEN BRJFAY RJFASHB1
@550 DO ~SetGlobal("RJFASHB1","LOCALS",1)~
== BSHEENA @551 = @552
== BRJFAY @553 = @554
== BSHEENA @555 = @556
== BRJFAY @557 = @558
== BSHEENA @559 = @560
== BRJFAY @561
END
IF ~~ THEN EXIT

//  Sheena #1 - ToB - L

CHAIN IF ~Global("RJFASHB5","LOCALS",0)
          InParty("K#Sheena")
          See("K#Sheena")
          !StateCheck("K#Sheena",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFASHB5
@1550 DO ~SetGlobal("RJFASHB5","LOCALS",1)~
== BRJFAY25 @1551 = @1552
== BSHEEN25 @1553 = @1554
== BRJFAY25 @1555
== BSHEEN25 @1556
== BRJFAY25 @1557 = @1558
== BSHEEN25 @1559 = @1560
== BRJFAY25 @1561 = @1562
END
IF ~~ THEN EXIT
