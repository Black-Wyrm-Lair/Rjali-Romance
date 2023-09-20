
BEGIN RJPSTTR

// PIDs

IF ~IsGabber(Player1)~ THEN BEGIN TriasChat
SAY @0
++ @1 EXIT
IF ~G("RJFinalVisit",1) G("RJTRFV",0)~ THEN REPLY @50 GOTO RJTR9
+ ~!PartyHasItem("RJDTEARS") 
   G("RJECTalk",1)
   G("RJTriasTears",0)~ + @2 EXTERN RJPSTTR RJTR1
END

IF ~~ THEN BEGIN RJTR9
SAY @51 = @52
IF ~~ THEN REPLY @53 DO ~SetGlobal("RJTRFV","GLOBAL",1)~ EXIT
END

CHAIN IF ~~ THEN RJPSTTR RJTR1
@10 DO ~SetGlobal("RJTriasTears","GLOBAL",1)~
== RJALIJ @11 = @12 = @13 = @14 = @15 = @16 = @17
== RJPSTTR @18 = @19
== RJPSTFJ @20
== RJALIJ @21 = @22
END
IF ~~ THEN DO ~ActionOverride(Player1,CreateItem("RJDTEARS",0,0,0))~ EXIT
