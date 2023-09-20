
//  Contribution to SOA1 group chat

EXTEND_BOTTOM RJPLAY0 0
IF ~InParty("O#Bran") G("RJSOA1BR",0)~ THEN DO ~SetGlobal("RJSOA1BR","GLOBAL",1)~ EXTERN O#BRANJ RjaliGroupSOA1.BR
IF ~G("RJParkBR",2)~ THEN DO ~SetGlobal("RJParkBR","GLOBAL",1)~ EXTERN O#BRANJ RjaliGroupSOA1.BR
END

CHAIN O#BRANJ RjaliGroupSOA1.BR
@514 = @515 DO ~IncrementGlobal("RJGather","GLOBAL",-1)~
BRANCH ~InMyArea("Viconia")~ BEGIN
== O#BRANJ @516
== VICONIJ @517
== O#BRANJ @520
END
== O#BRANJ IF ~InParty("Saerileth")~ THEN @518
== O#BRANJ @519 = @521
== AERIEJ IF ~InMyArea("Aerie")~ THEN @522 = @523
== RJPLAY0 IF ~!InMyArea("Aerie") !G("RJPLAY0",109)~ THEN @522 = @523
== RJPLAY1 IF ~!InMyArea("Aerie") G("RJPLAY0",109)~ THEN @522 = @523
BRANCH ~InMyArea("Viconia")~ BEGIN
== AERIEJ IF ~InMyArea("Aerie")~ THEN @524
== RJPLAY0 IF ~!InMyArea("Aerie") !G("RJPLAY0",109)~ THEN @524
== RJPLAY1 IF ~!InMyArea("Aerie") G("RJPLAY0",109)~ THEN @524
== VICONIJ @525
END
== O#BRANJ @526
END
IF ~~ THEN EXTERN RJPLAY0 0

//  Scout

CHAIN
IF WEIGHT #-8 ~G("RjaliBranwenScout",1)~ THEN PLAYER1 RjaliBranwenScout
@49
== RJALIJ @0
== O#BRANJ @101
== RJALIJ @102
== O#BRANJ @103
== RJALIJ @104
== O#BRANJ @105
== RJALIJ @106
== O#BRANJ @107
== RJALIJ @108 = @109 = @110 = @111
== O#BRANJ @112 = @113
== RJALIJ @114 = @115
== O#BRANJ @116
== RJALIJ @117 = @118 = @119
== O#BRANJ @120 = @121 = @122
== RJALIJ @123 = @124
== O#BRANJ @125 = @126 = @127
== RJALIJ @128 = @129 = @130
== PLAYER1 @131
== RJALIJ @132
== PLAYER1 @133
== RJALIJ @134 = @135 = @136 DO ~AddJournalEntry(@9021,INFO) SetGlobal("RjaliBranwenScout","GLOBAL",2) SetGlobal("RjaliScouts","GLOBAL",1)~
EXIT
