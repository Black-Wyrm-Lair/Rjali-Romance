
//  Contribution to SOA1 group chat

EXTEND_BOTTOM RJPLAY0 0
IF ~InParty("RJRavel") G("RJSOA1RV",0)~ THEN DO ~SetGlobal("RJSOA1RV","GLOBAL",1)~ EXTERN RJRAVELJ RjaliGroupSOA1.RV
IF ~G("RJParkRV",2)~ THEN DO ~SetGlobal("RJParkRV","GLOBAL",1)~ EXTERN RJRAVELJ RjaliGroupSOA1.RV
END

CHAIN RJRAVELJ RjaliGroupSOA1.RV
@1680 = @1681 DO ~IncrementGlobal("RJGather","GLOBAL",-1)~
== RJPLAY0 @1682 = @1683 = @1684
== RJRAVELJ @1685 = @1686 = @1687
== RJPLAY0 @1688
== RJRAVELJ @1689 = @1690 = @1691
END
IF ~~ THEN EXTERN RJPLAY0 0

//  Scout

CHAIN
IF WEIGHT #-8 ~G("RjaliRavelScout",1)~ THEN PLAYER1 RjaliRavelScout
@49
== RJALIJ @0
== RJRAVELJ @1650
== RJALIJ @1651
== RJRAVELJ @1652 = @1653 = @1654 = @1655 = @1656 = @1657 = @1658
== RJALIJ @1659
== RJRAVELJ @1660
== RJALIJ @1661
== RJRAVELJ @1662
== RJALIJ @1663
== RJRAVELJ @1664 = @1665 = @1666
== RJALIJ @1667 = @1668 = @1669 = @1670
== PLAYER1 @1671 = @1672 = @1673 DO ~AddJournalEntry(@9031,INFO) SetGlobal("RjaliRavelScout","GLOBAL",2) SetGlobal("RjaliScouts","GLOBAL",1)~
EXIT
