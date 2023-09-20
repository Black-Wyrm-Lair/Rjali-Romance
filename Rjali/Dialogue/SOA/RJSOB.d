
// Sobeth's dialogues

APPEND RJSOB

// subsequent encounters in the maze

IF ~IsGabber(Player1)
    G("RJSobethTalk",1)~ SOBPid9
SAY @100
++ @101 EXIT
END

// 1st encounter in the maze

IF ~IsGabber(Player1)
    AreaCheck("RJ0610")
    G("RJSobethTalk",0)~ SOBPid1
SAY @110 = @111
+ ~InParty("RJKesai")~ + @112 + SOBPid1.2
+ ~!InParty("RJKesai")~ + @125 + SOBPid1.1
END

IF ~~ SOBPid1.1
SAY @126
++ @127 + SOBPid1.2
END

IF ~~ SOBPid1.2
SAY @113
++ @114 + SOBPid1.3
END

IF ~~ SOBPid1.3
SAY @115
+ ~InParty("RJRavel")~ + @116 + SOBPid1.4
+ ~!InParty("RJRavel")~ + @117 + SOBPid1.4
END

IF ~~ SOBPid1.4
SAY @118 = @119 = @120 = @121
++ @122 + SOBPid1.5
END

IF ~~ SOBPid1.5
SAY @123
++ @124 DO ~SetGlobal("RJSobethTalk","GLOBAL",1)
            ChangeAIScript("RJRANWLK",OVERRIDE)~ EXIT
END

// Showdown in the Outlands

IF ~IsGabber(Player1)
    G("RJSobethJID",4)~ SOBPid0
SAY @20
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ GOTO SOBPid0.1
END

IF ~~ SOBPid0.1
SAY @21
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ GOTO SOBPid0.2
END

IF ~~ SOBPid0.2
SAY @22
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN PLAYER1 SOBPid0.3
END

END

CHAIN IF ~~ THEN PLAYER1 SOBPid0.3
@28
== RJSOB IF ~InParty("RJRavel")~ THEN @51
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @52
== RJKESAIJ @23 = @24 = @25
== RJSOB @26 = @27
== PLAYER1 @29 = @30 = @31
== RJSOB @32 = @33
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @34 = @35
== RJALIJ IF ~!InParty("RJRavel")~ THEN @34 = @35
== RJSOB @36
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @37 = @38 = @39
== RJALIJ IF ~!InParty("RJRavel")~ THEN @37 = @38 = @39
== PLAYER1 @49
== RJALIJ @50
== RJSOB @40
== RJKESAIJ @41 = @42
== RJSOB @53 = @54 DO ~CreateCreature("RJPSTLP",[2500.1613],0)
                       ActionOverride("RJLOP",FaceObject("RJSOB"))~
== RJSOB @55
== RJLOP @56 = @57 = @58
== RJSOB @59
== RJLOP @60
END
IF ~~ THEN DO ~StartCutSceneMode()
               StartCutScene("RJSOBMAZ")~ EXIT

CHAIN IF ~G("RJSobethJID",5)~ THEN PLAYER1 SOBPid0.4
@61
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @43 = @44
== RJALIJ IF ~!InParty("RJRavel")~ THEN @43
== RJLOP IF ~InParty("RJRavel")~ THEN @45 = @46
== RJLOP @62 DO ~ActionOverride("RJLOP",DestroySelf())~
== RJKESAIJ @63 = @64 = @65
== PLAYER1 @47 = @48
END
IF ~~ THEN DO ~SetGlobal("RJSobethJID","GLOBAL",6)
                         SetGlobal("RJPort","GLOBAL",2)
                         AddJournalEntry(@9068,INFO)~ EXIT

// Outlands dialogues

CHAIN IF ~
  AreaCheck("RJ1100")
  !StateCheck("Rjali",CD_STATE_NOTVALID)
  !StateCheck("RJKesai",CD_STATE_NOTVALID)
  !StateCheck(Player1,CD_STATE_NOTVALID)
  G("RJ1100Ent",0)~ THEN PLAYER1 KE1100Tri
@10
== RJALIJ @7 = @8
== RJFAY IF ~G("RJParkFY",0)~ THEN @9
== RJALIJ @11
== RJKESAIJ @12
== RJALIJ @13
== RJKESAIJ @14
== PLAYER1 @15
== RJALIJ @17
== RJKESAIJ @18
== PLAYER1 @16 = @19
END
IF ~~ THEN DO ~SetGlobal("RJ1100Ent","GLOBAL",1)~ EXIT
