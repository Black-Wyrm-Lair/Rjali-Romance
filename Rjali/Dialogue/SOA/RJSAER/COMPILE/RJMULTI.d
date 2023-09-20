
//  Set variable to control Drizzt overlap

ALTER_TRANS C6DRIZZ1
BEGIN 0 57 END
BEGIN 0 END
BEGIN
  "ACTION" ~SetGlobal("RJDRIZZT","GLOBAL",1)~
END

ALTER_TRANS C6BRUEN1
BEGIN 5 END
BEGIN 0 END
BEGIN
  "ACTION" ~SetGlobal("RJDRIZZT","GLOBAL",1)~
END

//  Contribution to SOA1 group chat

EXTEND_BOTTOM RJPLAY0 0
IF ~InParty("Saerileth") G("RJSOA1SA",0)~ THEN DO ~SetGlobal("RJSOA1SA","GLOBAL",1)~ EXTERN SAERILEJ RjaliGroupSOA1.SA
END

CHAIN SAERILEJ RjaliGroupSOA1.SA
@480 = @481 DO ~IncrementGlobal("RJGather","GLOBAL",-1)~
== O#BRANJ IF ~InParty("O#Bran")~ THEN @482 = @483
== JAHEIRAJ IF ~!InParty("O#Bran") InMyArea("Jaheira")~ THEN @482 = @483
== RJPLAY0 IF ~!G("RJPlay0",204) !InParty("O#Bran") !InMyArea("Jaheira")~ THEN @482 = @483
== RJPLAY1 IF ~G("RJPlay0",204) !InParty("O#Bran") !InMyArea("Jaheira")~ THEN @482 = @483
== SAERILEJ @484
== AERIEJ IF ~InMyArea("Aerie")~ THEN @485 = @486 = @487 = @488
== VICONIJ IF ~!InMyArea("Aerie") InMyArea("Viconia")~ THEN @486 = @487 = @488
== RJPLAY0 IF ~!G("RJPlay0",204) !InMyArea("Aerie") !InMyArea("Viconia")~ THEN @486 = @487 = @488
== RJPLAY1 IF ~G("RJPlay0",204) !InMyArea("Aerie") !InMyArea("Viconia")~ THEN @486 = @487 = @488
== SAERILEJ @489 = @490 = @491
== RJPLAY4 IF ~G("RJRosCnt",5) !G("RJPlay4",204)~ THEN @492 = @493
== RJPLAY3 IF ~G("RJRosCnt",4) !G("RJPlay3",204)~ THEN @492 = @493
== RJPLAY2 IF ~G("RJRosCnt",3) !G("RJPlay2",204)~ THEN @492 = @493
== RJPLAY1 IF ~G("RJRosCnt",3) G("RJPlay2",204)~ THEN @492 = @493
== RJPLAY0 IF ~!G("RJPlay0",204)~ THEN @494
== RJPLAY1 IF ~G("RJPlay0",204)~ THEN @494
== SAERILEJ @495
== RJPLAY1 IF ~!G("RJPlay1",204)~ THEN @496
== RJPLAY2 IF ~G("RJPlay1",204)~ THEN @496
== JAHEIRAJ IF ~InMyArea("Jaheira")~ THEN @497
== RJPLAY0 IF ~!G("RJPlay0",204)~ THEN @498 = @499
== RJPLAY1 IF ~G("RJPlay0",204)~ THEN @498 = @499
END
IF ~~ THEN EXTERN RJPLAY0 0

I_C_T RJPLAY0 1 RJSoAGSA
== SAERILEJ IF ~InParty("Saerileth")~ THEN @595
END

//  Scout

CHAIN
IF WEIGHT #-9 ~G("RjaliSaerilethScout",1)~ THEN PLAYER1 RjaliSaerilethScout1
@49
== RJALIJ @0
== SAERILEJ @1
== RJALIJ @2
== SAERILEJ @3
== RJALIJ @4
== SAERILEJ @5
== RJALIJ @6
== SAERILEJ @7
== RJALIJ @8 = @9 = @10 = @11
== SAERILEJ @12 = @13
== RJALIJ @14 = @15
== SAERILEJ @16
== RJALIJ @17 = @18 = @19 = @20 = @21 = @22 = @23
== SAERILEJ @24
== RJALIJ @25 = @26 = @27
== SAERILEJ @28
== RJALIJ @29 = @30 = @31
== PLAYER1 @32
== RJALIJ @33
== PLAYER1 @34
== RJALIJ @35 = @36 DO ~AddJournalEntry(@9015,INFO) SetGlobal("RjaliSaerilethScout","GLOBAL",2) SetGlobal("RjaliScouts","GLOBAL",1)~
EXIT

CHAIN
IF WEIGHT #-10 ~G("RjaliSaerilethScout",3)~ THEN RJALIJ RjaliSaerilethScout2
@50
== SAERILEJ @51
== RJALIJ @52
== SAERILEJ @53
== RJALIJ @54 = @55
== SAERILEJ @56 = @57 = @58
== RJALIJ @59
== SAERILEJ @60 = @61 = @62
END
++ @63 EXTERN RJALIJ RjaliSaerilethScout2.1

CHAIN RJALIJ RjaliSaerilethScout2.1
@64
== SAERILEJ @65 = @66 = @67
== IMOEN2J IF ~InMyArea("Imoen2") !G("ImoenRomanceActive",2)~ THEN @68
== SAERILEJ IF ~InMyArea("Imoen2") !G("ImoenRomanceActive",2)~ THEN @69
== RJALIJ @70
== SAERILEJ @71 = @72
== IMOEN2J IF ~InMyArea("Imoen2") G("ImoenRomanceActive",2)~ THEN @73
== SAERILEJ IF ~InMyArea("Imoen2") G("ImoenRomanceActive",2)~ THEN @74
== AERIEJ IF ~InMyArea("Aerie") G("AerieRomanceActive",2)~ THEN @75
== NEERAJ IF ~InMyArea("Neera") G("NeeraRomanceActive",2)~ THEN @76
== JAHEIRAJ IF ~InMyArea("Jaheira") G("JaheiraRomanceActive",2)~ THEN @77
== VICONIJ IF ~InMyArea("Viconia") G("ViconiaRomanceActive",2)~ THEN @78
== NALIAJ IF ~InMyArea("Nalia") G("PGNaliaRomanceActive",2)~ THEN @79
END
++ @80 DO ~AddJournalEntry(@9016,INFO) SetGlobal("RjaliSaerilethScout","GLOBAL",4)~ EXIT
