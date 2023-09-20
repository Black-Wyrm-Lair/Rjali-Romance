
//  Contribution to SOA1 group chat

EXTEND_BOTTOM RJPLAY0 0
IF ~InParty("Ninde") G("RJSOA1NI",0)~ THEN DO ~SetGlobal("RJSOA1NI","GLOBAL",1)~ EXTERN LK#NINDJ RjaliGroupSOA1.NI
END

CHAIN LK#NINDJ RjaliGroupSOA1.NI
@670 = @671 DO ~IncrementGlobal("RJGather","GLOBAL",-1)~
== RJPLAY0 IF ~!G("RJPlay0",311)~ THEN @672 = @673 = @674
== RJPLAY1 IF ~G("RJPlay0",311)~ THEN @672 = @673 = @674
END
IF ~~ THEN EXTERN RJPLAY0 0

I_C_T RJPLAY0 1 RJSoAGNI
== LK#NINDJ IF ~InParty("Ninde")~ THEN @595
END

//  Scout

CHAIN
IF WEIGHT #-12 ~G("RjaliNindeScout",1)~ THEN PLAYER1 RjaliNindeScout
@49
== RJALIJ @0
== LK#NINDJ @630
== RJALIJ @631
== LK#NINDJ @632 = @633
== RJALIJ @634
== LK#NINDJ @635
== RJALIJ @636
== LK#NINDJ @637
== RJALIJ @638 = @639 = @640
== PLAYER1 @641
== RJALIJ @642 = @643
== PLAYER1 @644 DO ~AddJournalEntry(@9023,INFO) SetGlobal("RjaliNindeScout","GLOBAL",2) SetGlobal("RjaliScouts","GLOBAL",1)~
EXIT

