
BEGIN RJPSTND

// Nordom PIDs

IF ~IsGabber(Player1)~ THEN BEGIN NDPID
SAY @0
IF ~G("RJFinalVisit",1) G("RJNDFV",0)~ THEN REPLY @100 GOTO NDPID9
IF ~!G("RJiniiJIDND",12)
    OR(2)
      !G("RJiniiJIDND",13)
      !AreaCheck("RJ0605")~ THEN REPLY @1 GOTO NDPID0
IF ~G("RJiniiJIDND",12)~ THEN REPLY @2 DO ~SetGlobal("RJiniiJIDND","GLOBAL",13)~ EXTERN RJPSTND NDPID1
IF ~G("RJiniiJIDND",13) 
    AreaCheck("RJ0605")~ THEN REPLY @60 DO ~SetGlobal("RJiniiJIDND","GLOBAL",14)~ GOTO NDPID2
IF ~G("RJiniiJIDND",99)~ THEN REPLY @70 GOTO NDPID3
END

IF ~~ THEN BEGIN NDPID0
SAY @20 = @21 = @22
++ @23 EXIT
END

// Nordom returns to the brothal

IF ~~ THEN BEGIN NDPID2
SAY @61
IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("RJPCUTN1")~ EXIT
END

IF ~~ THEN BEGIN NDPID3
SAY @71 = @72 = @73
++ @74 EXIT
END

IF ~~ THEN BEGIN NDPID9
SAY @101 = @102
++ @103 DO ~SetGlobal("RJNDFV","GLOBAL",1)~ EXIT
END

// Nordom Intro

CHAIN IF ~~ THEN RJPSTND NDPID1
@30 = @31
== RJALI25J @32
== RJPSTND @33
== RJALI25J @34
== RJPSTND @35 = @36
== RJALI25J @37 = @38
== RJPSTND @39
== RJALI25J @40 = @41 = @42 = @43
== RJPSTND @44 = @45
== RJFAY IF ~G("RJParkFY",0)~ THEN @51
== RJPSTND IF ~G("RJParkFY",0)~ THEN @52
== RJFAY IF ~G("RJParkFY",0)~ THEN @53
== RJGR25J IF ~InParty("RJGrace")~ THEN @47
== RJAN25J IF ~InParty("RJAnnah")~ THEN @48
== RJRV25J IF ~InParty("RJRavel")~ THEN @49
== RJALI25J IF ~!InParty("RJRavel")~ THEN @54
== RJPSTND @50 DO ~MoveBetweenAreas("RJ0605",[1396.1380],4)~
END
IF ~~ THEN REPLY @46 EXIT

// Watching Nordom approach Dolora

CHAIN IF ~G("RJiniiJIDND",15) !G("RJPort",0)~ THEN PLAYER1 NDPID2.1
@67 DO ~SetGlobal("RJiniiJIDND","GLOBAL",16)~
== RJRV25J IF ~InParty("RJRavel")~ THEN @62
== RJALI25J IF ~InParty("RJRavel")~ THEN @63
== RJRV25J IF ~InParty("RJRavel")~ THEN @64
== RJFAY IF ~G("RJParkFY",0)~ THEN @68
== PLAYER1 @65
END
IF ~~ THEN REPLY @66 EXIT