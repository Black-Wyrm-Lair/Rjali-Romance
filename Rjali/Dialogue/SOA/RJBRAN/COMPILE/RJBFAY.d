
//  Branwen #1 - SoA - Tangles

CHAIN IF ~Global("RJFABRB1","LOCALS",0)
          InParty("O#Bran")
          See("O#Bran")
          !StateCheck("O#Bran",CD_STATE_NOTVALID)~ THEN BRJFAY RJFABRB1
@0 DO ~SetGlobal("RJFABRB1","LOCALS",1)~
== O#BBRAN @1 = @2 = @3
== BRJFAY @4 = @5
== O#BBRAN @6
== BRJFAY @7
== O#BBRAN @8
== BRJFAY @9 = @10 = @11
== O#BBRAN @12 = @13
== BRJFAY @14 = @15 = @16
END
IF ~~ THEN EXIT

//  Branwen #1 - ToB - Looking Back

CHAIN IF ~Global("RJFABRB5","LOCALS",0)
          InParty("O#Bran")
          See("O#Bran")
          !StateCheck("O#Bran",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFABRB5
@1000 DO ~SetGlobal("RJFABRB5","LOCALS",1)~
== BRJFAY25 @1001
== O#BBRA25 @1002 = @1003
== BRJFAY25 @1004 = @1005
== O#BBRA25 @1006 = @1007 = @1008
== BRJFAY25 @1009
== O#BBRA25 @1010
END
IF ~~ THEN EXIT
