
//  Contribution to SOA1 group chat

EXTEND_BOTTOM RJPLAY0 0
IF ~InParty("K#Sheena") G("RJSOA1SH",0)~ THEN DO ~SetGlobal("RJSOA1SH","GLOBAL",1)~ EXTERN SHEENAJ RjaliGroupSOA1.SH
IF ~G("RJParkSH",2)~ THEN DO ~SetGlobal("RJParkSH","GLOBAL",1)~ EXTERN SHEENAJ RjaliGroupSOA1.SH
END

CHAIN SHEENAJ RjaliGroupSOA1.SH
@1750 DO ~IncrementGlobal("RJGather","GLOBAL",-1)~
== SHEENAJ @1751 = @1752 = @1753 = @1754
== RJALIJ @1755 = @1756 = @1757
== SHEENAJ @1758 = @1759 = @1760 = @1761 = @1762
== RJALIJ @1763 = @1764 = @1765
== SHEENAJ @1766
== RJALIJ @1767
END
IF ~~ THEN EXTERN RJPLAY0 0

//  Scout

CHAIN
IF WEIGHT #-8 ~G("RjaliSheenaScout",1)~ THEN PLAYER1 RjaliSheenaScout
@49
== RJALIJ @0
== SHEENAJ @1775
== RJALIJ @1776 = @1777
== SHEENAJ @1778
== RJALIJ @1779 = @1780
== SHEENAJ @1781
== RJALIJ @1782
== PLAYER1 @1783 = @1784
== SHEENAJ @1785
== RJALIJ @1786 = @1787
== SHEENAJ @1788
== RJALIJ @1789
== SHEENAJ @1790
== RJALIJ IF ~G("SaerilethRomanceActive",2)~ THEN @1791 = @1792
== RJALIJ @1793 = @1794
== SHEENAJ @1795
== PLAYER1 @1796 = @1797 = @1798
== SHEENAJ @1799
== PLAYER1 @1800
== RJALIJ @1801
== PLAYER1 @1802 = @1803 DO ~AddJournalEntry(@9060,INFO) SetGlobal("RjaliSheenaScout","GLOBAL",2) SetGlobal("RjaliScouts","GLOBAL",1)~
EXIT
