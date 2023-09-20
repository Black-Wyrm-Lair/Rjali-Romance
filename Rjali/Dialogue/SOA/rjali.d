
BEGIN RJALI

// This is the file we have assigned to Rjali in her .cre file. She will use it when you find her in Chateau Irenicus.

IF ~G("RjaliMet",0)
    Range(Player1,6)~ RjaliJoinsParty0
SAY @0
IF ~OR(2)
    !Gender(Player1,MALE)
    Alignment(Player1,MASK_EVIL)~ THEN REPLY @19 GOTO RjaliJoinsParty0.1
IF ~Gender(Player1,MALE)
    !Alignment(Player1,MASK_EVIL)~ THEN REPLY @19 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ GOTO RjaliJoinsParty1
END

IF ~~ RjaliJoinsParty0.1
SAY @1
IF ~~ DO ~SetGlobal("RjaliMet","GLOBAL",4) EscapeArea()~ EXIT
END

IF ~~ RjaliJoinsParty1
SAY @2
IF ~~ THEN REPLY @3 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ GOTO RjaliJoinsParty1.8
++ @4 + RjaliJoinsParty2
END

IF ~~ RjaliJoinsParty1.8
SAY @5 = @6 = @7
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN PLAYER1 RjaliJoinsParty1.2
END

IF ~~ RjaliJoinsParty2
SAY @13
IF ~~ DO ~SetGlobal("RjaliMet","GLOBAL",4) EscapeArea()~ EXIT
END

CHAIN PLAYER1 RjaliJoinsParty1.2
@8
== RJALI @9
== IMOENJ IF ~InParty("Imoen")~ THEN @32
== IMOEN2J IF ~InParty("Imoen2")~ THEN @32
== RJALI @10
== PLAYER1 @11
== RJALI @14
== PLAYER1 @12
== RJALI @15
== PLAYER1 @16
== RJALI @17
== IMOENJ IF ~InParty("Imoen")~ THEN @33
== IMOEN2J IF ~InParty("Imoen2")~ THEN @33
== PLAYER1 @18
== RJALI @20 = @21 = @22 = @23 = @24 = @26 = @27 = @28 = @29 = @30
== PLAYER1 @31 DO ~SetGlobal("RjaliRomanceActive","GLOBAL",2)
      SetGlobal("RjaliMet","GLOBAL",1)
      SetGlobal("RjaliCountStuff","GLOBAL",0)
      AddJournalEntry(@9000,INFO)
      ActionOverride("Rjali",JoinParty())~
EXIT
