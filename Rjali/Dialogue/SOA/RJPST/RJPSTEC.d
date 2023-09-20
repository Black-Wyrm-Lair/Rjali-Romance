
BEGIN RJPSTEC

// 1st Ecco nooky

IF ~G("RJECNOOK",1)~ THEN BEGIN MEC4.0
SAY @36 = @37
++ @38 + MEC4.1
END

IF ~~ THEN BEGIN MEC4.1
SAY @39 = @40
++ @41 + MEC4.2
END

IF ~~ THEN BEGIN MEC4.2
SAY @42 = @43
++ @44 DO ~SetGlobal("RJECNOOK","GLOBAL",2)
           CloseDoor("ar605d09")~ EXIT
END

// Intro

IF ~IsGabber(Player1) G("RJECTalk",0)~ THEN BEGIN MEC0
SAY @0
++ @2 DO ~SetGlobal("RJECTalk","GLOBAL",1)~ + MEC0.1
END

IF ~~ THEN BEGIN MEC0.1
SAY @3 = @4 = @5
++ @6 + MEC0.2
END

IF ~~ THEN BEGIN MEC0.2
SAY @7 = @8
+ ~PartyHasItem("RJDTEARS")~ + @13 + MEC1.1
+ ~!PartyHasItem("RJDTEARS")~ + @9 + MEC0.3
+ ~!PartyHasItem("RJDTEARS") G("RJiniiJIDAD",99)~ + @12 + MEC0.3
END

IF ~~ THEN BEGIN MEC0.3
SAY @10
++ @11 DO ~AddJournalEntry(@9053,INFO)~ EXIT
END

// Tongue Quest

IF ~IsGabber(Player1) G("RJECTalk",1)~ THEN BEGIN MEC1
SAY @20
+ ~!PartyHasItem("RJDTEARS") !G("RJiniiJIDAD",99)~ + @21 EXIT
+ ~!PartyHasItem("RJDTEARS") G("RJiniiJIDAD",99)~ + @28 EXIT
+ ~PartyHasItem("RJDTEARS")~ + @22 + MEC1.1
END

IF ~~ THEN BEGIN MEC1.1
SAY @23 = @24
++ @25 DO ~SetGlobal("RJECTalk","GLOBAL",2) TakePartyItem("RJDTEARS")~ + MEC1.2
END

IF ~~ THEN BEGIN MEC1.2
SAY @26
++ @27 DO ~AddJournalEntry(@9054,INFO)
           AddexperienceParty(600)~ EXIT
END

// Regular PIDs

IF ~IsGabber(Player1) GGT("RJECTalk",1)~ THEN BEGIN MECA
SAY @30
++ @31 EXIT
IF ~G("RJFinalVisit",1) G("RJECFV",0) GLT("RJECTalk",2)~ THEN REPLY @200 GOTO MEC9.1
IF ~G("RJFinalVisit",1) G("RJECFV",0) GGT("RJECTalk",1)~ THEN REPLY @200 GOTO MEC9.2
+ ~G("RJECTalk",2) G("RJPort",2)~ + @32 DO ~SetGlobal("RJECTalk","GLOBAL",3)~ + MEC3
+ ~GLT("RJECTalk",4) G("RJPort",1)~ + @45 DO ~SetGlobal("RJECTalk","GLOBAL",4)~ + MEC7
+ ~GLT("RJECTalk",4) G("RJPort",1)~ + @34 DO ~SetGlobal("RJECTalk","GLOBAL",4)
                                              IncrementGlobal("RJCntBedded","GLOBAL",1)
                                              SetGlobal("RJECFling","GLOBAL",1)~ + MEC4
+ ~G("RJECTalk",4) G("RjiniiJIDMR",99)~ + @50 DO ~SetGlobal("RJECTalk","GLOBAL",5)~ + MEC5
+ ~G("RJECFling",1) G("RJPort",2) G("RjiniiJIDDK",99)~ + @60 DO ~ActionOverride(Player1,SetDialog("Player1")) SetGlobal("RJECFling","GLOBAL",2)~ + MEC6
END

IF ~~ THEN BEGIN MEC3
SAY @33
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MEC4
SAY @35
IF ~~ THEN DO ~StartCutSceneMode()
               StartCutScene("RJECNOOK")~ EXIT
END

IF ~~ THEN BEGIN MEC5
SAY @51 = @52 = @53
+ ~G("RJECFling",1)~ + @54 + MEC5.1
+ ~!G("RJECFling",1)~ + @54 + MEC5.2
END

IF ~~ THEN BEGIN MEC5.1
SAY @55
++ @56 EXIT
END

IF ~~ THEN BEGIN MEC5.2
SAY @47 = @48
++ @49 EXIT
END

IF ~~ THEN BEGIN MEC6
SAY @61 = @62 = @63
IF ~~ THEN EXTERN PLAYER1 MEC6.1
END

IF ~~ THEN BEGIN MEC7
SAY @46
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MEC9.1
SAY @202 = @203
++ @204 DO ~SetGlobal("RJECFV","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN MEC9.2
SAY @201 = @205
++ @206 DO ~SetGlobal("RJECFV","GLOBAL",1)~ EXIT
END

CHAIN IF ~~ THEN PLAYER1 MEC6.1
@64
== RJALI25J @65
== PLAYER1 @66
== RJRV25J IF ~InParty("RJRavel")~ THEN @67
== E3FAD25J IF ~InParty("E3Fade")~ THEN @68
== AERIE25J IF ~InParty("Aerie")~ THEN @70
== RJGR25J IF ~InParty("RJGrace")~ THEN @71
== PLAYER1 @72
== RJPSTEC @73
== RH#IS25J IF ~InParty("rh#Isra2")~ THEN @74
== O#BRA25J IF ~InParty("O#Bran")~ THEN @75
== SAERI25J IF ~InParty("Saerileth")~ THEN @76
== NALIA25J IF ~InParty("Nalia")~ THEN @77
== IMOEN25J IF ~InParty("Imoen2")~ THEN @78
== RJALI25J IF ~!InParty("Imoen2") !InParty("Nalia")~ THEN @78
== RJPSTEC @79 = @80 = @81
== NEERA25J IF ~InParty("Neera")~ THEN @82
== M#AMB25J IF ~InParty("M#AMBER")~ THEN @83
== T#DAC25J IF ~InParty("T#Dace")~ THEN @84
== LK#NI25J IF ~InParty("Ninde")~ THEN @85
== RJALI25J IF ~InParty("Ninde")~ THEN @86
== JAHEI25J IF ~InParty("Jaheira")~ THEN @87
== TASHI25J IF ~InParty("Tashia")~ THEN @88
== VICON25J IF ~InParty("Viconia")~ THEN @89
== G#TRS25J IF ~InParty("G#Tyris")~ THEN @90
== YXYV25J IF ~InParty("Yxyve")~ THEN @91
== 1XSKI25J IF ~InParty("SkieDV")~ THEN @92
== L3PET25J IF ~InParty("L3Petsy")~ THEN @93
== C0SIR25J IF ~InParty("C0Sirene")~ THEN @101
== SHEEN25J IF ~InParty("K#Sheena")~ THEN @102
== RJKE25J IF ~InParty("RJKesai")~ THEN @103
== RJAN25J IF ~InParty("RJAnnah")~ THEN @69
== RJFAY IF ~G("RJParkFY",0)~ THEN @100
== PLAYER1 @94 = @95 = @96
== RJPSTEC @97 = @98
END
++ @99 EXIT
