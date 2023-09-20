
BEGIN BRJKESAI

BEGIN RJKESAIJ

BEGIN BRJKE25

BEGIN RJKE25J

BEGIN RJPSTKS

// Offer

IF ~IsGabber(Player1)
    GLT("Chapter",%bg2_chapter_4%)
    G("RJKSOffer",0)
    G("RJiniiJIDAD",99)~ THEN BEGIN MKSOF
SAY @70
+ ~G("RJAddRV",0)~ + @71 DO ~SetGlobal("RJKSOffer","GLOBAL",1)~ + MKSOF1
+ ~!G("RJAddRV",0)~ + @72 DO ~SetGlobal("RJKSOffer","GLOBAL",1)~ + MKSOF2
END

IF ~~ THEN BEGIN MKSOF1
SAY @73
++ @75 + MKSOF3
END

IF ~~ THEN BEGIN MKSOF2
SAY @74
++ @75 + MKSOF3
END

IF ~~ THEN BEGIN MKSOF3
SAY @76 = @77 = @78
++ @79 + MKSOF4
++ @80 + MKSOF5
END

IF ~~ THEN BEGIN MKSOF4
SAY @81
++ @82 DO ~ChangeAIScript("RJRANWLK",DEFAULT)~ EXIT
END

IF ~~ THEN BEGIN MKSOF5
SAY @83
++ @86 DO ~StartCutSceneMode()
           StartCutScene("RJKSNOOK")~ EXIT
END

IF ~G("RJKSNOOK",1)~ THEN BEGIN MKSOF6
SAY @87 = @88 = @89 = @90 = @91
++ @92 + MKSOF7
END

IF ~~ THEN BEGIN MKSOF7
SAY @93 = @94
++ @95 + MKSOF9
END

IF ~~ THEN BEGIN MKSOF9
SAY @84
++ @85 DO ~StartCutSceneMode()
           StartCutScene("RJKS2KE")~ EXIT
END

// Intro

IF ~IsGabber(Player1)~ THEN BEGIN MKS
SAY @0
+ ~!G("RJKSTalk",0)~ + @1 EXIT
IF ~G("RJFinalVisit",1) G("RJKSFV",0)~ THEN REPLY @100 GOTO MKS9
+ ~G("RJKSTalk",0)~ + @2 DO ~SetGlobal("RJKSTalk","GLOBAL",1)~ + MKS1
+ ~G("RJiniiJIDAD",5)~ + @10 + MKS2
+ ~G("RJiniiJIDAD",99) G("RJAddRV",0)~ + @30 + MKS3
+ ~G("RJRavelRomanceActive",1)~ + @40 + MKS4
+ ~G("RJRavelRomanceActive",2)
   !G("RJKSTalk",2)~ + @50 DO ~SetGlobal("RJKSTalk","GLOBAL",2)~ + MKS5
END

IF ~~ THEN BEGIN MKS1
SAY @3
++ @4 EXIT
END

IF ~~ THEN BEGIN MKS2
SAY @11 = @12 = @13
++ @14 + MKS2.1
END

IF ~~ THEN BEGIN MKS2.1
SAY @15 = @16 = @17 = @18 = @19 = @20 = @21 = @23
++ @22 DO ~SetGlobal("RJRavelOP","GLOBAL",1) SetGlobal("RJiniiJIDAD","GLOBAL",6)~ EXIT
END

IF ~~ THEN BEGIN MKS3
SAY @31 = @32 = @33
++ @34 EXIT
END

IF ~~ THEN BEGIN MKS4
SAY @41 = @42 = @43
++ @44 EXIT
END

IF ~~ THEN BEGIN MKS5
SAY @51 = @52
++ @53 EXIT
END

IF ~~ THEN BEGIN MKS9
SAY @101
+ ~See("RJRavel")~ + @102 + MKS9.1
+ ~!See("RJRavel")~ + @105 DO ~SetGlobal("RJKSFV","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN MKS9.1
SAY @103
++ @104 DO ~SetGlobal("RJKSFV","GLOBAL",1)~ EXIT
END
