
//  Contribution to SOA1 group chat

EXTEND_BOTTOM RJPLAY0 0
IF ~InParty("G#Tyris") G("RJSOA1TY",0)~ THEN DO ~SetGlobal("RJSOA1TY","GLOBAL",1)~ EXTERN G#TYRISJ RjaliGroupSOA1.TY
IF ~G("RJParkTY",2)~ THEN DO ~SetGlobal("RJParkTY","GLOBAL",1)~ EXTERN G#TYRISJ RjaliGroupSOA1.TY
END

CHAIN G#TYRISJ RjaliGroupSOA1.TY
@700 = @701 DO ~IncrementGlobal("RJGather","GLOBAL",-1)~
== G#TYRISJ IF ~G("RJRosCnt",5) !G("RJPlay4",110)~ THEN @702
== RJPLAY0 IF ~!G("RJPLAY0",110)~ THEN @703
== RJPLAY1 IF ~G("RJPLAY0",110)~ THEN @703
== G#TYRISJ @704 = @705
== RJPLAY0 IF ~!G("RJPLAY0",110)~ THEN @706 = @707 = @708
== RJPLAY1 IF ~G("RJPLAY0",110)~ THEN @706 = @707 = @708
== G#TYRISJ @709 = @710
END
IF ~~ THEN EXTERN RJPLAY0 0

I_C_T RJPLAY0 1 RJSoAGTY
== G#TYRISJ IF ~InParty("G#Tyris")~ THEN @595
END

//  Scout

CHAIN
IF WEIGHT #-13 ~G("RjaliTyrisScout",1)~ THEN PLAYER1 RjaliTyrisScout
@49
== RJALIJ @0
== G#TYRISJ @750 = @751
== RJALIJ @752
== G#TYRISJ @753 = @754
== RJALIJ @755
== G#TYRISJ @756 = @757 = @758
== RJALIJ @759 = @760
== PLAYER1 @761
== RJALIJ @762 = @763
== PLAYER1 @764 DO ~AddJournalEntry(@9024,INFO) SetGlobal("RjaliTyrisScout","GLOBAL",2) SetGlobal("RjaliScouts","GLOBAL",1)~
EXIT
