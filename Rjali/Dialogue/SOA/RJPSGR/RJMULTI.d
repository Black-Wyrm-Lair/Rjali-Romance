
//  Contribution to SOA1 group chat

EXTEND_BOTTOM RJPLAY0 0
IF ~InParty("RJGrace") G("RJSOA1GR",0)~ THEN DO ~SetGlobal("RJSOA1GR","GLOBAL",1)~ EXTERN RJGRACEJ RjaliGroupSOA1.GR
IF ~G("RJParkGR",2)~ THEN DO ~SetGlobal("RJParkGR","GLOBAL",1)~ EXTERN RJGRACEJ RjaliGroupSOA1.GR
END

CHAIN RJGRACEJ RjaliGroupSOA1.GR
@1640 = @1641 = @1642 DO ~IncrementGlobal("RJGather","GLOBAL",-1)~
== RJPLAY0 @1643
== RJGRACEJ @1644
== RJPLAY0 @1645
== RJGRACEJ @1646
END
IF ~~ THEN EXTERN RJPLAY0 0

//  Scout

CHAIN
IF WEIGHT #-8 ~G("RjaliGraceScout",1)~ THEN PLAYER1 RjaliGraceScout
@49
== RJALIJ @0
== RJGRACEJ @1610
== RJALIJ @1611
== RJGRACEJ @1612 = @1613
== RJGRACEJ IF ~InMyArea("RJRavel")~ THEN @1614
== RJALIJ @1615 = @1616
== RJGRACEJ @1617
== RJALIJ @1618
== RJGRACEJ @1619 = @1620
== RJALIJ @1621 = @1622
== RJGRACEJ @1623
== RJALIJ @1624
== RJGRACEJ @1625 = @1626
== RJALIJ @1627 = @1628 = @1629
== PLAYER1 @1630
== RJALIJ @1631 DO ~AddJournalEntry(@9030,INFO) SetGlobal("RjaliGraceScout","GLOBAL",2) SetGlobal("RjaliScouts","GLOBAL",1)~
EXIT
