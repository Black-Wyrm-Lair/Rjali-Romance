
BEGIN RJDOOFUS

// Doofus the IMP

IF ~IsGabber(Player1)~ THEN BEGIN doofus
  SAY @0
IF ~G("RJDoofus1",0)~ THEN DO ~SetGlobal("RJDoofus1","GLOBAL",1)~ GOTO dfs0
IF ~!G("RJDoofus1",0)~ GOTO dfs1
END

IF ~~ THEN BEGIN dfs0
  SAY @1
IF ~~ THEN REPLY @2 GOTO dfs0.1
END

IF ~~ THEN BEGIN dfs0.1
  SAY @3 = @4 = @5 = @6
IF ~~ THEN REPLY @7 GOTO dfs0.2
END

IF ~~ THEN BEGIN dfs0.2
  SAY @8 = @9
IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN dfs1
  SAY @11
IF ~~ THEN REPLY @12 EXIT
IF ~G("RJFinalVisit",1) G("RJDFFV",0)~ THEN REPLY @70 GOTO dfs9
IF ~G("RJDoofus1",1)~ THEN REPLY @13 DO ~
                       CreateCreature("RJGENIE",[-1.-1],0)
                       SetGlobal("RJDoofus1","GLOBAL",2)~ EXTERN RJDOOFUS dfs2
IF ~GGT("RJDoofus1",1)~ THEN REPLY @23 GOTO dfs3
END

IF ~~ THEN BEGIN dfs3
  SAY @24
IF ~~ THEN REPLY @25 EXIT
IF ~~ THEN REPLY @28 GOTO dfs4
IF ~GLT("Chapter",%bg2_chapter_8%) G("RJDoofCS",0)~ THEN REPLY @29 GOTO dfs5
IF ~GGT("Chapter",%bg2_chapter_7%) G("RJDoofCS",0)~ THEN REPLY @43 GOTO dfs6
IF ~G("RJDoofCS",2)~ THEN REPLY @54 GOTO dfs7
END

IF ~~ THEN BEGIN dfs4
  SAY @30 = @31 = @32 = @33
IF ~~ THEN REPLY @34 GOTO dfs3
END

IF ~~ THEN BEGIN dfs5
  SAY @35 = @36 = @37 = @38 = @39 = @40 = @41
IF ~~ THEN REPLY @42 DO ~SetGlobal("RJDoofCS","GLOBAL",1)~ GOTO dfs3
END

IF ~~ THEN BEGIN dfs6
  SAY @44 = @45 = @46 = @47
IF ~~ THEN REPLY @48 DO ~SetGlobal("RJDoofCS","GLOBAL",1)~ GOTO dfs6.1
END

IF ~~ THEN BEGIN dfs6.1
  SAY @49
IF ~~ THEN REPLY @50 GOTO dfs6.2
END

IF ~~ THEN BEGIN dfs6.2
  SAY @51
IF ~~ THEN REPLY @52 GOTO dfs6.3
END

IF ~~ THEN BEGIN dfs6.3
  SAY @53
IF ~~ THEN GOTO dfs3
END

IF ~~ THEN BEGIN dfs7
  SAY @55
IF ~~ THEN REPLY @56 GOTO dfs7.1
END

IF ~~ THEN BEGIN dfs7.1
  SAY @57 = @58 = @59 = @60
IF ~~ THEN REPLY @61 GOTO dfs3
END

IF ~~ THEN BEGIN dfs9
  SAY @71 = @72 = @73
IF ~~ THEN REPLY @74 DO ~SetGlobal("RJDFFV","GLOBAL",1)~ EXIT
END

CHAIN RJDOOFUS dfs2
@14
== RJGENIE @15
== RJDOOFUS @16 = @17 = @18
== RJGENIE @19 = @20
== RJGENIE IF ~G("RJGenieLeg",0)~ THEN @62
== RJGENIE IF ~G("RJGenieLeg",1)~ THEN @26
== RJGENIE @27
== RJDOOFUS @21 DO ~ActionOverride("RJGENIE",DestroySelf())~
END
IF ~~ THEN REPLY @22 EXTERN RJDOOFUS dfs3