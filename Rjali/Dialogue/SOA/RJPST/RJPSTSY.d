
BEGIN RJPSTSY

IF ~IsGabber(Player1) G("RJiniMet",0)~ THEN BEGIN DCIntro
SAY @0
++ @1 + DC0
END

IF ~~ THEN BEGIN DC0
SAY @2
++ @3 EXIT
END

IF ~IsGabber(Player1)~ THEN BEGIN DCPID
SAY @4
++ @3 EXIT
IF ~G("RJFinalVisit",1) G("RJSYFV",0)~ THEN REPLY @50 GOTO DC9
+ ~G("RJSYTalk",0)~ + @5 DO ~SetGlobal("RJSYTalk","GLOBAL",1)~ + DC1
+ ~G("RJSYTalk",1) G("RJiniiJIDAD",99)~ + @13 + DC2
+ ~OR(2) G("RJSYTalk",1) G("RJSYTalk",2) G("RJiniiJIDMR",99)~ + @19 + DC3
END

IF ~~ THEN BEGIN DC1
SAY @6
++ @7 + DC1.1
END

IF ~~ THEN BEGIN DC1.1
SAY @8 = @9 = @10 = @11
++ @12 EXIT
END

IF ~~ THEN BEGIN DC2
SAY @14
IF ~G("RJAddCnt",3) GLT("Chapter",%bg2_chapter_4%)~ THEN GOTO DC2.1
IF ~OR(2) !G("RJAddCnt",3) GGT("Chapter",%bg2_chapter_3%)~ THEN GOTO DC2.2
END

IF ~~ THEN BEGIN DC2.1
SAY @15
++ @16 EXIT
END

IF ~~ THEN BEGIN DC2.2
SAY @17
++ @18 DO ~SetGlobal("RJSYTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN DC3
SAY @20 = @21
+ ~G("RJSYTalk",1)~ + @22 + DC3.1
+ ~G("RJSYTalk",2)~ + @22 DO ~SetGlobal("RJSYTalk","GLOBAL",3)~ + DC3.1
END

IF ~~ THEN BEGIN DC3.1
SAY @23
++ @24 EXIT
END

IF ~~ THEN BEGIN DC9
SAY @51 = @52
IF ~~ THEN REPLY @53 DO ~SetGlobal("RJSYFV","GLOBAL",1)~ EXIT
END
