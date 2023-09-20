
BEGIN RJPSTFJ

// Adahn quest

CHAIN IF ~G("RJiniiJIDAD",12) G("RJFayBig",0)~ THEN PLAYER1 FJ0
@0
== RJPSTFJ @1
== PLAYER1 @2
== RJPSTTR @70
== RJPSTFJ @71
== RJPSTTR @72
== RJPSTFJ @73 = @74
== PLAYER1 @75
== RJPSTFJ @3 = @4
== RJALIJ @5
== PLAYER1 @6 = @7 = @8 = @9
== RJPSTFJ @10 = @11 = @12 = @13
== PLAYER1 @14 = @15 = @16
== RJPSTTR @17
== RJFAY @34
== PLAYER1 @18
== RJPSTTR @19
== PLAYER1 @20
== RJPSTTR @21 = @22
== PLAYER1 @23
== RJPSTTR @24 = @25 = @26 = @27
== PLAYER1 @28 = @29 = @30
== RJPSTTR @31
== RJPSTFJ @32
== RJFAY @35 = @36 = @37
== RJPSTTR @38
== RJFAY @39
== RJPSTTR @40 = @41
== RJALIJ @42
== RJPSTTR @43
== RJFAY @44
== RJPSTTR @45 DO ~SetGlobal("RJFayBig","GLOBAL",1)
                   RealSetGlobalTimer("RJFay1stTimer","GLOBAL",60)~
END
IF ~~ THEN DO ~StartCutSceneMode()
               StartCutScene("RJPCUTFA")~ EXIT

CHAIN IF ~G("RJiniiJIDAD",12) G("RJFayBig",1)~ THEN PLAYER1 FJ0.1
@46
== RJFAY @47
== RJALIJ @76 = @77
== PLAYER1 @78 = @33
END
IF ~~ THEN DO ~SetGlobal("RJiniiJIDAD","GLOBAL",13)~ EXIT

// Morte quest

CHAIN IF ~G("RJFhjullMet",5) !G("RJPort",0)~ THEN PLAYER1 FJ1
@50 DO ~SetGlobal("RJFhjullMet","GLOBAL",6)~
== RJPSTFJ @51 = @52
== PLAYER1 @53
== RJPSTFJ @54
== RJPSTTR @55
== RJPSTFJ @56 = @57
== RJPSTTR @58
== RJPSTFJ @59 = @60
== RJANNAHJ IF ~InParty("RJAnnah")~ THEN @61
== RJFAY IF ~G("RJParkFY",0)~ THEN @65
== PLAYER1 IF ~G("RJParkFY",0)~ THEN @66
== RJFAY IF ~G("RJParkFY",0)~ THEN @67
== RJGRACEJ IF ~InParty("RJGrace")~ THEN @62
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @63
== PLAYER1 @64
END
IF ~~ THEN DO ~SetGlobal("RJMorteOP","GLOBAL",1)~ EXIT

// Sobeth quest

CHAIN IF ~G("RJSobethJID",3)~ THEN PLAYER1 FJ1
@80
== RJPSTFJ @81
== PLAYER1 @82 = @83
== RJPSTFJ @84
== RJPSTTR @85
== RJPSTFJ @86
== PLAYER1 @87
== RJPSTFJ @88 = @94
== PLAYER1 @89
== RJPSTFJ @90
== PLAYER1 @91
== RJPSTFJ @92
== RJFAY IF ~G("RJParkFY",0)~ THEN @93
END
IF ~~ THEN DO ~SetGlobal("RJSobethJID","GLOBAL",4)
               SetGlobal("RJPort","GLOBAL",9)~ EXIT

APPEND RJPSTFJ

// PIDs

IF ~IsGabber(Player1)~ THEN BEGIN FhjullChat
SAY @48
++ @49 EXIT
END

END
